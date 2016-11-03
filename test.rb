# def binary_gap(int)

#   binary = int.to_s(2)

  

# end

def convert(s, num_rows)
    result = Array.new(num_rows) {Array.new()}
    direction = "down"
    x = 0
    s.split("").each do |char|
      result[x] << char

      if direction == "up"
        x -= 1
      else
        x += 1
      end

      if x == num_rows - 1
        direction = "up"
      elsif x == 0
        direction = "down"
      end
    end
    result.flatten.join("")
end

p convert("PAYPALISHIRING", 3)