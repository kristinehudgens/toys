class CreateKristineToys < ActiveRecord::Migration
  def change
    create_table :kristine_toys do |t|
      t.string :name
      t.string :toy_type
      t.date :date_last_played_with
      t.integer :favorite

      t.timestamps
    end
  end
end
