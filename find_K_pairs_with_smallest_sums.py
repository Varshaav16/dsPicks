import heapq

def kSmallestPairs(nums1, nums2, k):
    if not nums2 or not nums1: 
        return []
    heap = []
    heapq.heapify(heap)
    for i, num1 in enumerate(nums1[:k]):
        for num2 in nums2[:k//(i+1)]:
            heapq.heappush(heap, [num1+num2, num1, num2])
    return [x[1:] for x in heapq.nsmallest(k, heap)]