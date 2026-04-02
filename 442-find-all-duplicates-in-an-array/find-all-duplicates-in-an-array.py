class Solution:
    def findDuplicates(self, arr):
        freq = {}
        res = []
        
        for num in arr:
            if num in freq:
               freq[num] += 1
            else:
                freq[num] = 1        
        for num, count in freq.items():
            if count == 2:
                res.append(num)
        
        return res
