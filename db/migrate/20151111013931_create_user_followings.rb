class CreateUserFollowings < ActiveRecord::Migration
  def change
    create_table :user_followings do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps null: false
    end
  end
end
