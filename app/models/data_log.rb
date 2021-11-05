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

    def valid?(ip)
        if ip.split(".").length == 4 && ip.split(".")[0].match?(/[[:digit:]]/) && ip.split(".")[0].to_i > 0 && ip.split(".")[0].to_i <= 255 && 
            ip.split(".")[1].match?(/[[:digit:]]/) && ip.split(".")[1].to_i > 0 && ip.split(".")[1].to_i <= 255 && 
            ip.split(".")[2].match?(/[[:digit:]]/) && ip.split(".")[2].to_i > 0 && ip.split(".")[2].to_i <= 255 && 
            ip.split(".")[3].match?(/[[:digit:]]/) && ip.split(".")[3].to_i > 0 && ip.split(".")[3].to_i <= 255
            
            return "valid address"
        else
            return "invalid address"
        end
    end

    def private?(ip)
        if ip.split(".")[0] == "10" && ip.split(".")[1] == "0" || ip.split(".")[0] == "172" && ip.split(".")[1] == "16" || ip.split(".")[0] == "192" && ip.split(".")[1] == "168"
            return "private address"
        else
            return "public address"
        end
    end

end
