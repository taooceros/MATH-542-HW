#import "@local/homework-template:0.1.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Math 542 HW2",
  authors: ("Hongtao Zhang",),
)

#let (
  theorem,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof
) = (
  thm,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof
)

#show: thmrules


= Chinese Remainder

== 10.3.16 <10.3.16>

For any left ideal $I$ of $R$ define
$
    I M = {sum_"finite" a_i m_i | a_i in I, m_i in M}
$
to be the collection of all finite sums of elements of the form $a m$ where $a in I$ and $m in M$. This is a submodule of $M$.

For any ideal $I$ of $R$ let $I M$ be the submodule defined above. Let $A_1, ..., A_k$ be any ideals in the ring $R$. Prove that the map

$ phi : M -> M/(A_1 M) times ... times M/(A_k M) "defined by" m arrow.bar (m + A_1 M, ..., m + A_k M) $

is an $R$-module homomorphism with kernel $A_1 M sect A_2 M sect ... sect A_k M$.

#solution[
    Want to check $forall x, y in M : phi(x+y) = phi(x) + phi(y)$ and $forall x in M, r in R: phi(r x) = r phi(x)$.

    $forall x,y in M: phi(x+y) &= (x + y + A_1 M, ..., x + y + A_k M) \
        &= (x + A_1 M, ..., x + A_k M) + (y + A_1 M, ..., y + A_k M) \
        & = phi(x) + phi(y)$

    $forall r in R, x in M: phi(r x) = (r x A_1M, ..., r x A_k M) = r(x A_1 M,..., x A_k M)$ because submodule is invariant under the ring $R$.

    To become the kernel, it need to satisfy that $forall i in [1,k] : x+A_i M = A_i M$, which implies that $x in sect.big_i A_i M$.
]

== 10.3.17

In the notation of the @10.3.16, assume further that the ideals $A_1, ..., A_k$ are pairwise comaximal $(i.e. forall i != j : A_i + A_j = R)$. Prove that

$
    M/((A_1 ... A_k) M) cong M/(A_1 M) times ... times M/(A_k M)
$

[See proof of the Chinese Remainder Theorem for rings in Section 7.6.]

#solution[
    Based on the proof of Chinese Remainder Theorem for rings in Section 7.6, it suffices to check the case when $k = 2$.

    Consider a map $phi : M -> M/(A M) times M/(B M)$ by sending $x arrow.bar (a + A M, a+ B M)$.

    $phi$ is a module homomorphism based on @10.3.16. 

    The kernel is clearly $(A M sect B M)$, and similar to the proof in Ring, it suffices to check when $A, B$ are comaximal, $(A B) M =( A sect B) M$


    Because $A+B = R$, $exists x in A, y in B : x+y = 1$

    $
      forall (r_1 mod A, r_2 mod B) in M/(A M) times M/(B M) 
    $

    $
      phi(r_2 x + r_1 y) 
        &= phi(r_2) phi(x) + phi(r_1) y \
        &= (r_2 mod A, r_2 mod B) (0, 1) + (r_1 mod A, r_1 mod B) (1, 0) \
        &= (0, r_2 mod B) + (r_1 mod A, 0) \
        &= (r_1 mod A, r_2 mod B)
    $

    Therefore $phi$ is surjective.

    It's clear that $(A B) M subset (A sect B) M$

    Because $A+B = R$, $exists x in A, y in B : x+y = 1$

    Thus $forall c in (A sect B) M : exists x' in A, y' in B : c = c x + c y in (A B) M$
]

= Fractions

Suppose that $R$ is an integral domain and let $M$ be an $R$-module. Let $S$ be a multiplicatively closed subset of $R$ that includes $1$ and does not include $0$ (for instance complemenets of prime ideals). Let $S^(-1) M$ be the collection of symbols of the form $m/s$ where $m in M$ and $s in S$ and where we insist that $(s' dot m)/(s's) = m/s$ for any $s' in S$. This is an abelian group where we define addition by $m_1/s_1 + m_2/s_2 := (s_2 dot m_1 + s_1 dot m_2)/(s_1s_2)$ for $m_1, m_2 in M$ and $s_1, s_2 in S$. Note that $S^(-1)R$ is a ring if we additionally define multiplication by $r_1/s_1 dot r_2/s_2 := (r_1r_2)/(s_1s_2)$ for $r_1, r_2 in R$ and $s_1, s_2 in S$. Finally, we note that $S^(-1)M$ is an $S^(-1)R$-module where $r/(s_1) dot m/s_2 := (r dot m)/(s_1s_2)$.

== 

Show that if $f : M_1 → M_2$ is a homomorphism of R-modules,
then the map $S^(-1)f : S^(-1)M_1 → S^(-1)M_2$ sending $m/s arrow.bar f(m)/s$
is a
homomorphism of $S^(-1)R$ modules.

#let inv(x) = $#x^(-1)$

#solution[
  Given that $f$ is a homomorphism of $R$-module, this question is automatically right when checking addition and multiplication.

  $
    forall m/s in S^(-1)M_1, r in R: inv(S)f(r m/s) = f(r m)/s = (r f(m))/s 
  $

  addition is similar and omitted.
]

==

#let tensor = $times.circle$

If $S=R-{0}$, then note that $S^(-1)R$ is a field. Use this to show that $R^n$ and $R^m$ are not isomorphic if $n$ and $m$ are distinct positive integers.

#solution[
  Note $inv(S)R^n$ and $inv(S)R^m$ are $inv(S)R$ module, and because $inv(S)R$ is a field, this is a vector space, and thus the dimension will match.

  Thus it suffices to see that $inv(S)R^m cong S^(-1)R^n$ if and only if $R^m cong R^m$, which is clear.
]

==

Let $S = R-{0}$ and consider the map $M -> (S^(-1)R ) tensor M$ that sends $m$ to $1 tensor m$. Show that its kernel is the torsion submodule of $M$.

#solution[
  Consider a map $phi$ from $S^(-1)R plus.circle M$ to $S^(-1)R$ by sending $(r/s, m) arrow.bar (r m)/s$. Given the universal property of $tensor$, there must exists a unique $f$ that maps from $S^(-1)R tensor M$ to $S^(-1)R$ which factor through $phi$.

    
]

==

Show that any linearly independent subset of $R^n$ can be extended to a linearly independent subset of size n. (The bonus
problem shows that this result is not true when $R$ is not an
integral domain).

#solution[
  Because $R$ is an integral domain, and thus no zero divisor exists, and every submodules are torsion free, and thus every submodules are free.

  Thus we can extend the linearly independent subset to a basis, which has size $n$.
]

= Tensor

== 10.4.2

Show that the element "$2 times.circle 1$" is $0 in ZZ times.circle_ZZ ZZ/(2ZZ)$ but is nonzero in $2ZZ times.circle_ZZ ZZ/(2ZZ)$.

#solution[
  We have $2 tensor 1 = 2 times (2 tensor 1) = 1 tensor 2 = 1 tensor 0 = 0$ in $ZZ tensor_ZZ ZZ/2ZZ$.

  However, in $2ZZ$, we cannot pull out the $2$ out of $2$ because $1 in.not 2ZZ$.
]

== 10.4.20

Let $I = (2,x)$ be the ideal generated by $2$ and $x$ in the ring $R = ZZ[x]$. Show that the element $2 tensor 2+x tensor x$ in $I tensor_R I$ is not a simple tensor, i.e. cannot be written as $a tensor b$ for some $a,b in I$.

#solution[
  From the old school we have $(a+b)(a-b) = a^2 -b^2$, and since $tensor$ also satisfy distributive rule we shall have $a=2, b=i x$. However, we don't have $i in ZZ[x]$, and thus this is impossible.
]

= Duality

Suppose that $R$ is commutative. Let $M, N$, and $U$ be $R$-modules. The _dual module_ of $M$ is defined to be $M^* := "Hom"_R (M, R)$.

==

Suppose that $(e_1, ..., e_n)$ is a bisis, i.e. linearly independent spanning set for $M$. Define $e_i^* in M^*$ to be the homomorphism that sends $e_i$ to $1$ and all other $e_j (j != i)$ to $0$. Show that $(e_1^*,...,e_n^*)$ is a basis for $M^*$.

#solution[
  A homomorphism can be uniquely determined by sending the basis of $M$ to $R$.

  Because $forall x in M : x = sum a_i e_i$, then by defining the map from $M -> M^*$ by sending $sum a_i e_i arrow.bar sum a_i e_i^*$ is a surjective. Therefore $(e_1^*, ..., e_n^*)$ is a basis for $M^*$.
]

==

Show that if $M$ is a free $R$-module of rank $n$, where $n$ is a positive integer, then $(M^*)^*$ is isomorphic to $M$. (Hint: Consider the map $M arrow.long (M^*)^*$ that sends $m in M$ to $"ev"_m$ where $"ev"_m : M^* -> R$ sends a homomorphism $phi : M -> R$ to $phi(m)$. To establish that this map is a surjection show that, in the notation of the preceding part, $((e_i)^*)^* = "ev"_e_i$.)

#solution[
  Consider the map $psi : M -> (M^*)^*$ by sending $m arrow.bar e v_m$ where $e v_m : M^* -> R$ by sending $(phi : M -> R) arrow.bar phi(m)$ as an evaluation map.

  Then $e v_(e_i)$ will send $e_i^* arrow.bar e_i^* (e_i) = e_i$ and every other $e_j^* : j!= i$ will send $e_i$ to $0$, which is exactly $e_i^*^*$.

  The only thing left checking is that $psi$ is a homomorphism, which is automatically true given that this is an evaluation map from a homomorphism $phi : M -> R$.
]

==

Show that if $R$ is a field and $M$ and $N$ are finitely generated, then $"Hom"_R (M, N) cong M^* tensor N$ as $R$-modules. Show that this is not necessarily such an isomorphism when $R=ZZ$ and $M$ and $N$ are finitely generated $ZZ$-modules.

#solution[
  Suppose $(e_i)$ are a finite set of elements that finitely generate $M$. Then by the same construction of part (4.1), we will have $(e_i^*)$ that finitely generate $M^*$.

  If $R$ is a field, then $M, N$ are vector spaces, and thus free.

  We have $"Hom"_R (M, N)$ equivalent to a matrix that has dimension $m times n$, where $m,n$ are the number of basis of $M, N$.

  On the other hand, we have any bilinear map from $M plus.circle N$ can be written as $m^T A n$, where the $A$ has dimension $m times n$. Thus this is an isomorphism of set.

  Since in the expression we have $m^T$, and thus this is a map from $M -> R$, and thus we need the left hand side to be $M^*$ of the tensor.

  This is not necessary true under $ZZ$ module because we can have different basis representation of the same element in $ZZ$ module. Thus the dimension of the matrix may vary given different finitely generated set, and thus the tensor may be larger than the homomorphism.
]

= Counterexample

Do one of the following two problems: 10.3.24 or 10.3.26.

== 10.3.24

For each positive integer $i$ let $M_i$ be the free $ZZ$-module $ZZ$, and let $M$ be the direct product $product_(i in Z^+) M_i$. Each elements of $M$ is in the uniquely determined form $(a_1, a_2, a_3, ...)$ with $a_i in ZZ$ for all $i$. Let $N$ be the submodule of $M$ consisting of all such tuple with only finitely many nonzero $a_i$. Assume $M$ is a free $ZZ$-module with basis $cal(B)$.

===

Show that $N$ is countable.

#solution[
  It suffices to prove that the diagnoal argument that proves $RR$ is uncountable does not work here.

  Because all elements in $N$ contains only finitely many nonzero entries, the new element we retrieve from the diagonal plus 1 can only contain finitely many nonzero entries. However, this is not possible unless we have $9$ on the diagonal after some finitely many terms.

  However, that contradicts to how we enumerate the elements in $N$. Thus the diagnol plus 1 is not in $N$.
]

===

Show that there is some countable subset $cal(B)_1$ of $cal(B)$ such that $N$ is contained in the submodule, $N_1$, generated by $cal(B)_1$. Show also that $N_1$ is countable.

#solution[
  Because $cal(B)$ is a basis,

  $
    forall n in N : exists c_i in ZZ: sum_(b_i in cal(B)) c_i b_i = n
  $

  such that the number of $b_i$ used to represent $n$ is finite.

  Thus we takes the union of such $b_i$ that's required to cover $N$, we will have a countable union of finite subsets which is still countable.
]

===

#solution[
  By definition of quotient, $overline(M)$ can be generated by $cal(B) \\ cal(B_1)$, and thus is a free module.

  As a free module, every element in $overline(M)$ can be represented by a finite sum of elements in $cal(B) \\ cal(B_1)$, and thus is a multiple of other elements if and only if $k$ divides all the coefficients of the basis.
]

===

#solution[
  The diagonal arguments works here by flipping the sign of each diagonal element.

  Since $cal(S)$ is uncountable, it is not possible that $cal(S) subset N_1$.
]

===

#solution[
  Given that $overline(s) in M/N_1$, and $N in N_1$, we can add linear combination of any element that have finitely many nonzero entries.

  Consider an integer $k$, it suffices to use $N$ to fill the gap for any entries in $overline(s)$ that has index less than $k$. Beyond that, every element will have a factor of $k$.

  Thus $forall k in ZZ, exists m in M: overline(s) = k overline(m)$.
]


= Bonus

#solution[
  To prove that $M$ is free, it suffices to show that the map to $M$ is injective. If $r x = 0$, then $r$ must map everything in the $x$ axis to $0$. Same for $r y = 0$. Then $(r x, r y) = 0$ implies that it is a trivial map from $CC^2 - {0,0} -> CC$. Thus $M$ is free.

  If $exists (u,v) in R^2$ that is linearly independent with $(x,y)$, then
]