class Cortes < ActiveRecord::Migration
  def up
  	create_table :cortes do |c|
		c.string :name
		c.string :foto
		c.string :description
	end
  end

  def down
  	drop_table :cortes
  end
end
