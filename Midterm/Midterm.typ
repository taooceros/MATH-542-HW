#import "@local/homework-template:0.1.0": *

#let tensor = $times.circle$
#let div = $\/$

= Problem 1

Let $A = ZZ div 3 cplus ZZ div 12$. Find the number of elements in $A tensor_ZZ A$.

#let zmod(x) = $ZZ div #x$

#solution[
  $
    A tensor_ZZ A 
      &= (ZZ div 3 cplus ZZ div 12) tensor_ZZ (ZZ div 3 cplus ZZ div 12) \
      &= (ZZ div 3 tensor_ZZ ZZ div 3) cplus (ZZ div 3 tensor_ZZ ZZ div 12) cplus (ZZ div 12 tensor_ZZ ZZ div 3) cplus (ZZ div 12 tensor_ZZ ZZ div 12) \
  $
  
  We know that $ZZ div 3 tensor ZZ div 3$ has $3$ elements because there are $3$ element
  in $ZZ div 3$ that divides $3$, and thus this is isomorphic to $ZZ div 3$.
  
  Similarly, $ZZ div 12 tensor ZZ div 12$ has $12$ elements.
  
  Finally, $ZZ div 3 tensor ZZ div 12$ has $3$ elements because $ZZ div 3 tensor ZZ div 12 cong (ZZ div 3) div (12 ZZ div 3)$,
  and since $12$ divides $3$ the $12 ZZ div 3$ is the trivial group.
  
  Since tensor is commutative, we have that $ZZ div 12 tensor ZZ div 3 cong ZZ div 3 tensor ZZ div 12$,
  and thus $ZZ div 12 tensor ZZ div 3$ has $3$ elements.
]


= Problem 2

Find the number of pairs $(x,y) in (zmod(30) times zmod(30))$ so that $4x + 10 y = 0$ and $10x + 4y = 0$.

#solution[
  This is equivalent to find the number of solutions for the following equation
  
  $
    mat(4, 10;10, 4) mat(x;y) = mat(0;0)
  $
  
  And it is equivalent to find the number of solutions for the SNF of the matrix $A = mat(4, 10;10, 4)$.
  
  We know that the only invertible element in $ZZ$ is $plus.minus 1$. Thus, the
  SNF of the matrix is $S mat(2, 0;0, 42) T$, where the left top corner must be $gcd(4, 10, 10, 4)$ and
  the right bottom corner is the determinant of matrix $A$.
  
  Since we are in $zmod(30)$, $42 = 6 times 7$, and $7$ is invertible in $zmod(30)^times$ and
  thus it is equivalent to $6$, and $2 | 30$. Thus, the number of solutions is $2 times 6 = 12$.
]

= Problem 3

A _generating set_ of a group $G$ is a set $S subset G$ so that the smallest
subgroup of $G$ containing $S$ is $G$ itself. Prove of disprove: there is a
subgroup of $zmod(12)^5$ whose smallest generating set has size $7$.

#solution[
  Assume such a subgroup $H$ exists. Consider the preimage of $H$ under the map
  that sends $ZZ^5 -> zmod(12)^5$.
  
  Observes that the preimage is a subgroup of $ZZ^5$ and it must contains a
  generating set at least the size of the generating set of $H$. Thus, the
  preimage must have a generating set of size larger or equal to $7$.
  
  Note that a subgroup in $ZZ^5$ is a $ZZ$-submodule, and since $ZZ$ is a PID, all
  of its submodule must have smaller rank than $ZZ^5$. Thus, the preimage must
  have rank at most $5$. However, the rank is equal to the smallest generating set
  of the module, and thus we have a contradiction.
]

= Problem 4

#let GL(n, F) = $op("GL")_#n (#F)$
Let $G$ be a finite subgroup of $GL(n, CC)$. Let $D$ be the subgroup of diagonal
matrices in $GL(n, CC)$. Show that if $G$ is abelian then it is conjugate to a
subgroup of $D$.

#solution[
  We know that $C^n$ is a $C[G]$-module. Further we know that $CC^n$ can be written as sum of one dimensional simple $C[G]$-modules, and since every single element of $G$ is acting on $C^n$ via a matrix, and thus acting on the sum of simple modules via a matrix. Since we know that every
]