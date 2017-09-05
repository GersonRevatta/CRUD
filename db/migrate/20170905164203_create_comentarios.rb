class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.text :mensaje
      t.references :tarea, foreign_key: true

      t.timestamps
    end
  end
end
