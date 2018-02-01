class Answer < ApplicationRecord
	belongs_to :comment

	validates :answerer, presence: true
	validates :body, presence: true
end
