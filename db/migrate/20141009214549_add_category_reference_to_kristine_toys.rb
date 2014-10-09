class AddCategoryReferenceToKristineToys < ActiveRecord::Migration
  def change
    add_reference :kristine_toys, :category, index: true
  end
end
