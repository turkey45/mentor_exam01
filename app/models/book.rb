class Book < ApplicationRecord

  private
  def price_with_tax
    price * 1.08
  end
end
