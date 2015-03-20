# Module Documentation

## Module Math


Wraps the math functions and constants from Javascript's built-in `Math` object.
See [Math Documentation at MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math).

#### `Radians`

``` purescript
type Radians = Number
```

An alias to make types in this module more explicit.

#### `abs`

``` purescript
abs :: Number -> Number
```

Returns the absolute value of the argument.

#### `acos`

``` purescript
acos :: Number -> Radians
```

Returns the arccosine of the argument.

#### `asin`

``` purescript
asin :: Number -> Radians
```

Returns the arcsine of the argument.

#### `atan`

``` purescript
atan :: Number -> Radians
```

Returns the arctangent of the argument.

#### `atan2`

``` purescript
atan2 :: Number -> Number -> Radians
```

Four-quadrant tangent inverse. Given `y` and `x`, returns the arctangent of
`y / x`, where the signs of both arguments are used to determine the sign
of the result.
If the first argument is negative, the result will be negative.
The result is the counterclockwise angle between the positive x axis and
the point `(x, y)`.

#### `ceil`

``` purescript
ceil :: Number -> Number
```

Returns the smallest integer greater than or equal to the argument.

#### `cos`

``` purescript
cos :: Radians -> Number
```

Returns the cosine of the argument.

#### `exp`

``` purescript
exp :: Number -> Number
```

Returns `e` exponentiated to the power of the argument.

#### `floor`

``` purescript
floor :: Number -> Number
```

Returns the largest integer less than or equal to the argument.

#### `log`

``` purescript
log :: Number -> Number
```

Returns the natural logarithm of a number.

#### `max`

``` purescript
max :: Number -> Number -> Number
```

Returns the largest of two numbers.

#### `min`

``` purescript
min :: Number -> Number -> Number
```

Returns the smallest of two numbers.

#### `pow`

``` purescript
pow :: Number -> Number -> Number
```

Return  the first argument exponentiated to the power of the second argument.

#### `round`

``` purescript
round :: Number -> Number
```

Returns the integer nearest to the argument.

#### `sin`

``` purescript
sin :: Radians -> Number
```

Returns the sine of the argument.

#### `sqrt`

``` purescript
sqrt :: Number -> Number
```

Returns the square root of the argument.

#### `tan`

``` purescript
tan :: Radians -> Number
```

Returns the tangent of the argument.

#### `e`

``` purescript
e :: Number
```

Euler's constant and the base of natural logarithms, approximately 2.718.

#### `ln2`

``` purescript
ln2 :: Number
```

Natural logarithm of 2, approximately 0.693.

#### `ln10`

``` purescript
ln10 :: Number
```

Natural logarithm of 10, approximately 2.303.

#### `log2e`

``` purescript
log2e :: Number
```

Base 2 logarithm of `e`, approximately 1.443.

#### `log10e`

``` purescript
log10e :: Number
```

Base 10 logarithm of `e`, approximately 0.434.

#### `pi`

``` purescript
pi :: Number
```

Ratio of the circumference of a circle to its diameter, approximately 3.14159.

#### `sqrt1_2`

``` purescript
sqrt1_2 :: Number
```

Square root of 1/2, approximately 0.707.

#### `sqrt2`

``` purescript
sqrt2 :: Number
```

Square root of 2, approximately 1.414.



