class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :code
      t.text :description
      t.text :features
      t.text :main_image

      t.timestamps
    end
  end
end
