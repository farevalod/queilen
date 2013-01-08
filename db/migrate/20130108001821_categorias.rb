class Categorias < ActiveRecord::Migration
  def up
  	create_table :categories do |c|
		c.string :nombre
	end
  end

  def down
  	drop_table :categories
  end
end
