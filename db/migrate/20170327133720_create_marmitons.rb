class CreateMarmitons < ActiveRecord::Migration[5.0]
  def change
    create_table :marmitons do |t|
      t.string :Nom
      t.string :Prenom
      t.date :Datenaissance
      t.string :Ville
      t.string :Sexe
      t.string :Mail
      t.string :Telephone
      t.text :Interets
      t.text :Descrption
      t.text :Adresse

      t.timestamps
    end
  end
end
