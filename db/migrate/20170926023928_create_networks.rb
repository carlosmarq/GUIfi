class CreateNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :networks do |t|
      t.string :Network
t.string :NetType
t.string :ESSID
t.string :BSSID
t.string :Info
t.string :Channel
t.string :Cloaked
t.string :Encryption
t.string :Decrypted
t.string :MaxRate
t.string :MaxSeenRate
t.string :Beacon
t.string :LLC
t.string :Data
t.string :Crypt
t.string :Weak
t.string :Total
t.string :Carrier
t.string :Encoding
t.string :FirstTime
t.string :LastTime
t.string :BestQuality
t.string :BestSignal
t.string :BestNoise
t.string :GPSMinLat
t.string :GPSMinLon
t.string :GPSMinAlt
t.string :GPSMinSpd
t.string :GPSMaxLat
t.string :GPSMaxLon
t.string :GPSMaxAlt
t.string :GPSMaxSpd
t.string :GPSBestLat
t.string :GPSBestLon
t.string :GPSBestAlt
t.string :DataSize
t.string :IPType
t.string :IP

      t.timestamps
    end
  end
end
