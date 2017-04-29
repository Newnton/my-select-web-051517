def my_select(collection)
  foo = []
  if block_given?
    i = 0
    while i < collection.length
      if yield(collection[i])
        foo << collection[i]
        i += 1
      else
        i += 1
      end
    end
  else
    puts "no block given :("
  end
  foo
end
