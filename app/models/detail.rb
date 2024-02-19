class Detail < ApplicationRecord
  belongs_to :person
  validates :content, presence: true
end
