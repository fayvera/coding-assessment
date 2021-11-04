class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :user_id
      t.string :event_id

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :event_id
  end
end
