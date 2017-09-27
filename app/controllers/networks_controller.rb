class NetworksController < ApplicationController


  def test

  end

  def load
    require 'csv'

csv_text = File.read('seed.csv-01.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
Moulding.create!(row.to_hash)
end
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
