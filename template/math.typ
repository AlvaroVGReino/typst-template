#let gen(a) = $chevron.l #a chevron.r$

#let im = "Im"

#let ker = "Ker"

#let hom = "Hom"

#let ran = "Rango"

#let sig = "sig"

#let grad = "Grad"

#let graf = "Graf"

#let Ctl(sym: sym.corner.t.l) = block(align(top + left)[#scale(x: 150%, y: 150%)[#sym]])

#let Cbr(sym: sym.corner.b.r) = block(align()[#scale(x: 150%, y: 150%)[#sym]])

#let q(qed) = align(right + bottom)[#qed()]

#let quot(a, b) = $#a slash #b$

#let iso = $tilde.equiv$

#let end = "End"

#let to = $-->$

#let tos = $~~>$

#let then = $=>$

#let dim = "dim"

#let base = $cal(B)$

#let basec = $cal(C)$

#let lik = $cal(L)_K$

#let dual(a) = $hat(#a)$

#let bidual(a) = $hat(hat(#a))$

#let forallmost = $forall"*"$

#let sumi = $sum_(i in I)$

#let sumim = $sum_(i eq 1)^m$

#let sumin = $sum_(i eq 1)^n$

#let sumjn = $sum_(j eq 1)^n$

#let fd = $dual(f)$

#let vd = $dual(V)$

#let bd = $dual(base)$

#let kesp = $KK"-espacio vectorial"$

#let kesps = $KK"-espacios vectoriales"$

#let xb = $overline(x)$

#let yb = $overline(y)$

#let zb = $overline(z)$

