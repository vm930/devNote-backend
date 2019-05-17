class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :note_value
  has_many :codes
  belongs_to :user
  

  def user_name
    object.user.user_name
  end 

  def full_name
    object.user.full_name
  end 
end
