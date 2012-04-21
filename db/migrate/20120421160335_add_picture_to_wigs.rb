class AddPictureToWigs < ActiveRecord::Migration
  def change
    add_column :wigs, :picture, :string

  end
end
