class AddTitleImageDescriptionNotesRatingToSpices < ActiveRecord::Migration[6.1]
  def change
    add_column :spices, :title, :string
    add_column :spices, :image, :string
    add_column :spices, :description, :string
    add_column :spices, :notes, :string
    add_column :spices, :rating, :float
  end
end
