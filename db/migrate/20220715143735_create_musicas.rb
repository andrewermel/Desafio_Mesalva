class CreateMusicas < ActiveRecord::Migration[5.2]
  def change
    create_table :musicas do |t|
      t.string :nome
      t.float :duracao
      t.string :criado_por
      t.string :url

      t.timestamps
    end
  end
end
