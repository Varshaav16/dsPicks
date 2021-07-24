import unittest
import reverse_pairs

class TestMethods(unittest.TestCase):

    def test_reverse_pairs(self):
        self.assertEqual(reverse_pairs.reversePairs([1, 3, 2, 3, 1]), 2) 
        self.assertEqual(reverse_pairs.reversePairs([2,4,3,5,1]), 3)

    
if __name__ == '__main__':
    unittest.main()
