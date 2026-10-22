#import "../template/globals.typ": *

#chapter-summary[

  #lorem(50)
]

= Espacios Vectoriales

== Definición y Propiedades Básicas

#definicion(title: [Espacio vectorial])[

  Se dice que un conjunto $V eq.not emptyset$ es un espacio vectorial sobre un cuerpo $(K,+,·)$ o que es un $KK$-espacio vectorial si:

  1. En $V$ está definida una operación interna aditiva denotada por $"+"$ de modo que $(V,+)$ es un grupo abeliano.
  2. Existe una operación externa llamada producto de escalares por vectores:
  $
    KK times V arrow.r.long V \
    (alpha, v) ~~> alpha · v
  $
  Tales que, para todo $v,w in V$ y $alpha, beta in KK$, tenemos:
  $
    (alpha + beta)·v eq alpha v + beta v \
    alpha(v + w) eq alpha v + alpha w\
    alpha(beta v) eq (alpha beta)v \
    1_KK · v = v
  $
]

#idea()[
  $
    KK #text()[cuerpo] <==> cases((K,+) #text()[abeliano], (K without {0}, dot) #text()[abeliano])
  $
]

== Subespacios Vectoriales

#definicion(
  title: [Subespacio],
)[

  Sea $U eq.not emptyset$ y $U subset V$. $U$ es un subespacio vectorial de $V$ si es un espacio vectorial con las operaciones de $V$:
  $
    forall u, u' in U, quad u+u' in U \
    forall lambda in KK, quad lambda u in U
  $
  o equivalentemente:
  $
    forall lambda , mu in KK, forall u, u' in U, quad lambda u + mu u' in U
  $
]

#observacion()[
  Trivialmente, si $U$ es un espacio o un subespacio vectorial, siempre se va a tener:
  $
    0 in U
  $
]

#observacion()[
  $
    KK "es "KK"-espacio vectorial" \
    KK^n "es "KK"-espacio vectorial" \
    RR^n "es "RR"-espacio vectorial" \
    KK' <= KK, KK "es "KK'"-espacio vectorial"
  $
]

#idea()[
  Si $V$ es espacio vectorial sobre $KK$ y $A$ es un conjunto:
  $
    V^A eq {f:A to V : f #text()[es aplicación]}
  $
]

#idea()[
  Por lo general, en lo que respecta a la notación:
  $
    lambda in KK, lambda #text()[escalar] \
    v in V, v #text()[vector] \
    0 #text()[vector cero o nulo]
  $
]

#ejemplo()[
  Para todo $lambda, mu in KK$:
  - ${0}$ es el subespacio trivial, pues se tiene:
  $
    lambda · 0 + mu · 0 in {0}
  $
  - $U eq {(x,y,z) in RR^3 : x = 0 }$ es subespacio porque:
  $
    (0,0,0) in U \
    lambda · (0,b,c) + mu · (0,b',c') eq \
    eq (0,lambda b, lambda c) + (0, mu b', mu c') eq (0,lambda b + mu b',lambda c + mu c')
  $
  - $U eq {(x,y) in RR^2 : x + y = 1}$ se tiene que $U eq.not emptyset$ pero como $0 + 0 eq.not 1 =>(0,0) in.not U$ no es un espacio vectorial.
]

#proposicion(title: [Propiedades])[

  Para todo $lambda in KK$ y $v in V$ se verifica:
  1. $
      lambda · 0 eq 0 eq 0 · v
    $
  2. $
      (-lambda)v eq lambda(-v) eq -(lambda v)
    $
  3. $
      lambda v eq 0 <==> lambda eq 0 or v eq 0
    $
]
#dem()[
  1. $
      lambda · 0 eq lambda (v-v) eq lambda v - lambda v = 0
    $
  2. $
      (-lambda)v eq lambda(-v) <=> (-lambda)v + lambda v eq lambda(-v) + lambda v <=> \
      <=> (- lambda + lambda)v eq lambda(-v + v) <=> 0 eq 0.
    $
  3. "$==>$"$quad$ Supongamos que $lambda eq.not 0$,
    $
      lambda v eq 0 => lambda^(-1) lambda v eq lambda^(-1) 0 => v eq 0
    $
    Por lo contrario, suponiendo que $lambda eq 0$, ya es trivial.

    "$<==$"$quad$ La demostración es trivial para ambos casos.
]

#observacion()[
  Sean ${U_i}_(i in I)$ una familia de subespacios de $V$, entonces
  $
    forall i in I, quad inter.big_(i in I)U_i quad #text()[es un subespacio]
  $
  pero
  $
    union.big_(i in I)U_i quad #text()[no tiene porque ser un subespacio]
  $
]


#definicion(title: [Subespacio generado])[

  Sea $S subset V$, se llama subespacio generado por $S$ o $chevron.l S chevron.r$ al menor subespacio de $V$ que contiene a $S$
  $
    chevron.l S chevron.r eq inter.big {U_i : U_i #text()[es subespacio de] V and S subset U_i}
  $
  Si $chevron.l S chevron.r eq U$, luego $S$ es el conjunto de generadores de $U$.

  Cuando $S eq emptyset$, $chevron.l S chevron.r eq {0}$
]

== Subespacios Generados y Combinaciones Lineales

Sean $V_1,V_2,...,V_n$ KK-espacios vectoriales, entonces $V_1 times V_2 times ... times V_n$ es un KK-espacio vectorial y puede operar de la siguiente manera:

Dados $(v_1,v_2,...,v_n),(v'_1,v'_2, ... ,v'_n) in V_1 times V_2 times ... times V_n$

$
  (v_1,v_2,...,v_n)+(v'_1,v'_2, ... ,v'_n) eq \
  eq (v_1 + v'_1,v_2 + v'_2, ... ,v_n + v'_n) in V_1 times V_2 times ... times V_n \
  lambda · (v_1,v_2,...,v_n) eq (lambda · v_1,lambda · v_2,...,lambda · v_n) in V_1 times V_2 times ... times V_n
$

#definicion(title: [Combinacion lineal])[

  Sea $S subset V$, $S eq.not emptyset$. Una combinación lineal de elementos de $S$ es un vector  de $V$ de la forma:
  $
    chevron.l S chevron.r eq {sum_(i=1)^n lambda_i · v_i : quad lambda_i in KK, quad v_i in S, quad forall i in {1,...,n}}
  $
  equivalentemente:
  $
    lambda_1 v_1 + lambda_2 v_2 + ... + lambda_n v_n : cases(lambda_i in KK, v_i in S, 1 <= i <= n)
  $
]

#definicion(title: [Finitamente generado])[

  Diremos que $V$ es un espacio vectorial finitamente generado si tienen un conjunto de generadores finito, es decir, $S subset V$ es finito y $chevron.l S chevron.r eq V$.
]

#observacion()[
  - Si $S,S' subset V$ y $S subset S' =>chevron.l S chevron.r subset chevron.l S' chevron.r$

  - Si $S, S' subset V$:
  $
    chevron.l S chevron.r eq chevron.l S' chevron.r <==> cases(
      chevron.l S chevron.r subset chevron.l S' chevron.r,
      quad quad and,
      chevron.l S' chevron.r subset chevron.l S chevron.r
    )
    => cases(
      S subset gen(S'),
      quad and,
      S' subset gen(S)
    )
  $
  Particularmente , si $S subset V$ y $v,w in V$, $w in S$, se verifica
  $
    gen(S) eq gen(S union {w}) <==> v in S
  $
  idem
  $
    gen(S) eq gen(S without {w}) <==> w in gen(S without {w})
  $
  generalmente, $0 in S$, así
  $
    gen(S) eq gen(S without {0}).
  $
  - Si $U, W <= V$, $quad W + U$ es el menor subespacio de $V$ que contiene a $U$ y $W$, por lo tanto
  $
    U + W = gen(U union W).
  $
  - Sin $U eq gen(S)$ y $W eq gen(T) <= V$, entonces
  $
    U + W eq gen(S union T).
  $
]

#definicion(title: [Suma directa])[

  Sean $U$ y $W$ subespacios de $V$. Llamamos suma directa de $U$ y $W$ a su subespacio suma si su intersección es ${0}$. Es decir
  $
    U inter W = {0} => U plus.o W quad (equiv U plus W)
  $
]

#definicion(title: [Suplementarios])[

  Se dice que $U$ y $W$ son suplementarios si
  $
    U plus.o W eq V
  $
  o para una familia arbitraria de ${U_i}_(i in I)$
  $
    plus.o.big_(i in I) U_i eq V <==> U_i inter [sum_(j eq.not i)U_j] eq 0
  $
]

#teorema(title: [Descomposición única])[

  Si existe $U plus.o W$, todo vector de $U + W$ se puede escribir de forma única como $u+w$ con $u in U$ y $w in W$

]

#dem[
  Sean $u,u' in U$ y $w,w' in W$ tales que $exists U plus.o W$, luego
  $
    u + w eq u' + w' => u - u'(in U) eq w - w' (in W) => \
    cases(reverse: #true, => u -u' eq w - w' in U inter W, quad quad quad quad quad quad quad W inter U = 0) => \
    => cases(u-u'=0, w-w'=0) => u - u' + w - w' = 0 => u + w = 0 => \
    => u=0=w=u'=w'
  $
]

