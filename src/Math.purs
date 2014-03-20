module Math where

type Radians = Number

foreign import abs "var abs = Math.abs;" :: Number -> Number

foreign import acos "var acos = Math.acos;" :: Number -> Radians

foreign import asin "var asin = Math.asin;" :: Number -> Radians

foreign import atan "var atan = Math.atan;" :: Number -> Radians

foreign import atan2
  "function atan2(y){\
  \  return function (x) {\
  \    return Math.atan2(y, x);\
  \  };\
  \}" :: Number -> Number -> Radians

foreign import ceil "var ceil = Math.ceil;" :: Number -> Number

foreign import cos "var cos = Math.cos;" :: Radians -> Number

foreign import exp "var exp = Math.exp;" :: Number -> Number

foreign import floor "var floor = Math.floor;" :: Number -> Number

foreign import log "var log = Math.log;" :: Number -> Number

foreign import max
  "function max(n1){\
  \  return function(n2) {\
  \    return Math.max(n1, n2);\
  \  }\
  \}" :: Number -> Number -> Number

foreign import min
  "function min(n1){\
  \  return function(n2) {\
  \    return Math.min(n1, n2);\
  \  }\
  \}" :: Number -> Number -> Number

foreign import pow
  "function pow(n){\
  \  return function(p) {\
  \    return Math.pow(n, p);\
  \  }\
  \}" :: Number -> Number -> Number

foreign import round "var round = Math.round;" :: Number -> Number

foreign import sin "var sin = Math.sin;" :: Radians -> Number

foreign import sqrt "var sqrt = Math.sqrt;" :: Number -> Number

foreign import tan "var tan = Math.tan;" :: Radians -> Number

foreign import e       "var e       = Math.E;"       :: Number
foreign import ln2     "var ln2     = Math.LN2;"     :: Number
foreign import ln10    "var ln10    = Math.LN10;"    :: Number
foreign import log2e   "var log2e   = Math.LOG2E;"   :: Number
foreign import log10e  "var log10e  = Math.LOG10E;"  :: Number
foreign import pi      "var pi      = Math.PI;"      :: Number
foreign import sqrt1_2 "var sqrt1_2 = Math.SQRT1_2;" :: Number
foreign import sqrt2   "var sqrt2   = Math.SQRT2;"   :: Number
