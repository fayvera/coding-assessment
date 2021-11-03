class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :sourceIP
      t.string :destinationIP
      t.index :user_id

      t.timestamps
    end
  end
end
