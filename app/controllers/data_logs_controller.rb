class DataLogsController < ApplicationController
    
    def index
        @data_logs = DataLog.all
    end

    def new
        @data_log = DataLog.new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

end
