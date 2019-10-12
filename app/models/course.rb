class Course < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates_uniqueness_of :nrc, :name
end
