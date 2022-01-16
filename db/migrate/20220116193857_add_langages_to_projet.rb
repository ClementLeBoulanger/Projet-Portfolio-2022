class AddLangagesToProjet < ActiveRecord::Migration[6.1]
  def change
    add_column :projets, :rails, :boolean, default: false
    add_column :projets, :php, :boolean, default: false
    add_column :projets, :react, :boolean, default: false
    add_column :projets, :html, :boolean, default: false
    add_column :projets, :sass, :boolean, default: false
    add_column :projets, :css, :boolean, default: false
    add_column :projets, :javascript, :boolean, default: false
    add_column :projets, :postgresql, :boolean, default: false
    add_column :projets, :mysql, :boolean, default: false
  end
end
