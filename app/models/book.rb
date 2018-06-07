class Book < ApplicationRecord
belongs_to :author
  def price_with_tax
    price * 1.08
  end
end
