class Infohome < ActiveRecord::Migration
  def up
  	create_table :infohome do |t|
		t.string :nombre
		t.string :foto
	end
  end

  def down
  end
end
