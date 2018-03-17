class Question < ApplicationRecord
  has_many :answers
  validates :title, presence :true, length: { minimum: 30, message: "this is too short. Must be atleast 30 characters" }
  validates :description, presence: true, length: { minimum: 100, message: "this is too short. Must be atleast 100 characters" }
end
