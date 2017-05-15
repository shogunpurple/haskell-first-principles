# Combinators
1. λx.xxx is a combinator because all the args that exist in the body exist in the head.
2. λxy.zx is not a combinator because all body args don't exist in the head, leaving a free variable.
3. λxyz.xy(zx) is a combinator because all body args exist in the head.
4. λxyz.xy(zxy) is a combinator because all body args exist in the head.
5. λxy.xy(zxy) is not a combinator because it has a free variable z.

# Normal form or diverge?
1. λx.xxx = Already in normal form, cannot be reduced further. 
2. λ(z.zz)(λy.yy) = diverges, will continually keep calling itself with itself. 
3. (λx.xxx)z = Is normal form. Can only be reduced once to zzz.

# Beta reduce
1. (λabc.cba)zz(λwv.w) → (λa.λb.λc.cba)zz(λw.λv.w) → (λb.λc.cbz)z(λw.λv.w) → (λc.czz)(λw.λv.w) → (λw.λv.w)zz → (λv.z)z → z

2. (λx.λy.xyy)(λa.a)b → (λy.(λa.a)yy)b → (λa.a)bb → bb

3. (λy.y)(λx.xx)(λz.zq) → (λx.xx)(λz.zq) → (λz.zq)(λz.zq) → (λz.zq)q → qq

4. (λz.z)(λz.zz)(λz.zy) → (λz.zz)(λz.zy) → (λz.zy)(λz.zy) → (λz.zy)y → yy

5. (λx.λy.xyy)(λy.y)y → (λy.(λy.y)yy)y → (λy.y)yy → yy

6. (λa.aa)(λb.ba)c → (λb.ba)(λb.ba)c → ((λb.ba)a)c → aac

7. (λxyz.xz(yz))(λx.z)(λx.a) → (λx.λy.λz.xz(yz))(λx.z)(λx.a) → (λy.λz1.(λx.z)z1(yz1))(λx.a) → (λz(λx.z)z1λx.a)z1 → (λz1.zλx.a)z1 → λz1.za
