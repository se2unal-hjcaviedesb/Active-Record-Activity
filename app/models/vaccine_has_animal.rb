class VaccineHasAnimal < ApplicationRecord
    
    belongs_to :animal
    belongs_to :vaccine
    
    
end
