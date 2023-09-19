import game.world10.level5 -- hide
namespace mynat -- hide
/- 

# Inequality world. 

## Level 6: `le_antisymm`

In Advanced Addition World you proved

`eq_zero_of_add_right_eq_self (a b : mynat) : a + b = a → b = 0`.

This might be useful in this level.

Another tip: if you want to create a new hypothesis, you can use the `have` tactic.
For example, if you have a hypothesis `hd : a + (c + d) = a` and you want 
a hypothesis `h : c + d = 0` then you can write

`have h := eq_zero_of_add_right_eq_self hd,`

-/

/- Lemma
$\le$ is antisymmetric. In other words, if $a\le b$ and $b\le a$ then $a = b$. 
-/
theorem le_antisymm (a b : mynat) (hab : a ≤ b) (hba : b ≤ a) : a = b :=
begin
  cases hab with c hc,
  cases hba with d hd,
  rw hc at hd,
  rw add_assoc at hd,
  symmetry at hd,
  have h := eq_zero_of_add_right_eq_self hd,
  have h2 := add_right_eq_zero h,
  rw h2 at hc,
  rw hc,
  exact add_zero a,


end
/-
Congratulations -- you just proved that the natural numbers are a partial order!
-/

instance : partial_order mynat := by structure_helper
end mynat -- hide
