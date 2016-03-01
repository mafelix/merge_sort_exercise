

def mergesort(input)
#if input array <= 1 i's sorted
  if input.count <= 1
    return input
  end
    
#array.count /2 = halfway point

  half = input.count/2
#recursion to keep calling mergesort input to keep slicing left and right arrays in half ONCE every LOOP
  leftarr = mergesort input.slice(0, half)
  rightarr = mergesort input.slice(half, input.count-half)

  #create empty array, leftindex 0, rightindex 0.
  #while leftindex is smaller than leftarr length AND rightindex is smaller than rightarray length
  #values to evaulate is a = leftarr[0] b = rightarr[0] 
  
  input = []
  leftindex = 0
  rightindex = 0
  #stops leftarr/rightarr recursion once left/right indexes are equal to left/right array length
  while leftindex < leftarr.count && rightindex < rightarr.count
    a = leftarr[leftindex]
    b = rightarr[rightindex]
  #if left array[leftindex] <= right_array[rightindex]
  #push smaller value to empty array and increase approriate index += 1
    if a <= b
      input << a
      leftindex += 1
    else
      input << b
      rightindex += 1
    end
  end
  #pushes leftover element in left or right array(biggest value)
  while leftindex < leftarr.count     
    input << leftarr[leftindex]
    leftindex += 1
  end

  while rightindex < rightarr.count
    input << rightarr[rightindex]
    rightindex += 1
  end
  

  return input
end
  
input = [3,2,19,4,5,7]
 mergesort(input)
