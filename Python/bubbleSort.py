#utf-8

#bubbleSort algorithm
def bubbleSort(nums):
	for j in xrange(len(nums),-1,-1):
		for i in xrange(0,j-1,1):
			if nums[i] > nums[i+1]:
				nums[i],nums[i+1] = nums[i+1],nums[i]

#test
if __name__ == '__main__':
	numbers=[[9,23,12,32,12],['2','3','3','6'],['b','w','u']]
	for num in numbers:
		bubbleSort(num)
		print num