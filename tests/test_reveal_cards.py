import unittest
import reveal_cards

class TestMethods(unittest.TestCase):

    def test_reveal_cards(self):
        self.assertEqual(reveal_cards.deckRevealedIncreasing([17,13,11,2,3,5,7]), [2,13,3,11,5,17,7]) 

    
if __name__ == '__main__':
    unittest.main()

