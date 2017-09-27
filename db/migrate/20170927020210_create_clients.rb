class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string   :MAC
      t.datetime :First_time_seen
      t.datetime :Last_time_seen
      t.integer  :Power
      t.integer  :Packets
      t.string   :string
      t.timestamps
    end
  end
end
