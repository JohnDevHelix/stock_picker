def stock_picker(array)
    days = []
    array.each_with_index do |price, i|
      array.each_with_index do |price2, i2|
        days.push([i, i2]) if i2 > i && (price - price2 < 0)
      end
    end
    idx = days.map { |profit| array[profit[1]] - array[profit[0]] }
    idx = idx.find_index(days.map { |profit| array[profit[1]] - array[profit[0]] }.max)
    days[idx]
  end