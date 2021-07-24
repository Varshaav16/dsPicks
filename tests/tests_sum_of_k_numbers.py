import unittest
from sum_of_k_numbers import Solution

class TestSumMethods(unittest.TestCase):

    def test_sum_of_k_numbers(self):
        s1 = Solution()
        s2 = Solution()
        self.assertEqual(s2.sum_of_k_numbers(2), 10)
        self.assertEqual(s1.sum_of_k_numbers(5), 15) 
        

    
if __name__ == '__main__':
    unittest.main()