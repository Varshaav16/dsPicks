from .. import find_K_pairs_with_smallest_sums
import unittest

class TestSolution(unittest.TestCase):

    def test_kSmallestPairs(self):
        self.assertEqual(find_K_pairs_with_smallest_sums.kSmallestPairs([1, 7, 11], [2, 4, 6], 3), [[1, 2],[1, 4],[1, 6]])  
        self.assertEqual(find_K_pairs_with_smallest_sums.kSmallestPairs([1, 1, 2], [1, 2, 3], 2), [[1, 1],[1, 1]])  
        self.assertEqual(find_K_pairs_with_smallest_sums.kSmallestPairs([1, 2], [3], 3), [[1,3], [2, 3]])  

if  __name__ == '__main__':
    unittest.main()