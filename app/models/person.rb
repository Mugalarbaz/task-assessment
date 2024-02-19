class Person < ApplicationRecord
  has_many :details, dependent: :destroy
  validates :name, :email, presence: true
end
