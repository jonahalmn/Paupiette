class CreateEtudiants < ActiveRecord::Migration[5.0]
  def change
    create_table :etudiants do |t|
      t.string :Nom
      t.string :Prenom
      t.date :Datenaissance
      t.string :Ville
      t.string :Sexe
      t.string :Mail
      t.string :Telephone
      t.text :Interets
      t.text :Descrption

      t.timestamps
    end
  end
end
