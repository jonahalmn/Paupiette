class CreateRepas < ActiveRecord::Migration[5.0]
  def change
    create_table :repas do |t|
      t.datetime :Date
      t.string :menu
      t.string :location
      t.string :organisator
      t.string :participants
      t.integer :participantnumber

      t.timestamps
    end
  end
end
