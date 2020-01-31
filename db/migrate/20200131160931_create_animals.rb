class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :breed, :string
      t.column :shelter_id, :integer

      t.timestamps
    end
  end
end
