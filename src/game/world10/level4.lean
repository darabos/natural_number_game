import game.world10.level3 -- hide
namespace mynat -- hide
/- 

# Inequality world. 

## Level 4: `zero_le`

Another easy one. 
-/

/- Lemma
For all naturals $a$, $0\leq a$.
-/
lemma zero_le (a : mynat) : 0 ≤ a :=
begin
  use a,
  rw zero_add,


end

end mynat -- hide
