class Book < ApplicationRecord

  validates: title, presence: true
  validates: price, presence: true

  def price_with_tax
    price * 1.08
  end
end
