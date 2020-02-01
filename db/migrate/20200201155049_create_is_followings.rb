class CreateIsFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :is_followings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :username
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
