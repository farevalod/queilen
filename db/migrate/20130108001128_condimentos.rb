class Condimentos < ActiveRecord::Migration
  def up
  	create_table :condimentos do |c|
		c.string :name
		c.string :foto
		c.string :description
	end
  end

  def down
  	drop_table :condimentos
  end
end
