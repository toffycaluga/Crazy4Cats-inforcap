# == Schema Information
#
# Table name: reactions
#
#  id                :bigint           not null, primary key
#  user_id           :bigint           not null
#  reactionable_type :string           not null
#  reactionable_id   :bigint           not null
#  kind              :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :reactionable, polymorphic: true
end
