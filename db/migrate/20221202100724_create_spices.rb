class CreateSpices < ActiveRecord::Migration[6.1]
  def change
    create_table :spices do |t|

      t.timestamps
    end
  end
end
