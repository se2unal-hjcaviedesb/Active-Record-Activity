class ModifyAssociations < ActiveRecord::Migration[5.2]
  def change
    
    change_table :vaccine_has_animals do |t|
    
      t.belongs_to :animal, index: true
      t.belongs_to :vaccine, index: true
      
    end
    
    change_table :recomendations do |t|
      t.references :imageable, polymorphic: true, index:true 
    end
    
    change_table :animals do |t|
      t.belongs_to :specie, index: true
    end
    
  end
end
