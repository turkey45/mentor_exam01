class Author < ApplicationRecord
has_many :books
  def self.created_after(target_date)
    self.where("created_at > ?", target_date)
  end

composed_of :fullname,
       :class_name => "FullName",
       :mapping => [
       [:family_name, :family_name],
       [:first_name, :first_name]
       ]
end

class FullName
  attr_reader :family_name, :first_name

  def initialize(family_name, first_name)
    @family_name = family_name
    @first_name = first_name
  end

  def to_s
    [@family_name, @first_name].compact.join("")
  end

end
