class Papa < ActiveRecord::Base
  validates_presence_of :name, :description, :cook_time, :taste, :cook_mode, :good_for
end

class Receta < ActiveRecord::Base
  set_table_name "recetas"
  validates_presence_of :name, :category_id, :foto, :difficulty, :time, :servings, :ingredients, :instructions, :secret
  belongs_to :categoria
end

class Condimento < ActiveRecord::Base
  validates_presence_of :name, :foto, :description
end

class Utencilio < ActiveRecord::Base
  validates_presence_of :name, :foto, :description
end

class Corte < ActiveRecord::Base
  validates_presence_of :name, :foto, :description
end

class Categoria < ActiveRecord::Base
  validates_presence_of :name
  has_many :recetas
end

