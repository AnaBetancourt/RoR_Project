class CreateDataLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :data_logs do |t|
      t.string :source_ip
      t.string :destination_ip

      t.timestamps
    end
  end
end
