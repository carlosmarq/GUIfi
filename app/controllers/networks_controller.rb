class NetworksController < ApplicationController
      require 'csv'
      require 'open3'


  def index
    @Date = `date`
    @Hostname = `hostname`
    @User = `whoami`
    @NetworkInf = `ifconfig`
    @airmonstat = `airmon-ng`
    @airmoncheck = `airmon-ng check`
    @airmonkill = `airmon-ng check kill`
    @airmonstart = `airmon-ng start wlan0`
  end

  def test
    @airmonstart = `airmon-ng start wlan0`
  end

  def load
    #Networks_text = CSV.read("#{Rails.root}/public/seed0.csv-01.csv")
      CSV.foreach("#{Rails.root}/public/seed0.csv-01.csv") do |row|
      Network.create({bssid: row[0], First_time_seen: row[1], Last_time_seen: row[2],channel: row[3], Speed: row[4],Privacy: row[5], Cipher: row[6], Authentication: row[7], Power: row[8], beacons: row[9], IV: row[10], LAN_IP: row[11], ID_lenght: row[12], Key: row[13], ESSID: row[14],})
      end
  end


  def update

  end

  def show
    @Networks = Network.all
  end

  def attack
    @ticket = Network.find(params[:id])
    @Network_target_bssid = Network.bssid

    `pdftk #{filename} burst output #{filename_out}`


  end

  def locate

  end
end
