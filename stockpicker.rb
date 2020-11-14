require 'pry'

class StockPicker
    def stock_picker(values)
        result = []
        max_profit = 0
        values.each_with_index do |day_value, index|
            values[index..-1].each_with_index do |later_day_value, index2|
                if later_day_value - day_value > max_profit
                    result = [index, index + index2]
                    max_profit = later_day_value - day_value
                end                
            end
        end
        return [-1,-1] if max_profit == 0
        result

    end
end