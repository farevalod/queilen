class Categoriaspapa < ActiveRecord::Migration
  def up
  	create_table :categorias_papa do |c|
		c.string :nombre
		c.string :foto
		c.text :texto
	end
  end

  def down
  	drop_table :categorias_papa
  end
end
