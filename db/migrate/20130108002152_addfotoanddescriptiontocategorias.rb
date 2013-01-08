class Addfotoanddescriptiontocategorias < ActiveRecord::Migration
  def up
  	add_column :categories, :foto, :string
  	add_column :categories, :description, :string
  end

  def down
  	remove_column :foto
  	remove_column :description
  end
end
