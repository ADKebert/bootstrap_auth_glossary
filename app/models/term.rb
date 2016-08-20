class Term < ApplicationRecord
  belongs_to :category

  validates :name, presence: true, uniqueness: true

  def self.search(search)
    where("name LIKE ? or definition LIKE ? ", "%#{search}%", "%#{search}%")
  end

  def user_authored_term?(user)
    author == user
  end
end
