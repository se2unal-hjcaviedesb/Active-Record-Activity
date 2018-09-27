class Animal < ApplicationRecord
    
    has_many :vaccine_has_animals
    has_many :vaccines, through: :vaccine_has_animals
    has_many :recomendations, as: :imageable
    belongs_to :specie , foreign_key: true , optional:  true
    
    has_many :children, class_name: "Animal", foreign_key: "parent_id"
    belongs_to :parent, class_name: "Animal", optional: true
    
    
    validates :name, length: { maximum: 60 }
    validates :age, numericality: { less_than_or_equal_to: 20}
    
end
