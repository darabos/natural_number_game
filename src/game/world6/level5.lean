/-
# Proposition world. 

## Level 5 : `P → (Q → P)`.

In this level, our goal is to construct an implication, like in level 2.

```
⊢ P → (Q → P)
```

So $P$ and $Q$ are propositions, and our goal is to prove
that $P\implies(Q\implies P)$.
We don't know whether $P$, $Q$ are true or false, so initially
this seems like a bit of a tall order. But let's give it a go. Delete
the `sorry` and let's think about how to proceed.

Our goal is `P → X` for some true/false statement $X$, and if our
goal is to construct an implication then we almost always want to use the
`intro` tactic from level 2, Lean's version of "assume $P$", or more precisely
"assume $p$ is a proof of $P$". So let's start with

`intro p,`

and we then find ourselves in this state:

```
P Q : Prop,
p : P
⊢ Q → P
```

We now have a proof $p$ of $P$ and we are supposed to be constructing
a proof of $Q\implies P$. So let's assume that $Q$ is true and try
and prove that $P$ is true. We assume $Q$ like this:

`intro q,`

and now we have to prove $P$, but have a proof handy:

`exact p,`
-/

/- Lemma : no-side-bar
For any propositions $P$ and $Q$, we always have
$P\implies(Q\implies P)$. 
-/
lemma example_6_5 (P Q : Prop) : P → (Q → P) :=
begin
  intro p,
  intro q,
  exact p,


end

/-
A mathematician would treat the proposition $P\implies(Q\implies P)$
as the same as the proposition $P\land Q\implies P$,
because to give a proof of either of these is just to give a method which takes
a proof of $P$ and a proof of $Q$, and returns a proof of $P$. Thinking of the
goal as $P\land Q\implies P$ we see why it is provable.

## Did you notice?

I wrote `P → (Q → P)` but Lean just writes `P → Q → P`. This is because
computer scientists adopt the convention that `→` is *right associative*,
which is a fancy way of saying "when we write `P → Q → R`, we mean `P → (Q → R)`.
Mathematicians would never dream of writing something as ambiguous as
$P\implies Q\implies R$ (they are not really interested in proving abstract
propositions, they would rather work with concrete ones such as Fermat's Last Theorem),
so they do not have a convention for where the brackets go. It's important to
remember Lean's convention though, or else you will get confused. If your goal
is `P → Q → R` then you need to know whether `intro h` will create `h : P` or `h : P → Q`. 
Make sure you understand which one. 
-/