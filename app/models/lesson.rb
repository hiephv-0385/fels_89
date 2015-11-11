class Lesson < ActiveRecord::Base

  belongs_to :category
  belongs_to :user

  has_many :lesson_words, dependent: :destroy

  validates :name,  presence: true, length: { maximum: 250 }

end
