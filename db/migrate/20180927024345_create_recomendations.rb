class CreateRecomendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recomendations do |t|
      t.string :description

      t.timestamps
    end
  end
end
