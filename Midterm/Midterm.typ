#import "@local/homework-template:0.1.0": *

#let tensor = $times.circle$
#let div = $\/$

= Problem 1

Let $A = ZZ div 3 cplus ZZ div 12$. Find the number of elements in $A tensor_ZZ A$.

#let zmod(x) = $ZZ div #x$

#let solution = solution.with(base_level: 0)

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

#let diag(..args) = {
  let args = args.pos();

  let length = args.len();
  
  let result = ();

  for (i, e) in args.enumerate() {
    let row = ();
    for j in range(i) {
      row.push(0)
    }

    row.push(e)

    for j in range(length - i - 1) {
      row.push(0)
    }

    result.push(row);
  }

  
  math.mat(..result)
}

#solution[
  We know that $C^n$ is a $C[G]$-module. Further we know that $CC^n$ can be written as sum of one dimensional simple $C[G]$-modules, denoted as $V_i$.

  Then we further know that each $V_i$ will be determined by the action of $G$, i.e. $delta_i : G -> CC^times$, and thus there must exist some $B$ such that $forall A in G : B A B^(-1) = diag(delta_1(g), dots.down, delta_n(g)) in D$
]

= Problem 5

Suppose that $(a,b)$ and $(c, d)$ are two elements of $ZZ^2$ and let $G$ be the subgroup of $ZZ^2$ that they generate. Suppose that $a d - b c = 12$. Find the number, up to isomorphism, of all possible quotient groups $ZZ^2 div G$.

#solution[
  It suffices to consider all matrix of the form $A = mat(a, b; c, d)$ where $a d - b c = 12$ and $a,b,c,d in ZZ$. Note that $a d - b c = det(A)$, and $det(A) = d_1 times d_2$, where $d_1$ and $d_2$ are the invariant factors of $A$.

  Thus it suffices to consider all the possible invariant factor of $A$.

  Since $12 = 3 times 4$, and thus the only invariant factor combination is $(1,12)$ and $(2,6)$, which means the number of quotient group is only $2$ up to isomorphism.
]

= Problem 6

Let $A = ZZ cplus zmod(6) cplus zmod(3)$. Consider the homomorphsm $phi : A -> QQ tensor_ZZ A$ given by $phi(a) = 1 tensor a$. Find the number of elements in $ker(phi)$.

#solution[
  We know that $QQ tensor_ZZ A = QQ tensor (ZZ cplus zmod(6) cplus zmod(3)) = QQ tensor ZZ cplus QQ tensor zmod(6) cplus QQ tensor zmod(3)$.

  Since this is a direct sum of three tensor product, it will be $0$ if and only if all three entries are $0$.

  Firstly consider how many elements in $zmod(6)$ that will be $0$ when sending $a arrow.bar 1_QQ tensor a$. Since $6$ divides $1$ in $QQ$, we know that all elements in $zmod(6)$ will be $0$ when sending $a arrow.bar 1_QQ tensor a$.

  Similar reasoning yield us that all elements in $zmod(3)$ will be $0$ when sending $a arrow.bar 1_QQ tensor a$.

  Finally, we know that $QQ tensor_ZZ ZZ$ is isomorphic to $QQ$ with isomorphism $f : (q tensor z) arrow.bar q dot z$, and thus $QQ tensor ZZ$ will be $0$ if and only if $z$ is $0$, which means we have only $0$ maps to $0$ in $phi$. Therefore the number of elements in $ker(phi)$ is $1 times 3 times 6 = 18$.
]

= Problem 7

Suppose that $A$ is $4 times 4$ matrix with rational entries and whose characteristic polynomial is $x^2(x^2+1)$. Produce a finite collection $S$ of explicit matrices and show that, for some $B$ in $GL(4, QQ)$, $B A B^(-1)$ belongs to $S$.

#solution[
  It suffices to find the all possible Rational Canonical Form with characteristic polynomial $x^2 (x^2 + 1)$.

  The prime decomposition of $x^2 (x^2 + 1)$ is

  $
    x, x, (x^2 + 1)
  $

  We know that the product of invariant factors are the characteristic polynomial. Thus the possible invariant factors are

  $
    x^2(x^2 + 1) = x^4 + x^2 \
    x, x(x^2 + 1) = x^3 + x \
  $

  Using the algorithm in the book, we can find the possible Rational Canonical Form are

  $
    mat(0, 0, 0, 0;
        1, 0 ,0, 0;
        0, 1, 0, -1;
        0, 0, 1, 0) \

    mat(0, 0, 0, 0;
        0, 0, 0, 0;
        0, 1, 0, -1;
        0, 0, 1, 0;) \
  $

  Since these are the only two possible Rational Canonical Form with charateristic polynomial $x^2 (x^2 + 1)$, we know that $A$ must be conjugate to one of them.
]