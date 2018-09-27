class Recomendation < ApplicationRecord
    belongs_to :imageable, polymorphic: true , optional: true
    
    validates :description, length: { maximum: 200 }
end
