FB = ["F", "B", "F", "F", "B", "F", "FB"]
counter = 1
def fizzbuzz(counter = 1)
  j = 0
  for i in 1..15 do
  return if counter > 100
    if (i%3!=0 && i%5!=0)
      puts counter
    else
      puts FB[j]
      j+=1 if j < 6
    end
    counter+=1
  end
  fizzbuzz(counter)
end

fizzbuzz
