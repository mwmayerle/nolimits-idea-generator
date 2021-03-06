class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.integer  :manufacturer_id, null: false

    	t.integer  :tall
    	t.integer  :short

    	t.boolean  :old, default: false
    	t.boolean  :can_invert, default: true
    	t.boolean  :difficult, default: false
    	t.boolean  :must_launch, default: false
    	t.boolean  :can_launch, default: true
    	t.boolean  :is_shuttle, default: false

    	t.string   :material, default: "steel"
    	t.string   :product_name, null: false
    	t.string   :launch_options, array: true, default: []
    	t.string   :typical_elements, array: true, default: []
    	t.string   :plausible_elements, array: true, default: []

      t.timestamps
    end
  end
end
