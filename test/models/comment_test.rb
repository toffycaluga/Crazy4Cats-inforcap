# == Schema Information
#
# Table name: comments
#
#  id               :bigint           not null, primary key
#  content          :text
#  commentable_type :string           not null
#  commentable_id   :bigint           not null
#  user_id          :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  anonymous        :boolean          default(FALSE)
#
require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
