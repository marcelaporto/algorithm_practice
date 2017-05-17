# Reverse Bits

Reverse bits of a given 32 bits unsigned integer.

For example, given input 43261596 (represented in binary as 00000010100101000001111010011100), return 964176192 (represented in binary as 00111001011110000010100101000000).
Input: integer
Output: integer


## About binary code

**To read binary code**
We read it right to left. We multiply by 2 to the power of the index (remember, we read it right to left, so the last character is index 0!), then sum it up

**To write binary code**
To wrtie binary code, we divide the number by two. If there is a remainder, we add 1; if there isn't, we add a 0. 
Like reading binary code, it is right to left: we add the new characrter (1 || 0) to the beginning of the bit. 
We do that until the number = 0; the final product should be a 32-char bit.

## Solution

*05/16 Submission Result: Accepted*

```def reverse_bits(n)
    binary = convert_switched_binary(n)
    p binary
    convert_integer(binary)
end

def convert_switched_binary(n)
    number = n
    binary = ""
    if n > 0
        while number != 0
            remainder = number % 2
            if remainder == 0
                binary += "0"
            elsif remainder != 0
                binary += "1"
            end
            number = number/2
        end
    end
    p binary
    if binary.length < 32
        missing_zeros = "0" * (32 - binary.length)
        binary += missing_zeros
    end
    p binary
end

def convert_integer(binary_str)
    binary_arr = binary_str.split("")
    length = (binary_arr.length - 1)
    total = 0
    binary_arr.each_with_index do |number, index|
        total += (number.to_i * (2 ** (length - index)))
    end
    total
end
```

There was no official solution, but a solution in Python that I have converted to Ruby is much simpler than what I did:

``` 
    def reverseBits_1(self, n):
        reversed = 0
        for i in range(32):
            reversed = reversed << 1
            reversed |= (n >> i) & 0x1
        return reversed

```

Another solution, now in Ruby:

```def reverse_bits(n)
    number = 0
    counter = 1
    n.to_s(2).rjust(32, "0").each_char do |c|
        number += c.to_i*counter
        counter *=2
    end
    return number
end
```
