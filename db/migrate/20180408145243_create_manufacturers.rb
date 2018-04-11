class CreateManufacturers < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturers do |t|
    	t.string   :manufacturer_name, null: false
    	t.string   :products

      t.timestamps
    end
  end
end
