class DataLogsController < ApplicationController
    
    def index
        @data_logs = DataLog.all
    end

    def new
        @data_log = DataLog.new
    end

    def create
    end

    def destroy
    end

end
