class CreatePersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellidoPa
      t.string :apellidoMa
      t.string :telefono
      t.date :fechaNacimiento
      t.references :catsexo, foreign_key: true

      t.timestamps
    end
  end
end
