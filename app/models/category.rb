class Category < ApplicationRecord
  has_many :terms

  validates :name, presence: true, uniqueness: true
end
