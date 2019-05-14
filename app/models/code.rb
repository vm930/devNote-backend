class Code < ApplicationRecord
    has_many :note_codes, dependent: :destroy
    has_many :notes, through: :note_codes
end
