class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.integer  :manufacturer_id, null: false

    	t.integer  :tall
    	t.integer  :short
    	t.integer  :max_loops
    	t.integer  :min_loops, default: 0

    	t.boolean  :can_invert, default: true
    	t.boolean  :difficult, default: false
    	t.boolean  :must_launch, default: false

    	t.string   :product_name, null: false
    	t.string   :typical_elements, array: true, default: []
    	t.string   :plausible_elements, array: true, default: []

      t.timestamps
    end
  end
end
