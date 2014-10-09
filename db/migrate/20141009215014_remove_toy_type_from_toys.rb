class RemoveToyTypeFromToys < ActiveRecord::Migration
  def change
    remove_column :kristine_toys, :toy_type
  end
end
