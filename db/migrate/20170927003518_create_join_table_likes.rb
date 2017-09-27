class CreateJoinTableLikes < ActiveRecord::Migration[5.1]
  def change
    
    create_join_table :users, :photos, table_name: :likes do |t|
      t.index [:photo_id, :user_id], unique: true # See all users who like a specific photo
      # t.index [:user_id, :photo_id] # See all photos liked by a specific user
      t.timestamp :created_at
      
    end
  end
end
