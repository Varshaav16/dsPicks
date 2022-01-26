def find_judge(n, trust):
        degree = [0] * (n + 1)
        for truster, trustee in trust:
            degree[truster]-= 1
            degree[trustee]+= 1
            
        for i in range(1, n + 1):
            if degree[i] == (n - 1):
                return i
        return -1
        
