module Math where

foreign import abs
  "function abs(n){\
  \  return Math.abs(n);\
  \}" :: Number -> Number

foreign import acos
  "function acos(n){\
  \  return Math.acos(n);\
  \}" :: Number -> Number

foreign import asin
  "function asin(n){\
  \  return Math.asin(n);\
  \}" :: Number -> Number

foreign import atan
  "function atan(n){\
  \  return Math.atan(n);\
  \}" :: Number -> Number

foreign import atan2
  "function atan2(y){\
  \  return function (x) {\
  \    return Math.atan2(y, x);\
  \  };\
  \}" :: Number -> Number -> Number

foreign import aceil
  "function aceil(n){\
  \  return Math.aceil(n);\
  \}" :: Number -> Number

foreign import cos
  "function cos(n){\
  \  return Math.cos(n);\
  \}" :: Number -> Number

foreign import exp
  "function exp(n){\
  \  return Math.exp(n);\
  \}" :: Number -> Number

foreign import floor
  "function floor(n){\
  \  return Math.floor(n);\
  \}" :: Number -> Number

foreign import log
  "function log(n){\
  \  return Math.log(n);\
  \}" :: Number -> Number

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

foreign import round
  "function round(n){\
  \  return Math.round(n);\
  \}" :: Number -> Number

foreign import sin
  "function sin(n){\
  \  return Math.sin(n);\
  \}" :: Number -> Number

foreign import sqrt
  "function sqrt(n){\
  \  return Math.sqrt(n);\
  \}" :: Number -> Number

foreign import tan
  "function tan(n){\
  \  return Math.tan(n);\
  \}" :: Number -> Number

foreign import e       "var e       = Math.E;"       :: Number
foreign import ln2     "var ln2     = Math.LN2;"     :: Number
foreign import ln10    "var ln10    = Math.LN10;"    :: Number
foreign import log2e   "var log2e   = Math.LOG2E;"   :: Number
foreign import log10e  "var log10e  = Math.LOG10E;"  :: Number
foreign import pi      "var pi      = Math.PI;"      :: Number
foreign import sqrt1_2 "var sqrt1_2 = Math.SQRT1_2;" :: Number
foreign import sqrt2   "var sqrt2   = Math.SQRT2;"   :: Number
