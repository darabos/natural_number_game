import game.world8.level7 -- hide
namespace mynat -- hide

/-

# Advanced Addition World

## Level 8: `eq_zero_of_add_right_eq_self`

The lemma you're about to prove will be useful when we want to prove that $\leq$ is antisymmetric.
There are some wrong paths that you can take with this one.
-/

/- Lemma
If $a$ and $b$ are natural numbers such that 
$$ a + b = a, $$
then $b = 0$.
-/

lemma eq_zero_of_add_right_eq_self {a b : mynat} : a + b = a → b = 0 :=
begin
  intro h,
  apply add_left_cancel a,
  rw h,
  rw add_zero,




end

end mynat -- hide
