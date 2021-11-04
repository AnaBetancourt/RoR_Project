require 'pry'

class DataLogsController < ApplicationController
    
    def index
        @data_logs = DataLog.all
    end

    def new
        @data_log = DataLog.new
    end

    def create
        @data_log = DataLog.new
        if @data_log.save
            binding.pry
        end
    end

    def destroy
    end

    private

    def data_log_params
        params.require(:data_log).permit(:log)
    end

end
