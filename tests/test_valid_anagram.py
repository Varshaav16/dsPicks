import valid_anagram, unittest

class TestSolution(unittest.TestCase):
    
    def test_isAnagram(self):
       self.assertEqual(valid_anagram.isAnagram("rat", "tar"), True)
       self.assertEqual(valid_anagram.isAnagram("Anagram", "graman"), False)
       self.assertEqual(valid_anagram.isAnagram("State", "Taste"), True)
       self.assertEqual(valid_anagram.isAnagram("abCdded", "abCde"), False)

if  __name__ == '__main__':
    unittest.main()