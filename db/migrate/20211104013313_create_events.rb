class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :sourceIP
      t.string :destinationIP

      t.timestamps
    end
  end
end
