class Papa < ActiveRecord::Base
  validates_presence_of :name, :description, :cook_time, :taste, :cook_mode, :good_for
end

class Receta < ActiveRecord::Base
  self.table_name = "recetas"
  validates_presence_of :name, :category_id, :foto, :difficulty, :time, :servings, :ingredients, :instructions, :secret
  belongs_to :categoria

  def next
    Receta.where("id > ?", self.id).order("recetas.id ASC").limit(1).first
  end
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

class Infohome < ActiveRecord::Base
  validates_presence_of :nombre, :foto
  self.table_name = "infohome"

  def self.random
    if (c = Infohome.count) != 0
      Infohome.find(:first, :offset =>rand(c))
    end
  end
end

class Categoriaspapa < ActiveRecord::Base
  validates_presence_of :nombre, :foto, :texto
  self.table_name = "categorias_papa"
end

class Categoria < ActiveRecord::Base
  self.table_name = "categories"
  validates_presence_of :nombre
  has_many :recetas
end

