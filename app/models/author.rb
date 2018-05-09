class Author < ApplicationRecord
  has_many :books

  def self.created_after(target_date)
    self.where("created_at > ?", target_date)
  end
end
