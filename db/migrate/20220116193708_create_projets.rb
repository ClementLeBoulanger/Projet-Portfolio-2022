class CreateProjets < ActiveRecord::Migration[6.1]
  def change
    create_table :projets do |t|
      t.string :title
      t.text :description
      t.string :github

      t.timestamps
    end
  end
end
