import game.world4.level1 -- hide
namespace mynat -- hide

/- 

# Power World

## Level 2: `zero_pow_succ`
-/

/- Lemma
For all naturals $m$, $0 ^{succ (m)} = 0$.
-/
lemma zero_pow_succ (m : mynat) : (0 : mynat) ^ (succ m) = 0 :=
begin
  rw pow_succ,
  rw mul_zero,


end

end mynat -- hide
