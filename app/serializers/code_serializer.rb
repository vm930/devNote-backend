class CodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :style, :code_value, :mode
  # has_many :notes, through: :note_codes
 
end
