class DataLog < ApplicationRecord

    def source_ip

    end

    def destination_ip
        starting_index = self.log.index("dst")
        ending_index = starting_index + 15
        substring = self.log[starting_index...ending_index]

        return substring[4...ending_index]
    end
end
