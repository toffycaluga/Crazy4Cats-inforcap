# == Schema Information
#
# Table name: posts
#
#  id          :bigint           not null, primary key
#  description :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Post < ApplicationRecord
  # Relaciones
  belongs_to :user

  has_one_attached :photo do |atachable|
    atachable.variant :thumb,resize_to_limit:[200,300]
  end

  has_many :comments, as: :commentable, dependent: :destroy
end
