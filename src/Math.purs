-- | Wraps the math functions and constants from Javascript's built-in `Math` object.
-- | See [Math Reference at MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math).
module Math where

-- | An alias to make types in this module more explicit.
type Radians = Number

-- | Returns the absolute value of the argument.
foreign import abs :: Number -> Number

-- | Returns the inverse cosine of the argument.
foreign import acos :: Number -> Radians

-- | Returns the inverse hyperbolic cosine of the argument.
foreign import acosh :: Number -> Number

-- | Returns the inverse sine of the argument.
foreign import asin :: Number -> Radians

-- | Returns the inverse hyperbolic sine of the argument.
foreign import asinh :: Number -> Number

-- | Returns the inverse tangent of the argument.
foreign import atan :: Number -> Radians

-- | Returns the inverse hyperbolic tangent of the argument.
foreign import atanh :: Number -> Number

-- | Four-quadrant tangent inverse. Given the arguments `y` and `x`, returns
-- | the inverse tangent of `y / x`, where the signs of both arguments are used
-- | to determine the sign of the result.
-- | If the first argument is negative, the result will be negative.
-- | The result is the angle between the positive x axis and  a point `(x, y)`.
foreign import atan2 :: Number -> Number -> Radians

-- | Returns the cube root of the argument.
foreign import cbrt :: Number -> Number

-- | Returns the smallest integer not smaller than the argument.
foreign import ceil :: Number -> Number

-- | Returns the number of leading zeroes of a 32-bit integer.
foreign import clz32 :: Int -> Int

-- | Returns the cosine of the argument.
foreign import cos :: Radians -> Number

-- | Returns the hyperbolic cosine of the argument.
foreign import cosh :: Number -> Number

-- | Returns `e` exponentiated to the power of the argument.
foreign import exp :: Number -> Number

-- | Returns `exp x - 1` for the argument `x`.
foreign import expm1 :: Number -> Number

-- | Returns the largest integer not larger than the argument.
foreign import floor :: Number -> Number

-- | Returns the square root of the sum of squares of the arguments.
foreign import hypot :: Number -> Number -> Number

-- | Returns the square root of the sum of squares of the arguments.
foreign import hypot3 :: Number -> Number -> Number -> Number

-- | Returns the result of the C-like 32-bit multiplication of the two arguments.
foreign import imul :: Int -> Int -> Int

-- | Returns the natural logarithm of a number.
foreign import log :: Number -> Number

-- | Returns the natural logarithm of `1 + x` for a number `x`.
foreign import log1p :: Number -> Number

-- | Returns the base 10 logarithm of a number.
foreign import log10 :: Number -> Number

-- | Returns the base 2 logarithm of a number.
foreign import log2 :: Number -> Number

-- | Returns the largest of two numbers.
foreign import max :: Number -> Number -> Number

-- | Returns the smallest of two numbers.
foreign import min :: Number -> Number -> Number

-- | Return  the first argument exponentiated to the power of the second argument.
foreign import pow :: Number -> Number -> Number

-- | Returns the integer closest to the argument.
foreign import round :: Number -> Number

-- | Returns the sign of the argument.
foreign import sign :: Number -> Number

-- | Returns the sine of the argument.
foreign import sin :: Radians -> Number

-- | Returns the hyperbolic sine of the argument.
foreign import sinh :: Number -> Number

-- | Returns the square root of the argument.
foreign import sqrt :: Number -> Number

-- | Returns the tangent of the argument.
foreign import tan :: Radians -> Number

-- | Returns the hyperbolic tangent of the argument.
foreign import tanh :: Number -> Number

-- | Truncates the decimal portion of a number. Equivalent to `floor` if the
-- | number is positive, and `ceil` if the number is negative.
foreign import trunc :: Number -> Number

-- | Computes the remainder after division, wrapping Javascript's `%` operator.
foreign import remainder :: Number -> Number -> Number

infixl 7 remainder as %

-- | The base of natural logarithms, *e*, around 2.71828.
foreign import e :: Number

-- | The natural logarithm of 2, around 0.6931.
foreign import ln2 :: Number

-- | The natural logarithm of 10, around 2.3025.
foreign import ln10 :: Number

-- | The base 2 logarithm of `e`, around 1.4426.
foreign import log2e :: Number

-- | Base 10 logarithm of `e`, around 0.43429.
foreign import log10e :: Number

-- | The ratio of the circumference of a circle to its diameter, around 3.14159.
foreign import pi :: Number

-- | The ratio of the circumference of a circle to its radius, around 6.283185.
foreign import tau :: Number

-- | The Square root of one half, around 0.707107.
foreign import sqrt1_2 :: Number

-- | The square root of two, around 1.41421.
foreign import sqrt2 :: Number
