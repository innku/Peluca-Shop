class CreateWigs < ActiveRecord::Migration
  def change
    create_table :wigs do |t|
      t.string :color
      t.string :size
      t.string :style
      t.float  :price

      t.timestamps
    end
  end
end
