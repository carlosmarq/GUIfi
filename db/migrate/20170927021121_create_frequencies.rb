class CreateFrequencies < ActiveRecord::Migration[5.1]
  def change
    create_table :frequencies do |t|
          t.string   :channel
          t.string   :Lower_Frequency
          t.string   :Center_Frequency
          t.string   :Upper_Frequency
      t.timestamps
    end
  end
end
