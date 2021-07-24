import unittest
import valid_parantheses

class TestMethods(unittest.TestCase):

    def test_valid_parantheses(self):
        self.assertEqual(valid_parantheses.isValid("()[]{}"), True) 
        self.assertEqual(valid_parantheses.isValid("([)]"), False)
        self.assertEqual(valid_parantheses.isValid("{[]}"), True)

    
if __name__ == '__main__':
    unittest.main()

