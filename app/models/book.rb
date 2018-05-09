class Book < ApplicationRecord

  validates :title, presence: true
  validates :price, presence: true
  validate :assert_uniqueness_by_title_and_author_id

  def price_with_tax
    price * 1.08
  end

  private
  def assert_uniqueness_by_title_and_author_id
    same_titles = self.class.where(title: title)
    same_titles_and_authors = same_titles.select {|book| book.author_id == self.author_id }
    if same_titles_and_authors.present?
      errors.add(:title, "既に同タイトル、同著者の書籍が登録されています。")
    end
  end
end
