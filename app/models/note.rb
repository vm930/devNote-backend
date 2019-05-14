class Note < ApplicationRecord
  has_many :note_codes, dependent: :destroy
  has_many :codes, through: :note_codes
  belongs_to :user
end
