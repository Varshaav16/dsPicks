import find_the_town_judge, unittest

class TestSolution(unittest.TestCase):

    def test_find_the_town_judge(self):
        self.assertEqual(find_the_town_judge.find_judge(2, [[1,2]]), 2)  
        self.assertEqual(find_the_town_judge.find_judge(3, [[1,3],[2,3],[3,1]]), -1)  
        self.assertEqual(find_the_town_judge.find_judge(2, [[1,2], [2, 1]]), 2)  
        self.assertEqual(find_the_town_judge.find_judge(3, [[1,3],[2,3]]), 3)  


if  __name__ == '__main__':
    unittest.main()