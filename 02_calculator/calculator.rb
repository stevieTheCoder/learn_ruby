def add(x,y)
    x + y
end

def subtract(x,y)
    x - y
end

def sum(array)
    array.reduce(0, :+)
end

def multiply(x,y)
    x * y
end

def multiplyArray(array)
    array.inject(:*)
end

def power(x,y)
    x ** y
end

def factorial(x)
    if x == 0
        return 0
    else
    (1..x).reduce(1, :*)
    end
end