! Spherical to cartesian transformation matrix obtained with
! Horton (http://theochem.github.com/horton/, 2015)

! First index is the index of the carteisan AO, obtained by ao_power_index
! Second index is the index of the spherical AO

BEGIN_PROVIDER [ double precision, cart_to_sphe_0, (1,1) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=0
  END_DOC
  cart_to_sphe_0 = 0.d0

  cart_to_sphe_0 ( 1, 1) = 1.0d0
END_PROVIDER


BEGIN_PROVIDER [ double precision, cart_to_sphe_1, (3,3) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=1
  END_DOC
  cart_to_sphe_1 = 0.d0

  cart_to_sphe_1 ( 3, 1) = 1.0d0
  cart_to_sphe_1 ( 1, 2) = 1.0d0
  cart_to_sphe_1 ( 2, 3) = 1.0d0
END_PROVIDER


BEGIN_PROVIDER [ double precision, cart_to_sphe_2, (6,5) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=2
  END_DOC
  cart_to_sphe_2 = 0.d0

  cart_to_sphe_2 ( 1, 1) = -0.5d0
  cart_to_sphe_2 ( 4, 1) = -0.5d0
  cart_to_sphe_2 ( 6, 1) = 1.0d0
  cart_to_sphe_2 ( 3, 2) = 1.0d0
  cart_to_sphe_2 ( 5, 3) = 1.0d0
  cart_to_sphe_2 ( 1, 4) = 0.86602540378443864676d0
  cart_to_sphe_2 ( 4, 4) = -0.86602540378443864676d0
  cart_to_sphe_2 ( 2, 5) = 1.0d0
END_PROVIDER


BEGIN_PROVIDER [ double precision, cart_to_sphe_3, (10,7) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=3
  END_DOC
  cart_to_sphe_3 = 0.d0

  cart_to_sphe_3 ( 3, 1) = -0.67082039324993690892d0
  cart_to_sphe_3 ( 8, 1) = -0.67082039324993690892d0
  cart_to_sphe_3 (10, 1) = 1.0d0
  cart_to_sphe_3 ( 1, 2) = -0.61237243569579452455d0
  cart_to_sphe_3 ( 4, 2) = -0.27386127875258305673d0
  cart_to_sphe_3 ( 6, 2) = 1.0954451150103322269d0
  cart_to_sphe_3 ( 2, 3) = -0.27386127875258305673d0
  cart_to_sphe_3 ( 7, 3) = -0.61237243569579452455d0
  cart_to_sphe_3 ( 9, 3) = 1.0954451150103322269d0
  cart_to_sphe_3 ( 3, 4) = 0.86602540378443864676d0
  cart_to_sphe_3 ( 8, 4) = -0.86602540378443864676d0
  cart_to_sphe_3 ( 5, 5) = 1.0d0
  cart_to_sphe_3 ( 1, 6) = 0.790569415042094833d0
  cart_to_sphe_3 ( 4, 6) = -1.0606601717798212866d0
  cart_to_sphe_3 ( 2, 7) = 1.0606601717798212866d0
  cart_to_sphe_3 ( 7, 7) = -0.790569415042094833d0
END_PROVIDER


BEGIN_PROVIDER [ double precision, cart_to_sphe_4, (15,9) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=4
  END_DOC
  cart_to_sphe_4 = 0.d0

  cart_to_sphe_4 ( 1, 1) = 0.375d0
  cart_to_sphe_4 ( 4, 1) = 0.21957751641341996535d0
  cart_to_sphe_4 ( 6, 1) = -0.87831006565367986142d0
  cart_to_sphe_4 (11, 1) = 0.375d0
  cart_to_sphe_4 (13, 1) = -0.87831006565367986142d0
  cart_to_sphe_4 (15, 1) = 1.0d0
  cart_to_sphe_4 ( 3, 2) = -0.89642145700079522998d0
  cart_to_sphe_4 ( 8, 2) = -0.40089186286863657703d0
  cart_to_sphe_4 (10, 2) = 1.19522860933439364d0
  cart_to_sphe_4 ( 5, 3) = -0.40089186286863657703d0
  cart_to_sphe_4 (12, 3) = -0.89642145700079522998d0
  cart_to_sphe_4 (14, 3) = 1.19522860933439364d0
  cart_to_sphe_4 ( 1, 4) = -0.5590169943749474241d0
  cart_to_sphe_4 ( 6, 4) = 0.9819805060619657157d0
  cart_to_sphe_4 (11, 4) = 0.5590169943749474241d0
  cart_to_sphe_4 (13, 4) = -0.9819805060619657157d0
  cart_to_sphe_4 ( 2, 5) = -0.42257712736425828875d0
  cart_to_sphe_4 ( 7, 5) = -0.42257712736425828875d0
  cart_to_sphe_4 ( 9, 5) = 1.1338934190276816816d0
  cart_to_sphe_4 ( 3, 6) = 0.790569415042094833d0
  cart_to_sphe_4 ( 8, 6) = -1.0606601717798212866d0
  cart_to_sphe_4 ( 5, 7) = 1.0606601717798212866d0
  cart_to_sphe_4 (12, 7) = -0.790569415042094833d0
  cart_to_sphe_4 ( 1, 8) = 0.73950997288745200532d0
  cart_to_sphe_4 ( 4, 8) = -1.2990381056766579701d0
  cart_to_sphe_4 (11, 8) = 0.73950997288745200532d0
  cart_to_sphe_4 ( 2, 9) = 1.1180339887498948482d0
  cart_to_sphe_4 ( 7, 9) = -1.1180339887498948482d0
END_PROVIDER


BEGIN_PROVIDER [ double precision, cart_to_sphe_5, (21,11) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=5
  END_DOC
  cart_to_sphe_5 = 0.d0

  cart_to_sphe_5 ( 3, 1) = 0.625d0
  cart_to_sphe_5 ( 8, 1) = 0.36596252735569994226d0
  cart_to_sphe_5 (10, 1) = -1.0910894511799619063d0
  cart_to_sphe_5 (17, 1) = 0.625d0
  cart_to_sphe_5 (19, 1) = -1.0910894511799619063d0
  cart_to_sphe_5 (21, 1) = 1.0d0
  cart_to_sphe_5 ( 1, 2) = 0.48412291827592711065d0
  cart_to_sphe_5 ( 4, 2) = 0.21128856368212914438d0
  cart_to_sphe_5 ( 6, 2) = -1.2677313820927748663d0
  cart_to_sphe_5 (11, 2) = 0.16137430609197570355d0
  cart_to_sphe_5 (13, 2) = -0.56694670951384084082d0
  cart_to_sphe_5 (15, 2) = 1.2909944487358056284d0
  cart_to_sphe_5 ( 2, 3) = 0.16137430609197570355d0
  cart_to_sphe_5 ( 7, 3) = 0.21128856368212914438d0
  cart_to_sphe_5 ( 9, 3) = -0.56694670951384084082d0
  cart_to_sphe_5 (16, 3) = 0.48412291827592711065d0
  cart_to_sphe_5 (18, 3) = -1.2677313820927748663d0
  cart_to_sphe_5 (20, 3) = 1.2909944487358056284d0
  cart_to_sphe_5 ( 3, 4) = -0.85391256382996653194d0
  cart_to_sphe_5 (10, 4) = 1.1180339887498948482d0
  cart_to_sphe_5 (17, 4) = 0.85391256382996653194d0
  cart_to_sphe_5 (19, 4) = -1.1180339887498948482d0
  cart_to_sphe_5 ( 5, 5) = -0.6454972243679028142d0
  cart_to_sphe_5 (12, 5) = -0.6454972243679028142d0
  cart_to_sphe_5 (14, 5) = 1.2909944487358056284d0
  cart_to_sphe_5 ( 1, 6) = -0.52291251658379721749d0
  cart_to_sphe_5 ( 4, 6) = 0.22821773229381921394d0
  cart_to_sphe_5 ( 6, 6) = 0.91287092917527685576d0
  cart_to_sphe_5 (11, 6) = 0.52291251658379721749d0
  cart_to_sphe_5 (13, 6) = -1.2247448713915890491d0
  cart_to_sphe_5 ( 2, 7) = -0.52291251658379721749d0
  cart_to_sphe_5 ( 7, 7) = -0.22821773229381921394d0
  cart_to_sphe_5 ( 9, 7) = 1.2247448713915890491d0
  cart_to_sphe_5 (16, 7) = 0.52291251658379721749d0
  cart_to_sphe_5 (18, 7) = -0.91287092917527685576d0
  cart_to_sphe_5 ( 3, 8) = 0.73950997288745200532d0
  cart_to_sphe_5 ( 8, 8) = -1.2990381056766579701d0
  cart_to_sphe_5 (17, 8) = 0.73950997288745200532d0
  cart_to_sphe_5 ( 5, 9) = 1.1180339887498948482d0
  cart_to_sphe_5 (12, 9) = -1.1180339887498948482d0
  cart_to_sphe_5 ( 1,10) = 0.7015607600201140098d0
  cart_to_sphe_5 ( 4,10) = -1.5309310892394863114d0
  cart_to_sphe_5 (11,10) = 1.169267933366856683d0
  cart_to_sphe_5 ( 2,11) = 1.169267933366856683d0
  cart_to_sphe_5 ( 7,11) = -1.5309310892394863114d0
  cart_to_sphe_5 (16,11) = 0.7015607600201140098d0
END_PROVIDER


BEGIN_PROVIDER [ double precision, cart_to_sphe_6, (28,13) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=6
  END_DOC
  cart_to_sphe_6 = 0.d0

  cart_to_sphe_6 ( 1, 1) = -0.3125d0
  cart_to_sphe_6 ( 4, 1) = -0.16319780245846672329d0
  cart_to_sphe_6 ( 6, 1) = 0.97918681475080033975d0
  cart_to_sphe_6 (11, 1) = -0.16319780245846672329d0
  cart_to_sphe_6 (13, 1) = 0.57335309036732873772d0
  cart_to_sphe_6 (15, 1) = -1.3055824196677337863d0
  cart_to_sphe_6 (22, 1) = -0.3125d0
  cart_to_sphe_6 (24, 1) = 0.97918681475080033975d0
  cart_to_sphe_6 (26, 1) = -1.3055824196677337863d0
  cart_to_sphe_6 (28, 1) = 1.0d0
  cart_to_sphe_6 ( 3, 2) = 0.86356159963469679725d0
  cart_to_sphe_6 ( 8, 2) = 0.37688918072220452831d0
  cart_to_sphe_6 (10, 2) = -1.6854996561581052156d0
  cart_to_sphe_6 (17, 2) = 0.28785386654489893242d0
  cart_to_sphe_6 (19, 2) = -0.75377836144440905662d0
  cart_to_sphe_6 (21, 2) = 1.3816985594155148756d0
  cart_to_sphe_6 ( 5, 3) = 0.28785386654489893242d0
  cart_to_sphe_6 (12, 3) = 0.37688918072220452831d0
  cart_to_sphe_6 (14, 3) = -0.75377836144440905662d0
  cart_to_sphe_6 (23, 3) = 0.86356159963469679725d0
  cart_to_sphe_6 (25, 3) = -1.6854996561581052156d0
  cart_to_sphe_6 (27, 3) = 1.3816985594155148756d0
  cart_to_sphe_6 ( 1, 4) = 0.45285552331841995543d0
  cart_to_sphe_6 ( 4, 4) = 0.078832027985861408788d0
  cart_to_sphe_6 ( 6, 4) = -1.2613124477737825406d0
  cart_to_sphe_6 (11, 4) = -0.078832027985861408788d0
  cart_to_sphe_6 (15, 4) = 1.2613124477737825406d0
  cart_to_sphe_6 (22, 4) = -0.45285552331841995543d0
  cart_to_sphe_6 (24, 4) = 1.2613124477737825406d0
  cart_to_sphe_6 (26, 4) = -1.2613124477737825406d0
  cart_to_sphe_6 ( 2, 5) = 0.27308215547040717681d0
  cart_to_sphe_6 ( 7, 5) = 0.26650089544451304287d0
  cart_to_sphe_6 ( 9, 5) = -0.95346258924559231545d0
  cart_to_sphe_6 (16, 5) = 0.27308215547040717681d0
  cart_to_sphe_6 (18, 5) = -0.95346258924559231545d0
  cart_to_sphe_6 (20, 5) = 1.4564381625088382763d0
  cart_to_sphe_6 ( 3, 6) = -0.81924646641122153043d0
  cart_to_sphe_6 ( 8, 6) = 0.35754847096709711829d0
  cart_to_sphe_6 (10, 6) = 1.0660035817780521715d0
  cart_to_sphe_6 (17, 6) = 0.81924646641122153043d0
  cart_to_sphe_6 (19, 6) = -1.4301938838683884732d0
  cart_to_sphe_6 ( 5, 7) = -0.81924646641122153043d0
  cart_to_sphe_6 (12, 7) = -0.35754847096709711829d0
  cart_to_sphe_6 (14, 7) = 1.4301938838683884732d0
  cart_to_sphe_6 (23, 7) = 0.81924646641122153043d0
  cart_to_sphe_6 (25, 7) = -1.0660035817780521715d0
  cart_to_sphe_6 ( 1, 8) = -0.49607837082461073572d0
  cart_to_sphe_6 ( 4, 8) = 0.43178079981734839863d0
  cart_to_sphe_6 ( 6, 8) = 0.86356159963469679725d0
  cart_to_sphe_6 (11, 8) = 0.43178079981734839863d0
  cart_to_sphe_6 (13, 8) = -1.5169496905422946941d0
  cart_to_sphe_6 (22, 8) = -0.49607837082461073572d0
  cart_to_sphe_6 (24, 8) = 0.86356159963469679725d0
  cart_to_sphe_6 ( 2, 9) = -0.59829302641309923139d0
  cart_to_sphe_6 ( 9, 9) = 1.3055824196677337863d0
  cart_to_sphe_6 (16, 9) = 0.59829302641309923139d0
  cart_to_sphe_6 (18, 9) = -1.3055824196677337863d0
  cart_to_sphe_6 ( 3,10) = 0.7015607600201140098d0
  cart_to_sphe_6 ( 8,10) = -1.5309310892394863114d0
  cart_to_sphe_6 (17,10) = 1.169267933366856683d0
  cart_to_sphe_6 ( 5,11) = 1.169267933366856683d0
  cart_to_sphe_6 (12,11) = -1.5309310892394863114d0
  cart_to_sphe_6 (23,11) = 0.7015607600201140098d0
  cart_to_sphe_6 ( 1,12) = 0.67169328938139615748d0
  cart_to_sphe_6 ( 4,12) = -1.7539019000502850245d0
  cart_to_sphe_6 (11,12) = 1.7539019000502850245d0
  cart_to_sphe_6 (22,12) = -0.67169328938139615748d0
  cart_to_sphe_6 ( 2,13) = 1.2151388809514737933d0
  cart_to_sphe_6 ( 7,13) = -1.9764235376052370825d0
  cart_to_sphe_6 (16,13) = 1.2151388809514737933d0
END_PROVIDER


BEGIN_PROVIDER [ double precision, cart_to_sphe_7, (36,15) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=7
  END_DOC
  cart_to_sphe_7 = 0.d0

  cart_to_sphe_7 ( 3, 1) = -0.60670333962134435221d0
  cart_to_sphe_7 ( 8, 1) = -0.31684048566533184861d0
  cart_to_sphe_7 (10, 1) = 1.4169537279434593918d0
  cart_to_sphe_7 (17, 1) = -0.31684048566533184861d0
  cart_to_sphe_7 (19, 1) = 0.82968314787883083417d0
  cart_to_sphe_7 (21, 1) = -1.5208343311935928733d0
  cart_to_sphe_7 (30, 1) = -0.60670333962134435221d0
  cart_to_sphe_7 (32, 1) = 1.4169537279434593918d0
  cart_to_sphe_7 (34, 1) = -1.5208343311935928733d0
  cart_to_sphe_7 (36, 1) = 1.0d0
  cart_to_sphe_7 ( 1, 2) = -0.41339864235384227977d0
  cart_to_sphe_7 ( 4, 2) = -0.17963167078872714852d0
  cart_to_sphe_7 ( 6, 2) = 1.4370533663098171882d0
  cart_to_sphe_7 (11, 2) = -0.1338895422651523892d0
  cart_to_sphe_7 (13, 2) = 0.62718150750531807803d0
  cart_to_sphe_7 (15, 2) = -2.1422326762424382273d0
  cart_to_sphe_7 (22, 2) = -0.1146561540164598136d0
  cart_to_sphe_7 (24, 2) = 0.47901778876993906273d0
  cart_to_sphe_7 (26, 2) = -0.95803557753987812546d0
  cart_to_sphe_7 (28, 2) = 1.4675987714106856141d0
  cart_to_sphe_7 ( 2, 3) = -0.1146561540164598136d0
  cart_to_sphe_7 ( 7, 3) = -0.1338895422651523892d0
  cart_to_sphe_7 ( 9, 3) = 0.47901778876993906273d0
  cart_to_sphe_7 (16, 3) = -0.17963167078872714852d0
  cart_to_sphe_7 (18, 3) = 0.62718150750531807803d0
  cart_to_sphe_7 (20, 3) = -0.95803557753987812546d0
  cart_to_sphe_7 (29, 3) = -0.41339864235384227977d0
  cart_to_sphe_7 (31, 3) = 1.4370533663098171882d0
  cart_to_sphe_7 (33, 3) = -2.1422326762424382273d0
  cart_to_sphe_7 (35, 3) = 1.4675987714106856141d0
  cart_to_sphe_7 ( 3, 4) = 0.84254721963085980365d0
  cart_to_sphe_7 ( 8, 4) = 0.14666864502533059662d0
  cart_to_sphe_7 (10, 4) = -1.7491256557036030854d0
  cart_to_sphe_7 (17, 4) = -0.14666864502533059662d0
  cart_to_sphe_7 (21, 4) = 1.4080189922431737275d0
  cart_to_sphe_7 (30, 4) = -0.84254721963085980365d0
  cart_to_sphe_7 (32, 4) = 1.7491256557036030854d0
  cart_to_sphe_7 (34, 4) = -1.4080189922431737275d0
  cart_to_sphe_7 ( 5, 5) = 0.50807509012231371428d0
  cart_to_sphe_7 (12, 5) = 0.49583051751369852316d0
  cart_to_sphe_7 (14, 5) = -1.3222147133698627284d0
  cart_to_sphe_7 (23, 5) = 0.50807509012231371428d0
  cart_to_sphe_7 (25, 5) = -1.3222147133698627284d0
  cart_to_sphe_7 (27, 5) = 1.6258402883914038857d0
  cart_to_sphe_7 ( 1, 6) = 0.42961647140211000062d0
  cart_to_sphe_7 ( 4, 6) = -0.062226236090912312563d0
  cart_to_sphe_7 ( 6, 6) = -1.2445247218182462513d0
  cart_to_sphe_7 (11, 6) = -0.23190348980538452414d0
  cart_to_sphe_7 (13, 6) = 0.54315511828342602619d0
  cart_to_sphe_7 (15, 6) = 1.2368186122953841287d0
  cart_to_sphe_7 (22, 6) = -0.35746251148251142922d0
  cart_to_sphe_7 (24, 6) = 1.2445247218182462513d0
  cart_to_sphe_7 (26, 6) = -1.6593662957576616683d0
  cart_to_sphe_7 ( 2, 7) = 0.35746251148251142922d0
  cart_to_sphe_7 ( 7, 7) = 0.23190348980538452414d0
  cart_to_sphe_7 ( 9, 7) = -1.2445247218182462513d0
  cart_to_sphe_7 (16, 7) = 0.062226236090912312563d0
  cart_to_sphe_7 (18, 7) = -0.54315511828342602619d0
  cart_to_sphe_7 (20, 7) = 1.6593662957576616683d0
  cart_to_sphe_7 (29, 7) = -0.42961647140211000062d0
  cart_to_sphe_7 (31, 7) = 1.2445247218182462513d0
  cart_to_sphe_7 (33, 7) = -1.2368186122953841287d0
  cart_to_sphe_7 ( 3, 8) = -0.79037935147039945351d0
  cart_to_sphe_7 ( 8, 8) = 0.6879369240987588816d0
  cart_to_sphe_7 (10, 8) = 1.025515817677958738d0
  cart_to_sphe_7 (17, 8) = 0.6879369240987588816d0
  cart_to_sphe_7 (19, 8) = -1.8014417303072302517d0
  cart_to_sphe_7 (30, 8) = -0.79037935147039945351d0
  cart_to_sphe_7 (32, 8) = 1.025515817677958738d0
  cart_to_sphe_7 ( 5, 9) = -0.95323336395336381126d0
  cart_to_sphe_7 (14, 9) = 1.5504341823651057024d0
  cart_to_sphe_7 (23, 9) = 0.95323336395336381126d0
  cart_to_sphe_7 (25, 9) = -1.5504341823651057024d0
  cart_to_sphe_7 ( 1,10) = -0.47495887979908323849d0
  cart_to_sphe_7 ( 4,10) = 0.61914323168888299344d0
  cart_to_sphe_7 ( 6,10) = 0.82552430891851065792d0
  cart_to_sphe_7 (11,10) = 0.25637895441948968451d0
  cart_to_sphe_7 (13,10) = -1.8014417303072302517d0
  cart_to_sphe_7 (22,10) = -0.65864945955866621126d0
  cart_to_sphe_7 (24,10) = 1.3758738481975177632d0
  cart_to_sphe_7 ( 2,11) = -0.65864945955866621126d0
  cart_to_sphe_7 ( 7,11) = 0.25637895441948968451d0
  cart_to_sphe_7 ( 9,11) = 1.3758738481975177632d0
  cart_to_sphe_7 (16,11) = 0.61914323168888299344d0
  cart_to_sphe_7 (18,11) = -1.8014417303072302517d0
  cart_to_sphe_7 (29,11) = -0.47495887979908323849d0
  cart_to_sphe_7 (31,11) = 0.82552430891851065792d0
  cart_to_sphe_7 ( 3,12) = 0.67169328938139615748d0
  cart_to_sphe_7 ( 8,12) = -1.7539019000502850245d0
  cart_to_sphe_7 (17,12) = 1.7539019000502850245d0
  cart_to_sphe_7 (30,12) = -0.67169328938139615748d0
  cart_to_sphe_7 ( 5,13) = 1.2151388809514737933d0
  cart_to_sphe_7 (12,13) = -1.9764235376052370825d0
  cart_to_sphe_7 (23,13) = 1.2151388809514737933d0
  cart_to_sphe_7 ( 1,14) = 0.64725984928774934788d0
  cart_to_sphe_7 ( 4,14) = -1.96875d0
  cart_to_sphe_7 (11,14) = 2.4456993503903949804d0
  cart_to_sphe_7 (22,14) = -1.2566230789301937693d0
  cart_to_sphe_7 ( 2,15) = 1.2566230789301937693d0
  cart_to_sphe_7 ( 7,15) = -2.4456993503903949804d0
  cart_to_sphe_7 (16,15) = 1.96875d0
  cart_to_sphe_7 (29,15) = -0.64725984928774934788d0
END_PROVIDER


BEGIN_PROVIDER [ double precision, cart_to_sphe_8, (45,17) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=8
  END_DOC
  cart_to_sphe_8 = 0.d0

  cart_to_sphe_8 ( 1, 1) = 0.2734375d0
  cart_to_sphe_8 ( 4, 1) = 0.13566299095694674896d0
  cart_to_sphe_8 ( 6, 1) = -1.0853039276555739917d0
  cart_to_sphe_8 (11, 1) = 0.12099545906566282998d0
  cart_to_sphe_8 (13, 1) = -0.56678149117738375672d0
  cart_to_sphe_8 (15, 1) = 1.9359273450506052797d0
  cart_to_sphe_8 (22, 1) = 0.13566299095694674896d0
  cart_to_sphe_8 (24, 1) = -0.56678149117738375672d0
  cart_to_sphe_8 (26, 1) = 1.1335629823547675134d0
  cart_to_sphe_8 (28, 1) = -1.7364862842489183867d0
  cart_to_sphe_8 (37, 1) = 0.2734375d0
  cart_to_sphe_8 (39, 1) = -1.0853039276555739917d0
  cart_to_sphe_8 (41, 1) = 1.9359273450506052797d0
  cart_to_sphe_8 (43, 1) = -1.7364862842489183867d0
  cart_to_sphe_8 (45, 1) = 1.0d0
  cart_to_sphe_8 ( 3, 2) = -0.84721510698287244363d0
  cart_to_sphe_8 ( 8, 2) = -0.36813537731583001376d0
  cart_to_sphe_8 (10, 2) = 2.1951352762686132731d0
  cart_to_sphe_8 (17, 2) = -0.27439190953357665914d0
  cart_to_sphe_8 (19, 2) = 0.95803557753987812546d0
  cart_to_sphe_8 (21, 2) = -2.6341623315223359277d0
  cart_to_sphe_8 (30, 2) = -0.23497519304418891392d0
  cart_to_sphe_8 (32, 2) = 0.73171175875620442437d0
  cart_to_sphe_8 (34, 2) = -1.178033207410656044d0
  cart_to_sphe_8 (36, 2) = 1.5491933384829667541d0
  cart_to_sphe_8 ( 5, 3) = -0.23497519304418891392d0
  cart_to_sphe_8 (12, 3) = -0.27439190953357665914d0
  cart_to_sphe_8 (14, 3) = 0.73171175875620442437d0
  cart_to_sphe_8 (23, 3) = -0.36813537731583001376d0
  cart_to_sphe_8 (25, 3) = 0.95803557753987812546d0
  cart_to_sphe_8 (27, 3) = -1.178033207410656044d0
  cart_to_sphe_8 (38, 3) = -0.84721510698287244363d0
  cart_to_sphe_8 (40, 3) = 2.1951352762686132731d0
  cart_to_sphe_8 (42, 3) = -2.6341623315223359277d0
  cart_to_sphe_8 (44, 3) = 1.5491933384829667541d0
  cart_to_sphe_8 ( 1, 4) = -0.39218438743784791311d0
  cart_to_sphe_8 ( 4, 4) = -0.0972889728117695298d0
  cart_to_sphe_8 ( 6, 4) = 1.459334592176542947d0
  cart_to_sphe_8 (13, 4) = 0.25403754506115685714d0
  cart_to_sphe_8 (15, 4) = -2.3138757483972597747d0
  cart_to_sphe_8 (22, 4) = 0.0972889728117695298d0
  cart_to_sphe_8 (24, 4) = -0.25403754506115685714d0
  cart_to_sphe_8 (28, 4) = 1.5566235649883124768d0
  cart_to_sphe_8 (37, 4) = 0.39218438743784791311d0
  cart_to_sphe_8 (39, 4) = -1.459334592176542947d0
  cart_to_sphe_8 (41, 4) = 2.3138757483972597747d0
  cart_to_sphe_8 (43, 4) = -1.5566235649883124768d0
  cart_to_sphe_8 ( 2, 5) = -0.20252314682524563222d0
  cart_to_sphe_8 ( 7, 5) = -0.1967766362666553471d0
  cart_to_sphe_8 ( 9, 5) = 0.8800118701519835797d0
  cart_to_sphe_8 (16, 5) = -0.1967766362666553471d0
  cart_to_sphe_8 (18, 5) = 0.85880364827689588344d0
  cart_to_sphe_8 (20, 5) = -1.7491256557036030854d0
  cart_to_sphe_8 (29, 5) = -0.20252314682524563222d0
  cart_to_sphe_8 (31, 5) = 0.8800118701519835797d0
  cart_to_sphe_8 (33, 5) = -1.7491256557036030854d0
  cart_to_sphe_8 (35, 5) = 1.7974340685458342478d0
  cart_to_sphe_8 ( 3, 6) = 0.82265291131801144316d0
  cart_to_sphe_8 ( 8, 6) = -0.11915417049417047641d0
  cart_to_sphe_8 (10, 6) = -1.7762455001837659611d0
  cart_to_sphe_8 (17, 6) = -0.44406137504594149028d0
  cart_to_sphe_8 (19, 6) = 0.77521709118255285119d0
  cart_to_sphe_8 (21, 6) = 1.4209964001470127689d0
  cart_to_sphe_8 (30, 6) = -0.68448859700003543819d0
  cart_to_sphe_8 (32, 6) = 1.7762455001837659611d0
  cart_to_sphe_8 (34, 6) = -1.9064667279067276225d0
  cart_to_sphe_8 ( 5, 7) = 0.68448859700003543819d0
  cart_to_sphe_8 (12, 7) = 0.44406137504594149028d0
  cart_to_sphe_8 (14, 7) = -1.7762455001837659611d0
  cart_to_sphe_8 (23, 7) = 0.11915417049417047641d0
  cart_to_sphe_8 (25, 7) = -0.77521709118255285119d0
  cart_to_sphe_8 (27, 7) = 1.9064667279067276225d0
  cart_to_sphe_8 (38, 7) = -0.82265291131801144316d0
  cart_to_sphe_8 (40, 7) = 1.7762455001837659611d0
  cart_to_sphe_8 (42, 7) = -1.4209964001470127689d0
  cart_to_sphe_8 ( 1, 8) = 0.41132645565900572158d0
  cart_to_sphe_8 ( 4, 8) = -0.20407507102873838124d0
  cart_to_sphe_8 ( 6, 8) = -1.2244504261724302874d0
  cart_to_sphe_8 (11, 8) = -0.3033516698106721761d0
  cart_to_sphe_8 (13, 8) = 1.0657473001102595767d0
  cart_to_sphe_8 (15, 8) = 1.2134066792426887044d0
  cart_to_sphe_8 (22, 8) = -0.20407507102873838124d0
  cart_to_sphe_8 (24, 8) = 1.0657473001102595767d0
  cart_to_sphe_8 (26, 8) = -2.1314946002205191534d0
  cart_to_sphe_8 (37, 8) = 0.41132645565900572158d0
  cart_to_sphe_8 (39, 8) = -1.2244504261724302874d0
  cart_to_sphe_8 (41, 8) = 1.2134066792426887044d0
  cart_to_sphe_8 ( 2, 9) = 0.42481613669916071115d0
  cart_to_sphe_8 ( 7, 9) = 0.13758738481975177632d0
  cart_to_sphe_8 ( 9, 9) = -1.4767427774562605828d0
  cart_to_sphe_8 (16, 9) = -0.13758738481975177632d0
  cart_to_sphe_8 (20, 9) = 1.8344984642633570176d0
  cart_to_sphe_8 (29, 9) = -0.42481613669916071115d0
  cart_to_sphe_8 (31, 9) = 1.4767427774562605828d0
  cart_to_sphe_8 (33, 9) = -1.8344984642633570176d0
  cart_to_sphe_8 ( 3,10) = -0.76584818175667166625d0
  cart_to_sphe_8 ( 8,10) = 0.99833846339806020718d0
  cart_to_sphe_8 (10,10) = 0.99215674164922147144d0
  cart_to_sphe_8 (17,10) = 0.41339864235384227977d0
  cart_to_sphe_8 (19,10) = -2.1650635094610966169d0
  cart_to_sphe_8 (30,10) = -1.0620403417479017779d0
  cart_to_sphe_8 (32,10) = 1.6535945694153691191d0
  cart_to_sphe_8 ( 5,11) = -1.0620403417479017779d0
  cart_to_sphe_8 (12,11) = 0.41339864235384227977d0
  cart_to_sphe_8 (14,11) = 1.6535945694153691191d0
  cart_to_sphe_8 (23,11) = 0.99833846339806020718d0
  cart_to_sphe_8 (25,11) = -2.1650635094610966169d0
  cart_to_sphe_8 (38,11) = -0.76584818175667166625d0
  cart_to_sphe_8 (40,11) = 0.99215674164922147144d0
  cart_to_sphe_8 ( 1,12) = -0.45768182862115030664d0
  cart_to_sphe_8 ( 4,12) = 0.79475821795059156217d0
  cart_to_sphe_8 ( 6,12) = 0.79475821795059156217d0
  cart_to_sphe_8 (13,12) = -2.0752447144854989366d0
  cart_to_sphe_8 (22,12) = -0.79475821795059156217d0
  cart_to_sphe_8 (24,12) = 2.0752447144854989366d0
  cart_to_sphe_8 (37,12) = 0.45768182862115030664d0
  cart_to_sphe_8 (39,12) = -0.79475821795059156217d0
  cart_to_sphe_8 ( 2,13) = -0.70903764004458888811d0
  cart_to_sphe_8 ( 7,13) = 0.53582588123382020898d0
  cart_to_sphe_8 ( 9,13) = 1.4377717134510610478d0
  cart_to_sphe_8 (16,13) = 0.53582588123382020898d0
  cart_to_sphe_8 (18,13) = -2.338535866733713366d0
  cart_to_sphe_8 (29,13) = -0.70903764004458888811d0
  cart_to_sphe_8 (31,13) = 1.4377717134510610478d0
  cart_to_sphe_8 ( 3,14) = 0.64725984928774934788d0
  cart_to_sphe_8 ( 8,14) = -1.96875d0
  cart_to_sphe_8 (17,14) = 2.4456993503903949804d0
  cart_to_sphe_8 (30,14) = -1.2566230789301937693d0
  cart_to_sphe_8 ( 5,15) = 1.2566230789301937693d0
  cart_to_sphe_8 (12,15) = -2.4456993503903949804d0
  cart_to_sphe_8 (23,15) = 1.96875d0
  cart_to_sphe_8 (38,15) = -0.64725984928774934788d0
  cart_to_sphe_8 ( 1,16) = 0.626706654240043952d0
  cart_to_sphe_8 ( 4,16) = -2.176535018670731151d0
  cart_to_sphe_8 (11,16) = 3.2353561313826025233d0
  cart_to_sphe_8 (22,16) = -2.176535018670731151d0
  cart_to_sphe_8 (37,16) = 0.626706654240043952d0
  cart_to_sphe_8 ( 2,17) = 1.2945196985754986958d0
  cart_to_sphe_8 ( 7,17) = -2.9348392204684739765d0
  cart_to_sphe_8 (16,17) = 2.9348392204684739765d0
  cart_to_sphe_8 (29,17) = -1.2945196985754986958d0
END_PROVIDER


BEGIN_PROVIDER [ double precision, cart_to_sphe_9, (55,19) ]
  implicit none
  BEGIN_DOC
! Spherical -> Cartesian Transformation matrix for l=9
  END_DOC
  cart_to_sphe_9 = 0.d0

  cart_to_sphe_9 ( 3, 1) = 0.59686501473785067702d0
  cart_to_sphe_9 ( 8, 1) = 0.29612797475437320937d0
  cart_to_sphe_9 (10, 1) = -1.7657660842403202261d0
  cart_to_sphe_9 (17, 1) = 0.26411138361943717788d0
  cart_to_sphe_9 (19, 1) = -0.92214126273187869253d0
  cart_to_sphe_9 (21, 1) = 2.5354692827465969076d0
  cart_to_sphe_9 (30, 1) = 0.29612797475437320937d0
  cart_to_sphe_9 (32, 1) = -0.92214126273187869253d0
  cart_to_sphe_9 (34, 1) = 1.4846187947947014119d0
  cart_to_sphe_9 (36, 1) = -1.952374120367905548d0
  cart_to_sphe_9 (47, 1) = 0.59686501473785067702d0
  cart_to_sphe_9 (49, 1) = -1.7657660842403202261d0
  cart_to_sphe_9 (51, 1) = 2.5354692827465969076d0
  cart_to_sphe_9 (53, 1) = -1.952374120367905548d0
  cart_to_sphe_9 (55, 1) = 1.0d0
  cart_to_sphe_9 ( 1, 2) = 0.36685490255855924707d0
  cart_to_sphe_9 ( 4, 2) = 0.15916400393009351387d0
  cart_to_sphe_9 ( 6, 2) = -1.5916400393009351387d0
  cart_to_sphe_9 (11, 2) = 0.11811420148091719529d0
  cart_to_sphe_9 (13, 2) = -0.6916059470489090194d0
  cart_to_sphe_9 (15, 2) = 3.1497120394911252077d0
  cart_to_sphe_9 (22, 2) = 0.098709324918124403125d0
  cart_to_sphe_9 (24, 2) = -0.51549263708149354579d0
  cart_to_sphe_9 (26, 2) = 1.3746470322173161221d0
  cart_to_sphe_9 (28, 2) = -3.1586983973799809d0
  cart_to_sphe_9 (37, 2) = 0.088975383089683195547d0
  cart_to_sphe_9 (39, 2) = -0.44144152106008005653d0
  cart_to_sphe_9 (41, 2) = 1.0499040131637084026d0
  cart_to_sphe_9 (43, 2) = -1.4126128673922561809d0
  cart_to_sphe_9 (45, 2) = 1.62697843363992129d0
  cart_to_sphe_9 ( 2, 3) = 0.088975383089683195547d0
  cart_to_sphe_9 ( 7, 3) = 0.098709324918124403125d0
  cart_to_sphe_9 ( 9, 3) = -0.44144152106008005653d0
  cart_to_sphe_9 (16, 3) = 0.11811420148091719529d0
  cart_to_sphe_9 (18, 3) = -0.51549263708149354579d0
  cart_to_sphe_9 (20, 3) = 1.0499040131637084026d0
  cart_to_sphe_9 (29, 3) = 0.15916400393009351387d0
  cart_to_sphe_9 (31, 3) = -0.6916059470489090194d0
  cart_to_sphe_9 (33, 3) = 1.3746470322173161221d0
  cart_to_sphe_9 (35, 3) = -1.4126128673922561809d0
  cart_to_sphe_9 (46, 3) = 0.36685490255855924707d0
  cart_to_sphe_9 (48, 3) = -1.5916400393009351387d0
  cart_to_sphe_9 (50, 3) = 3.1497120394911252077d0
  cart_to_sphe_9 (52, 3) = -3.1586983973799809d0
  cart_to_sphe_9 (54, 3) = 1.62697843363992129d0
  cart_to_sphe_9 ( 3, 4) = -0.83466307816035426155d0
  cart_to_sphe_9 ( 8, 4) = -0.2070544267420625878d0
  cart_to_sphe_9 (10, 4) = 2.3149388661875113029d0
  cart_to_sphe_9 (19, 4) = 0.40297913150666282783d0
  cart_to_sphe_9 (21, 4) = -2.9546917977869539993d0
  cart_to_sphe_9 (30, 4) = 0.2070544267420625878d0
  cart_to_sphe_9 (32, 4) = -0.40297913150666282783d0
  cart_to_sphe_9 (36, 4) = 1.7063893769835631924d0
  cart_to_sphe_9 (47, 4) = 0.83466307816035426155d0
  cart_to_sphe_9 (49, 4) = -2.3149388661875113029d0
  cart_to_sphe_9 (51, 4) = 2.9546917977869539993d0
  cart_to_sphe_9 (53, 4) = -1.7063893769835631924d0
  cart_to_sphe_9 ( 5, 5) = -0.43101816018790287844d0
  cart_to_sphe_9 (12, 5) = -0.4187881980957120927d0
  cart_to_sphe_9 (14, 5) = 1.395960660319040309d0
  cart_to_sphe_9 (23, 5) = -0.4187881980957120927d0
  cart_to_sphe_9 (25, 5) = 1.3623181102386339839d0
  cart_to_sphe_9 (27, 5) = -2.2335370565104644944d0
  cart_to_sphe_9 (38, 5) = -0.43101816018790287844d0
  cart_to_sphe_9 (40, 5) = 1.395960660319040309d0
  cart_to_sphe_9 (42, 5) = -2.2335370565104644944d0
  cart_to_sphe_9 (44, 5) = 1.9703687322875560157d0
  cart_to_sphe_9 ( 1, 6) = -0.37548796377180986812d0
  cart_to_sphe_9 ( 6, 6) = 1.4661859659554465543d0
  cart_to_sphe_9 (11, 6) = 0.12089373945199884835d0
  cart_to_sphe_9 (13, 6) = -0.21236437647040795145d0
  cart_to_sphe_9 (15, 6) = -2.417874789039976967d0
  cart_to_sphe_9 (22, 6) = 0.20206443016189559856d0
  cart_to_sphe_9 (24, 6) = -0.79143530297864839268d0
  cart_to_sphe_9 (26, 6) = 1.0552470706381978569d0
  cart_to_sphe_9 (28, 6) = 1.6165154412951647885d0
  cart_to_sphe_9 (37, 6) = 0.27320762396104757397d0
  cart_to_sphe_9 (39, 6) = -1.2199404645272449631d0
  cart_to_sphe_9 (41, 6) = 2.417874789039976967d0
  cart_to_sphe_9 (43, 6) = -2.16878304804843549d0
  cart_to_sphe_9 ( 2, 7) = -0.27320762396104757397d0
  cart_to_sphe_9 ( 7, 7) = -0.20206443016189559856d0
  cart_to_sphe_9 ( 9, 7) = 1.2199404645272449631d0
  cart_to_sphe_9 (16, 7) = -0.12089373945199884835d0
  cart_to_sphe_9 (18, 7) = 0.79143530297864839268d0
  cart_to_sphe_9 (20, 7) = -2.417874789039976967d0
  cart_to_sphe_9 (31, 7) = 0.21236437647040795145d0
  cart_to_sphe_9 (33, 7) = -1.0552470706381978569d0
  cart_to_sphe_9 (35, 7) = 2.16878304804843549d0
  cart_to_sphe_9 (46, 7) = 0.37548796377180986812d0
  cart_to_sphe_9 (48, 7) = -1.4661859659554465543d0
  cart_to_sphe_9 (50, 7) = 2.417874789039976967d0
  cart_to_sphe_9 (52, 7) = -1.6165154412951647885d0
  cart_to_sphe_9 ( 3, 8) = 0.80430146722719804411d0
  cart_to_sphe_9 ( 8, 8) = -0.39904527606894581113d0
  cart_to_sphe_9 (10, 8) = -1.7845847267806657796d0
  cart_to_sphe_9 (17, 8) = -0.59316922059788797031d0
  cart_to_sphe_9 (19, 8) = 1.5532816304615888184d0
  cart_to_sphe_9 (21, 8) = 1.4236061294349311288d0
  cart_to_sphe_9 (30, 8) = -0.39904527606894581113d0
  cart_to_sphe_9 (32, 8) = 1.5532816304615888184d0
  cart_to_sphe_9 (34, 8) = -2.5007351860179508607d0
  cart_to_sphe_9 (47, 8) = 0.80430146722719804411d0
  cart_to_sphe_9 (49, 8) = -1.7845847267806657796d0
  cart_to_sphe_9 (51, 8) = 1.4236061294349311288d0
  cart_to_sphe_9 ( 5, 9) = 0.83067898344030094085d0
  cart_to_sphe_9 (12, 9) = 0.26903627024228973454d0
  cart_to_sphe_9 (14, 9) = -2.1522901619383178764d0
  cart_to_sphe_9 (23, 9) = -0.26903627024228973454d0
  cart_to_sphe_9 (27, 9) = 2.1522901619383178764d0
  cart_to_sphe_9 (38, 9) = -0.83067898344030094085d0
  cart_to_sphe_9 (40, 9) = 2.1522901619383178764d0
  cart_to_sphe_9 (42, 9) = -2.1522901619383178764d0
  cart_to_sphe_9 ( 1,10) = 0.39636409043643194293d0
  cart_to_sphe_9 ( 4,10) = -0.34393377440500167929d0
  cart_to_sphe_9 ( 6,10) = -1.2037682104175058775d0
  cart_to_sphe_9 (11,10) = -0.29776858550677551679d0
  cart_to_sphe_9 (13,10) = 1.5691988753163563388d0
  cart_to_sphe_9 (15,10) = 1.1910743420271020672d0
  cart_to_sphe_9 (24,10) = 0.64978432507844251538d0
  cart_to_sphe_9 (26,10) = -2.5991373003137700615d0
  cart_to_sphe_9 (37,10) = 0.48066206207978815025d0
  cart_to_sphe_9 (39,10) = -1.6693261563207085231d0
  cart_to_sphe_9 (41,10) = 1.9851239033785034453d0
  cart_to_sphe_9 ( 2,11) = 0.48066206207978815025d0
  cart_to_sphe_9 ( 9,11) = -1.6693261563207085231d0
  cart_to_sphe_9 (16,11) = -0.29776858550677551679d0
  cart_to_sphe_9 (18,11) = 0.64978432507844251538d0
  cart_to_sphe_9 (20,11) = 1.9851239033785034453d0
  cart_to_sphe_9 (29,11) = -0.34393377440500167929d0
  cart_to_sphe_9 (31,11) = 1.5691988753163563388d0
  cart_to_sphe_9 (33,11) = -2.5991373003137700615d0
  cart_to_sphe_9 (46,11) = 0.39636409043643194293d0
  cart_to_sphe_9 (48,11) = -1.2037682104175058775d0
  cart_to_sphe_9 (50,11) = 1.1910743420271020672d0
  cart_to_sphe_9 ( 3,12) = -0.74463846463549402274d0
  cart_to_sphe_9 ( 8,12) = 1.2930544805637086353d0
  cart_to_sphe_9 (10,12) = 0.96378590571704436469d0
  cart_to_sphe_9 (19,12) = -2.5166038696554342464d0
  cart_to_sphe_9 (30,12) = -1.2930544805637086353d0
  cart_to_sphe_9 (32,12) = 2.5166038696554342464d0
  cart_to_sphe_9 (47,12) = 0.74463846463549402274d0
  cart_to_sphe_9 (49,12) = -0.96378590571704436469d0
  cart_to_sphe_9 ( 5,13) = -1.1535889489914915606d0
  cart_to_sphe_9 (12,13) = 0.87177715295353129935d0
  cart_to_sphe_9 (14,13) = 1.7435543059070625987d0
  cart_to_sphe_9 (23,13) = 0.87177715295353129935d0
  cart_to_sphe_9 (25,13) = -2.8358912905407192076d0
  cart_to_sphe_9 (38,13) = -1.1535889489914915606d0
  cart_to_sphe_9 (40,13) = 1.7435543059070625987d0
  cart_to_sphe_9 ( 1,14) = -0.44314852502786805507d0
  cart_to_sphe_9 ( 4,14) = 0.96132412415957630049d0
  cart_to_sphe_9 ( 6,14) = 0.76905929932766104039d0
  cart_to_sphe_9 (11,14) = -0.33291539937855436029d0
  cart_to_sphe_9 (13,14) = -2.3392235702823930554d0
  cart_to_sphe_9 (22,14) = -0.83466307816035426155d0
  cart_to_sphe_9 (24,14) = 2.9059238431784376645d0
  cart_to_sphe_9 (37,14) = 0.75235513151094117345d0
  cart_to_sphe_9 (39,14) = -1.4930907048606177933d0
  cart_to_sphe_9 ( 2,15) = -0.75235513151094117345d0
  cart_to_sphe_9 ( 7,15) = 0.83466307816035426155d0
  cart_to_sphe_9 ( 9,15) = 1.4930907048606177933d0
  cart_to_sphe_9 (16,15) = 0.33291539937855436029d0
  cart_to_sphe_9 (18,15) = -2.9059238431784376645d0
  cart_to_sphe_9 (29,15) = -0.96132412415957630049d0
  cart_to_sphe_9 (31,15) = 2.3392235702823930554d0
  cart_to_sphe_9 (46,15) = 0.44314852502786805507d0
  cart_to_sphe_9 (48,15) = -0.76905929932766104039d0
  cart_to_sphe_9 ( 3,16) = 0.626706654240043952d0
  cart_to_sphe_9 ( 8,16) = -2.176535018670731151d0
  cart_to_sphe_9 (17,16) = 3.2353561313826025233d0
  cart_to_sphe_9 (30,16) = -2.176535018670731151d0
  cart_to_sphe_9 (47,16) = 0.626706654240043952d0
  cart_to_sphe_9 ( 5,17) = 1.2945196985754986958d0
  cart_to_sphe_9 (12,17) = -2.9348392204684739765d0
  cart_to_sphe_9 (23,17) = 2.9348392204684739765d0
  cart_to_sphe_9 (38,17) = -1.2945196985754986958d0
  cart_to_sphe_9 ( 1,18) = 0.60904939217552380708d0
  cart_to_sphe_9 ( 4,18) = -2.3781845426185916576d0
  cart_to_sphe_9 (11,18) = 4.1179360680974030877d0
  cart_to_sphe_9 (22,18) = -3.4414040330583097636d0
  cart_to_sphe_9 (37,18) = 1.3294455750836041652d0
  cart_to_sphe_9 ( 2,19) = 1.3294455750836041652d0
  cart_to_sphe_9 ( 7,19) = -3.4414040330583097636d0
  cart_to_sphe_9 (16,19) = 4.1179360680974030877d0
  cart_to_sphe_9 (29,19) = -2.3781845426185916576d0
  cart_to_sphe_9 (46,19) = 0.60904939217552380708d0
END_PROVIDER
