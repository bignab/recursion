# frozen_string_literal: true

def fibs(num)
  return 0 if num.zero?
  return 1 if num == 1

  fib_num = 0
  one_prior = 0
  two_prior = 0
  (0..num).each do |i|
    two_prior = one_prior
    one_prior = fib_num
    if i == 1
      fib_num = 1
    else
      fib_num = one_prior + two_prior
    end
  end
  fib_num
end

def fibs_rec(num)
  return 0 if num.zero?
  return 1 if num == 1

  fibs_rec(num - 1) + fibs_rec(num - 2)
end

def merge_sort(arr = [])
  return arr if arr.length < 2

  length = arr.length
  left = merge_sort(arr[0..(length / 2 - 1)])
  right = merge_sort(arr[(length / 2)..length])
  merge(left, right)
end

def merge(arr_one = [], arr_two = [])
  combined_arr = []

  (arr_one.length + arr_two.length).times do
    if arr_one.empty?
      combined_arr << arr_two.shift
    elsif arr_two.empty?
      combined_arr << arr_one.shift
    else
      arr_one[0] < arr_two[0] ? combined_arr << arr_one.shift : combined_arr << arr_two.shift
    end
  end
  combined_arr
end

p merge_sort([5, 3, 1, 4, 2, 9, 123, 4, 2, 56, 23, 39, 222, 98])