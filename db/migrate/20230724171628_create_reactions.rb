class CreateReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :reactions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :reactionable, polymorphic: true, null: false
      t.string :kind,null: false #like or dislike

      t.timestamps
    end
  end
end
