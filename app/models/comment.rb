class Comment < ApplicationRecord
	has_many :answer

	validates :commenter, presence: true
	validates :body, presence: true
end
