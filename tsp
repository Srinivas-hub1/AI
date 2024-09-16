from itertools import permutations
n=3
def tsp(graph,s):
    v=[]
    for i in range(n):
        if i!=s:
            v.append(i)
    minpath=9999
    np=permutations(v)
    for i in np:
        cost=0
        k=s
        for j in i:
            cost=cost+graph[k][j]
            k=j
        cost=cost+graph[k][s]
        minpath=min(minpath,cost)
    return minpath
graph=[[1,2,3],[4,5,6],[7,8,9]]
print(tsp(graph,0))
