class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.boolean :Gender
      t.date :BirthDate
      t.string :City
      t.string :Mail
      t.string :Phone
      t.string :Interest
      t.text :Description
      t.string :Password
      t.boolean :Type

      t.timestamps
    end
  end
end
