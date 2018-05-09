class Book < ApplicationRecord

  def price_with_tax
    price * 1.08
  end
end
