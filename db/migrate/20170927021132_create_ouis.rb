class CreateOuis < ActiveRecord::Migration[5.1]
  def change
    create_table :ouis do |t|

      t.timestamps
    end
  end
end
