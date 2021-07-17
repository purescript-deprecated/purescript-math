"use strict";

// module Math

export var abs = Math.abs;

export var acos = Math.acos;

export var asin = Math.asin;

export var atan = Math.atan;

export var atan2 = function (y) {
  return function (x) {
    return Math.atan2(y, x);
  };
};

export var ceil = Math.ceil;

export var cos = Math.cos;

export var exp = Math.exp;

export var floor = Math.floor;

function nativeImul(a) {
  return function (b) {
    return Math.imul(a, b);
  };
}

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/imul
function emulatedImul(a) {
  /*jshint bitwise: false*/
  return function (b) {
    var ah = a >>> 16 & 0xffff;
    var al = a & 0xffff;
    var bh = b >>> 16 & 0xffff;
    var bl = b & 0xffff;
    // the shift by 0 fixes the sign on the high part
    // the final |0 converts the unsigned value into a signed value
    return al * bl + (ah * bl + al * bh << 16 >>> 0) | 0;
  };
}

export var imul = Math.imul ? nativeImul : emulatedImul;

export var trunc = Math.trunc || function (n) {
  return n < 0 ? Math.ceil(n) : Math.floor(n);
};

export var log = Math.log;

export var max = function (n1) {
  return function (n2) {
    return Math.max(n1, n2);
  };
};

export var min = function (n1) {
  return function (n2) {
    return Math.min(n1, n2);
  };
};

export var pow = function (n) {
  return function (p) {
    return Math.pow(n, p);
  };
};

export var remainder = function (n) {
  return function (m) {
    return n % m;
  };
};

export var round = Math.round;

export var sin = Math.sin;

export var sqrt = Math.sqrt;

export var tan = Math.tan;

export var e = Math.E;

export var ln2 = Math.LN2;

export var ln10 = Math.LN10;

export var log2e = Math.LOG2E;

export var log10e = Math.LOG10E;

export var pi = Math.PI;

export var tau = 2 * Math.PI;

export var sqrt1_2 = Math.SQRT1_2;

export var sqrt2 = Math.SQRT2;
