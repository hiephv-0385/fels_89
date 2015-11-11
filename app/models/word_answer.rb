class WordAnswer < ActiveRecord::Base

  belongs_to :word

  has_many :lesson_words, dependent: :destroy

  validates :answer,  presence: true, length: { maximum: 250 }

end
