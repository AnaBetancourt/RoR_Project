class AddLogToDataLogs < ActiveRecord::Migration[6.1]
  def change
    add_column :data_logs, :log, :string
  end
end
