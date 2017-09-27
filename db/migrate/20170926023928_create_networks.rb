class CreateNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :networks do |t|
      t.string :bssid
      t.datetime :First_time_seen
      t.datetime :Last_time_seen
      t.string  :channel
      t.string  :Speed
      t.string  :Privacy
      t.string  :Cipher
      t.string  :Authentication
      t.integer :Power
      t.integer :beacons
      t.integer :IV
      t.string  :LAN_IP
      t.string  :ID_lenght
      t.string  :Key
      t.string  :ESSID
      t.timestamps
    end
  end
end
