class ModifyAssociations2 < ActiveRecord::Migration[5.2]
  def change
    
    
    change_table :animal do |t|
        
        t.references :parent, index: true
        
    end
    
    
  end
end
