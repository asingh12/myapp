class Micropost < ActiveRecord::Base
	belongs_to :user
	has_many :comments
    acts_as_votable
	validates :content, length: { maximum: 140 }
end
