class RemoveDestinationIpFromDataLogs < ActiveRecord::Migration[6.1]
  def change
    remove_column :data_logs, :destination_ip, :string
  end
end
