class DataLog < ApplicationRecord

    def source_ip
        split_log = log.split(" ")
        log_hash = {}

        split_log.each do |l|
            if l.include?("=")
                log_hash[l.split("=")[0]] = l.split("=")[1]
            end
        end

        return log_hash["src"]
    end

    def destination_ip
        split_log = log.split(" ")
        log_hash = {}

        split_log.each do |l|
            if l.include?("=")
                log_hash[l.split("=")[0]] = l.split("=")[1]
            end
        end

        return log_hash["dst"]
    end

end
