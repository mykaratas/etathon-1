# (P, Q) ikili indisleri eğer aşağıdaki iki koşulu sağlıyorlarsa çarpımsal 
#olarak adlandırılırlar:
# 1.	0 ≤ P < Q< N
# 2.	C[P] * C[Q] ≥ C[P] + C[Q]

def calculate(P,Q,N,C):
    
    if (Q>P):
        if (C[P]*C[Q]>= C[P]+C[Q]):
            return 1
            
      

    return 0                  
        



def solution(A,B):
    N=len(A)
    
    C=[]
    
    
    for x in range(N):
        
        C.append(A[x]+B[x]/1000000)
       
    print(C)
    
    
    sonuc=0
    
    for i in range(N):
        for j in range(N):
            sonuc+=calculate(i, j, N, C) 
            
    return sonuc
   

    
A=[0,1,2,2,3,5]
B=[500000,500000,0,0,0,20000]

print(solution(A,B))
    