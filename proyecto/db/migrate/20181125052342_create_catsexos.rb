class CreateCatsexos < ActiveRecord::Migration[5.1]
  def change
    create_table :catsexos do |t|
      t.string :strValor

      t.timestamps
    end
  end
end
