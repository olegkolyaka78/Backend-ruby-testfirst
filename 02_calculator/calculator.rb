def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    sum1 = 0
    if array.length > 1
        i = 0
        while i < array.length do
            sum1 += array[i].to_i
            i += 1
        end
    elsif array.length == 0
        sum1 = 0
    else sum1 = array[0]
    
    end
    sum1 = sum1.to_i # how avoid this stroke?
end

def multiply(array)
    mult = 1
    array.each do |num|
        mult *= num
    end
    mult = mult.to_i
end

def multiply(array)
    mult = 1
    array.each do |num|
        mult *= num
    end
    mult = mult.to_i
end

def power(array)
    (array[0] ** array[1]).to_i
end

def factorial(num)
    mult = 1
    if num == 0
        mult = 1
    else (1..num).each do |num1| 
        mult *= num1
        end
    mult = mult.to_i
    end
end