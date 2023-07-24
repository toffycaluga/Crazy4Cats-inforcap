# == Schema Information
#
# Table name: comments
#
#  id               :bigint           not null, primary key
#  content          :text
#  commentable_type :string           not null
#  commentable_id   :bigint           not null
#  user_id          :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  anonymous        :boolean          default(FALSE)
#
class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :user
  #Agregamos el campo "anonymous"
  def anonymous?
    user.nil?
  end
end
