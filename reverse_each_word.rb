require "pry"

def reverse_each_word (sentance)
sentance_as_array  = []
sentance_as_array << "#{sentance}"
letters_as_array = []
count = 0
while count < sentance.length do
  letters_as_array << sentance_as_array[0][count]
  count += 1
end
count = 0
word_array = [[]]
letters_as_array.collect {|i| 
  if i != " "
    word_array[count].unshift(i)
    
  else
    word_array.push([])
    count +=1
  end
}


count = 0
answer = []
word_array.each {|i|
  answer << word_array[count].join
  count +=1
}
answer.join(" ")

end