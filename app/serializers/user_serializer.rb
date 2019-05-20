class UserSerializer < ActiveModel::Serializer
  
  attributes :id, :user_name, :full_name, :email, :avatar_url, :bio
  has_many :notes
  
  # def note_id
  #   object.note.id
  # end 

  # def note_value
  #   object.note.note_value
  # end 

end
