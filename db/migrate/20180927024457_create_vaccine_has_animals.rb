class CreateVaccineHasAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccine_has_animals do |t|
      t.date :date

      t.timestamps
    end
  end
end
