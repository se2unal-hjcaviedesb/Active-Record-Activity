class Vaccine < ApplicationRecord
    
    has_many :vaccine_has_animals
    has_many :animals, through: :vaccine_has_animals
    has_many :recomendations, as: :imageable
    
    validates :description, length: { maximum: 200 }
    validates :name, length: { maximum: 60 }, uniqueness: true

end
