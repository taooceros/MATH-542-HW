#import "@local/homework-template:0.1.0": *

= 12.1

== 11

#let div = $\/$

We can see that $p^(k-1)M$ and $p^k M$ is a $R$-module.

Consider the ideal $I = (p^(k-1), a)$ and $J = (p^k, a)$.

Consider the homomorhism of $I->p^(k-1)M$ which is the restriction to $I$ of the homomorphism $R-> R/(a) = M$. 

Thus, we have $I/J cong (p^(k-1)M)/(p^k M)$ as $R$-module by isomorphism theorem. Then we can see that $I/J$ will be $R div (p)$ if $k<=n$ and $(0)$ if $k>n$ as $I = (gcd(p^(k-1), a)), J = (gcd(p^k, a))$.

== 12

===

#let cplus = $plus.circle$

By previous exercise we can see that $p^(k-1) M div p^k M cong p^(k-1)(M_1 cplus ... cplus M_n) div p^(k)(M_1 cplus ... cplus M_n)$, where $M_i$ is generated by the elementary divisors of $M$. By previous exercise, we can see that each $p^(k-1) M_i / p^k M_i cong R div (p)$ if the $i$-th elementary divisor is power of $p^(a)$ with $a>=k$.

===

Since $M_1 cong M_2$, then they both can be written as some direct sum of $R div (a)$. Then follows the previous part, we can conclude they have the same number of elementary divisor $p^a$ with $a >= k$. Since this is true for all elementary divisors in $R$, we can conclude that $M_1$ and $M_2$ have the same set of elementary divisors.

= 12.2

== 10

It suffices to find all invariant factor where the largest one is $(x+2)^2 (x-1)$.

We can see that we have

$
    (x+2), (x+2) (x-1), (x+2)^2 (x-1)\
    (x+2), (x+2)^2, (x+2)^2 (x-1)\
    (x+2), (x+2), (x+2), (x+2)^2 (x-1)\
    (x-1), (x-1), (x-1), (x+2)^2(x-1)\
    (x-1), (x+2)(x-1), (x+2)^2(x-1)\
    (x+2)^2 (x-1), (x+2)^2 (x-1)
$

Each will have a representator that can be written based on the rational canonical form construction.

$
    A_p = mat(0, 0, ..., 0, -a_0/a_n;
            1, 0, ..., 0, -a_1/a_n;
            dots.v, 1, dots.down, , dots.v;
            dots.v, dots.v, dots.down, ,dots.v;
            0,0,...,1,-a_(n-1)/a_n)
$

== 12

Given that the matrix satisfy $A^6 = I$, we have the minimal polynomial satisfying $x^6 - 1  = 0$.

$
    x^6-1 = (x-1)(x+1)(x^2+x+1)(x^2-x+1) = (x+1)^2(x^2+x+1)^2
$


Thus the minimal polynomial needs to be a factor of $(x+1)^2(x^2+x+1)^2$.

We have choice $x+1, (x+1)^2, (x^2+x+1), (x+1)(x^2+x+1)$.

Thus results are

$
    mat(1,0,0;
        0,1,0;
        0,0,1;),
    mat(1,0,0;
        0,0,1;
        0,1,0;),
    mat(0,0,1;
        1,0,0;
        0,1,0;),
$

For $4 times 4$ matrices satifying $B^20 = I$. We have a similar expression.

$
    x^20 - 1 = 0\
    (x - 1)^2 (x^4 + x^3 + x^2 + x + 1)^2 (x^10 + 1) = 0
$

For the minimal polynomial, we have

$
    (x-1)^i #h(1em) forall i <= 4\
    (x^4 + x^3 + x^2 + x + 1)
$

Thus we can construct similar matrix based on these minimal polynomials as before.

= 12.3

== 18

By factoring out the elementary divisors

$
    (x-2)^3, (x-3)^2\
    (x-2)^2, (x-2), (x-3)^2\
    (x-2), (x-2), (x-2), (x-3)^2\
    (x-2)^3, (x-3), (x-3)\
    (x-2)^2, (x-2), (x-3), (x-3)\
    (x-2), (x-2), (x-2), (x-3), (x-3)\
$

Then constructing the Jordon Canonical form based on that

$
    (x-2)^3, (x-3)^2\
    mat(2,1,0,0,0;
        0,2,1,0,0;
        0,0,2,0,0;
        0,0,0,3,1;
        0,0,0,0,3)
$

Others are similar.

== 22

This suggests that we have the minimal polynomial a factor of $x^3 - x = 0 = (x+1)(x-1)x$. Then we can see that the minimal polynomial have no repeated root, which means it is diagnolizable.

This is not true over any field $F$ as we can have $(x+1) = (x-1)$ in $FF_2$.

== 22

$
    phi(nu_j) = -a_(1 j)v_1 - ... - a_(j-1 j)v_(j-1) + (x-a_(j j))v_j - a_(j+1 j) v_(j+1) - ... a_(n j) v_n
$

By applying the definition of $x(v_j)$, we have this equal to $0$.

Assume we have some $v$ lies in $ker(phi)$.

Then

$
    phi(v_j) = phi(sum a_i xi_i) = sum phi(a_i xi_i) = sum a_i phi(xi_i) = sum a_i v_i
$

== 23

=== 

We have the homomorphism $phi : F[x]^n -> V$.

$
    phi(x xi_j) = x phi (xi_j) = x v_j = a_(1 j) v_1 + ... + a_(n j) v_n
$

Thus consider the preimage of such an element, which will be in some form of $sum f_i$ plus the kernel of $phi$, which is $nu_j$.

===

We have $F[x] xi_i = F xi_i + F' xi_i$ where $F'$ denotes all polynomial with constant term $0$. Since $F' xi_i = F[x] x(xi_j) = F[x] (nu_j + f_j)$ the claim follows.

===

By previous claim we have

$
    sum F[x] xi_i = sum F[x] nu_i + sum F xi_i
$

For an element to be in the kernel of $phi$, the constant term must be $0$. Thus we have any element in $ker(phi)$ can be written as $sum F[x] nu_i$.

===

This claim follows by the definition of $nu_i$. We have 

$
    nu_j = -a_(1 j) xi_1 - ... - a_(j-1 j) xi_(j-1) + (x-a_(j j)) xi_j - a_(j+1 j) xi_(j+1) - ... - a_(n j) xi_n
$

Thus the $j$-th column of the relations matrix will be as $mat(-a_(1 j);dots.v; x-a_(j j); dots.v; -a_(n j))$.

Since this is a matrix represented by a set of elements generate the kernel of $phi$, we can change the basis of the kernel to the basis of the relations matrix, and thus results a diagonal matrix. The transpose won't change the diagonal property, and thus we can prove the claim.