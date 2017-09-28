class NetworksController < ApplicationController
      require 'csv'


  def test

  end

  def load

    Networks_text = CSV.read("#{Rails.root}/public/seed0.csv-01.csv")

    CSV.foreach("#{Rails.root}/public/seed0.csv-01.csv") do |row|

    Network.create({bssid: row[0], First_time_seen: row[1], Last_time_seen: row[2],channel: row[3], Speed: row[4],Privacy: row[5], Cipher: row[6], Authentication: row[7], Power: row[8], beacons: row[9], IV: row[10], LAN_IP: row[11], ID_lenght: row[12], Key: row[13], ESSID: row[14],})
  end


  def update

  end

  def show

  end

  def attack

  end

  def locate

  end
end
