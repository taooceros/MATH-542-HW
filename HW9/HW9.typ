#import "@local/homework-template:0.1.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(title: "Math 542 HW9", authors: ("Hongtao Zhang",))

= 

== 14.11


Suppose $f lr((x)) in bb(Z) lr([x])$ is an irreducible quartic whose
splitting field has Galois group $S_4$ over $bb(Q)$ \(there are many
such quartics, cf. Section 6). Let $theta$ be a root of $f lr((x))$ and
set $K eq bb(Q) lr((theta))$. Prove that $K$ is an extension of $bb(Q)$
of degree 4 which has no proper subfields. Are there any Galois
extensions of $bb(Q)$ of degree 4 with no proper subfields?

#let Gal = $op("Gal")$

#solution[
  Denote the splitting field as $L$.

  We know that $Gal(L|QQ(theta))$ is a subgroup of $S_4$, and since $[QQ(theta) : QQ] = 4$, $[L:QQ(theta)] = 6$, and thus by Galois correspondence, we need to go through a index $4$ subgroup. There is only one index $4$ subgroup in $S_4$, which has no additional subgroup.

  There aren't any Galois extension of $QQ$ of degree $4$ with no proper subfield.
]

== 14.13

Prove that if the Galois group of the splitting field of a cubic
over $bb(Q)$ is the cyclic group of order 3 then all the roots of the
cubic are real.


#solution[
  The existence of complex conjugate is a order $2$ subgroup of the Galois group, which is impossible if the Galois group is $Z slash 3$.
]

= 14.16

== 

Prove that $x^4 minus 2 x^2 minus 2$ is irreducible over $bb(Q)$. 

#solution[
  By Eisenstein's criterion, $p=2$ divides each $a_i$ for $i<n$ while $p^2$ does not divides $2$. Thus $f$ is irreducible.
]

==

Show the roots of this quartic are
$ alpha_1 eq sqrt(1 plus sqrt(3)) #h(2em) & alpha_3 eq minus sqrt(1 plus sqrt(3))\
alpha_2 eq sqrt(1 minus sqrt(3)) #h(2em) & alpha_4 eq minus sqrt(1 minus sqrt(3)) dot.basic $

#solution[
  $
    x^4 - 2x^2 - 1 &= 3\
    (x^2 - 1)^2 &= 3\
    x^2 - 1 &= plus.minus sqrt(3)\
  $

  Thus the claim follows.
]

==

Let $K_1 eq bb(Q) lr((alpha_1))$ and $K_2 eq bb(Q) lr((alpha_2))$.
Show that $K_1 eq.not K_2$, and
$K_1 sect K_2 eq bb(Q) lr((sqrt(3))) eq F$. 

#solution[
  $K_1$ cannot be equal to $K_2$ because $K_1$ is all real, while $K_2$ is complex.

  Further we can see that both $K_1$ and $K_2$ contains $QQ(sqrt(3))$, while they are both degree $4$ extension, so there cannot be any intermdiate field between $K_i$ and $QQ(sqrt(3))$.
]

==
Prove that
$K_1 comma K_2$ and $K_1 K_2$ are Galois over $F$ with
$upright(G a l) lr((K_1 K_2 slash F))$ the Klein 4-group. Write out the
elements of $"Gal" lr((K_1 K_2 slash F))$ explicitly. Determine all the
subgroups of the Galois group and give their corresponding fixed
subfields of $K_1 K_2$ containing $F$.

#solution[
  The Klein 4-group has four elements and corresponds to the symmetries of a rectangle. In the context of field extensions, this group would represent different automorphisms of the field $K_1 K_2$. The subgroups would then correspond to the different intermediate fields between $FF$ and $K_1 K_2$
]

== 
Prove that the splitting
field of $x^4 minus 2 x^2 minus 2$ over $bb(Q)$ is of degree 8 with
dihedral Galois group.

#solution[
  This involves studying the splitting field of the given polynomial and understanding its structure. The dihedral group of order 8, $D_8$ is known for its symmetries, which in the context of a Galois group,
]

= \(No unexpected rational linear relations among squareroots;  10 points)

== 

Let $K$ be a field extension of $bb(Q)$ and let
$a comma b in K$. Suppose that
$sqrt(a) comma sqrt(b) comma sqrt(a b) in.not K$. Show that
$"Gal" lr((K lr((sqrt(a) comma sqrt(b))) slash K)) tilde.equiv bb(Z) slash 2 times bb(Z) slash 2$.

#solution[
  Consider the field extension $K(sqrt(a), sqrt(b))$.

  The Galois group
$"Gal" lr((K lr((sqrt(a) comma sqrt(b))) slash K))$ consists of all
automorphisms of $K lr((sqrt(a) comma sqrt(b)))$ that fix $K$. There are
four such automorphisms: - Identity: Leaves both $sqrt(a)$ and $sqrt(b)$
unchanged. - Map $sqrt(a)$ to $minus sqrt(a)$ and leave $sqrt(b)$
unchanged. - Map $sqrt(b)$ to $minus sqrt(b)$ and leave $sqrt(a)$
unchanged. - Map both $sqrt(a)$ and $sqrt(b)$ to their negatives. 3.
Group Structure: These automorphisms form a group isomorphic to
$bb(Z) slash 2 times bb(Z) slash 2$, the direct product of two cyclic
groups of order 2, representing the independent 'flipping' of $sqrt(a)$
and $sqrt(b)$.

The group structure is isomorphic to $(ZZ slash 2)^2$
]

==
Let $n_1 comma dots.h comma n_k$ be positive non-square integers so
that, for any nonempty
$S subset.eq brace.l 1 comma dots.h comma k brace.r comma product_(s in S) n_s$
is not square. Using induction, find the Galois group of
$bb(Q) lr((sqrt(n_1) comma dots.h comma sqrt(n_k)))$ as an extension of
$bb(Q)$. 

#solution[
  Statement: Let $n_1 comma dots.h comma n_k$ be positive non-square
integers so that, for any nonempty
$S subset.eq brace.l 1 comma dots.h comma k brace.r comma product_(s in S) n_s$
is not square. Using induction, find the Galois group of
$bb(Q) lr((sqrt(n_1) comma dots.h comma sqrt(n_k)))$ as an extension of
$bb(Q)$.

Solution: 1. Base Case: For $k eq 1$, the extension
$bb(Q) lr((sqrt(n_1)))$ has Galois group $bb(Z) slash 2$, as there are
two automorphisms: the identity and the map
$sqrt(n_1) arrow.r minus sqrt(n_1)$. 2. Inductive Step: Assume the
Galois group of
$bb(Q) lr((sqrt(n_1) comma dots.h comma sqrt(n_(k minus 1))))$ is
$lr((bb(Z) slash 2))^(k minus 1)$. We need to show that the Galois group
of $bb(Q) lr((sqrt(n_1) comma dots.h comma sqrt(n_k)))$ is
$lr((bb(Z) slash 2))^k$. 3. Extension by $sqrt(n_k)$ : The extension
$bb(Q) lr((sqrt(n_1) comma dots.h comma sqrt(n_(k minus 1)) comma sqrt(n_k)))$
adds one more ’dimension’ of flipping, as $sqrt(n_k)$ can independently
be mapped to its negative. 4. Conclusion: By induction, the Galois group
of $bb(Q) lr((sqrt(n_1) comma dots.h comma sqrt(n_k)))$ is
$lr((bb(Z) slash 2))^k$.
]

==

Finally, let $d_1 comma dots.h comma d_n$ be distinct
squarefree integers. Show that if there is a collection of rational
numbers $a_1 comma dots.h comma a_n$ so that $a_1 sqrt(d_1) plus$
$dots.h plus a_n sqrt(d_n) eq 0$, then $a_1 eq dots.h eq a_n eq 0$.

#solution[
  Statement: Let $d_1 comma dots.h comma d_n$ be distinct squarefree
integers. Show that if there is a collection of rational numbers
$a_1 comma dots.h comma a_n$ so that
$a_1 sqrt(d_1) plus dots.h plus a_n sqrt(d_n) eq 0$, then
$a_1 eq dots.h eq a_n eq 0$.

Solution:

Assume a Non-trivial Linear Combination: Assume
$a_1 sqrt(d_1) plus dots.h plus a_n sqrt(d_n) eq 0$ with not all
$a_i eq 0$.

Galois Automorphisms: Each $sqrt(d_i)$ generates a quadratic extension
of $bb(Q)$. By applying Galois automorphisms that map each $sqrt(d_i)$
independently to $minus sqrt(d_i)$, we can create equations similar to
the original, but with various combinations of $sqrt(d_i)$ replaced by
$minus sqrt(d_i)$.

Linear Independence: Since $d_i$ ’s are distinct and squarefree, the
square roots $sqrt(d_i)$ are: linearly independent over $bb(Q)$. By
applying various Galois automorphisms and considering the resulting
system of linear equations, we can show that the only solution to this
system is $a_1 eq dots.h eq a_n eq 0$.

Conclusion: Therefore, if
$a_1 sqrt(d_1) plus dots.h plus a_n sqrt(d_n) eq 0$, it must be that
$a_1 eq dots.h eq$ $a_n eq 0$. This concludes the proof of the linear
independence of distinct squarefree
]

=  \(The Galois Group of $x^n minus 2 semi 15$ points):

Recall
that $zeta_m := exp lr((frac(2 pi i, m)))$. 
==

Show that
$bb(Q) lr((zeta_r)) sect bb(Q) lr((zeta_s)) eq bb(Q) lr((zeta_(gcd lr((r comma s)))))$.

#solution[
  l. Field Intersection: The intersectior
  $angle.l cal(Q) lr((zeta_r)) sect cal(Q) lr((zeta_s))$ is the largest
  field that is contained in both $bb(Q) lr((zeta_r))$ and
  $bb(Q) lr((zeta_s)) dot.basic$ 
  2. Properties of Cyclotomic Fields:
  $bb(Q) lr((zeta_r))$ and $bb(Q) lr((zeta_s))$ are cyclotomic fields
  generated by the $V^ast.basic dot.basic$ th and s-th roots of unity,
  respectively. The structure of these fields is closely related to the
  divisors of r and s.
  3. The  $gcd lr((r comma s)) dot.basic$ th roots of unity are contained in both $bb(Q) lr((zeta_r))$ and $bb(Q) lr((zeta_s)) comma$ since they are roots   of unity of both orders.
  + Conclusion: Hence $bb(Q) lr((zeta_r)) sect bb(Q) lr((zeta_s))$ is exactly $QQ_lr(gcd(r comma s))$
]

==

Show that $bb(Q) lr((sqrt(2)))$ is contained in
$bb(Q) lr((zeta_m))$ if and only if $8 divides upright(m)$.

#solution[
  For $QQ(sqrt(2))$ to be contained in $QQ(zeta_m)$, observe that $zeta_8 = exp((pi i)/4)$ so that $zeta_8^2 = i$ and $zeta_8+zeta_8^7 = sqrt(2)$ .

  Therefore if $8 | m$ the claim follows.

  On the other hand since $QQ(sqrt(2)) = QQ(zeta_8)$ it follows that $8 | m$.
]

==

Recall
that the splitting field $F$ of $x^n minus 2 in bb(Q) lr([x])$ is
$bb(Q) lr((zeta_n comma root(n, 2)))$. Let $K eq bb(Q) lr((root(n, 2)))$
and let $L eq bb(Q) lr((zeta_n))$. Show that $K sect L$ is either
$bb(Q)$ or $bb(Q) lr((sqrt(2)))$. \(Hint: Show that $K sect L$ is a
Galois extension of $bb(Q)$. Let $m$ be its degree. Show that the
constant term of the minimal polynomial of $root(n, 2)$ in
$lr((K sect L)) lr([x])$ must be $root(m, 2)$. Conclude that
$K sect L eq bb(Q) paren.l root(m, 2)$ and show that this is only Galois
if $m in brace.l 1 comma 2 brace.r$.)

#solution[
  Let $m$ be the degree of $K sect L$ over $QQ$. The minimal polynomial of $root(n, 2)$ over $K sect L$ must have $root(m, 2)$ as its constant term.

  Since the extension is Galois, it happens only when $m = 1 "or" 2$.
]

==

Find $"Gal" lr((F slash bb(Q)))$ \(Hint: The Galois group sends $root(n, 2)$
to $root(n, 2) zeta_n^k$ for some $1 lt.eq k lt.eq n$ and sends $zeta_n$
to $zeta_n^ell$ for some $ell$ coprime to $k$. Use this observation to
conclude that the Galois group can be identified with a subgroup of
$lr((bb(Z) slash n)) times.r lr((bb(Z) slash n))^times$.)

#solution[
  Since the Galois group permutes the roots of $x^n -2$. We can see that it is a subgroup of $(ZZ_n ⋊ ZZ_n^times)$ where the first components correpsonds to the power of $root(n,2)$ and the second component to the power of $zeta_n$.

  Since the automorphism permutes the roots, we can see that it must be a subgroup of the semidirect product since it is a subgroup of the automorphism group.
]

=

Problem 5 \(5 points): Let
$f lr((x)) eq x^4 plus 3 x^2 minus 3 x minus 2 in bb(Q) lr([x])$.
Compute the prime factorization of the reduction of $f med mod med 2$
and $med mod med 3$ and use this to show that $f$ is irreducible and
that the Galois group of its splitting field has order at least 12 .
Using that the discriminant of this polynomial is negative, conclude
that the Galois group of its splitting field is Sym\(4).

#solution[
  Consider $f$ over $ZZ_3[x]$ and $ZZ_2[x]$.

  $
    f_1 = x^4 + 1\
    f_2 = x^4 - x - 2
  $

  Since both are irreduciable, the Galois group of its splitting field acts transitively on the four roots. This implies that the order of the Galois group is a multiple of 4. 

  Additionally, the fact that f(x)f(x) is irreducible over $QQ$ implies the Galois group acts transitively on the roots, making it a subgroup of the symmetric group $S_4$ which has order $24$.

  The discriminant of $f(x)$ is negative. In the context of polynomials of degree 4, a negative discriminant indicates complex roots. Since the Galois group must also include complex conjugation, this narrows it down to groups that have even permutations (as complex conjugation swaps a pair of complex roots). The only transitive subgroup of $S_4$ with order greater than 4 and which includes even permutations is $S_4$ itself.

  Therefore we can conclude that the Galois group of the splitting field of $f$ is $S_4$.
]
