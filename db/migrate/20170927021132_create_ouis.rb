class CreateOuis < ActiveRecord::Migration[5.1]
  def change
    create_table :ouis do |t|
      t.string   :OUI
      t.string   :Brand
      t.string   :Comment
      t.timestamps
    end
  end
end
