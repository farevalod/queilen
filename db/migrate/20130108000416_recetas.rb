class Recetas < ActiveRecord::Migration
  def up
	create_table :recetas do |r|
		r.string :name
		r.integer :category_id
		r.string :foto
		r.string :difficulty
		r.integer :time
		r.integer :servings
		r.text :ingredients
		r.text :instructions
		r.string :secret
	end
  end

  def down
  	drop_table :recetas
  end
end
