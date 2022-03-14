// module Math

export const abs = Math.abs;

export const acos = Math.acos;

export const asin = Math.asin;

export const atan = Math.atan;

export const atan2 = function (y) {
  return function (x) {
    return Math.atan2(y, x);
  };
};

export const ceil = Math.ceil;

export const cos = Math.cos;

export const exp = Math.exp;

export const floor = Math.floor;

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

export const imul = Math.imul ? nativeImul : emulatedImul;

export const trunc = Math.trunc || function (n) {
  return n < 0 ? Math.ceil(n) : Math.floor(n);
};

export const log = Math.log;

export const max = function (n1) {
  return function (n2) {
    return Math.max(n1, n2);
  };
};

export const min = function (n1) {
  return function (n2) {
    return Math.min(n1, n2);
  };
};

export const pow = function (n) {
  return function (p) {
    return Math.pow(n, p);
  };
};

export const remainder = function (n) {
  return function (m) {
    return n % m;
  };
};

export const round = Math.round;

export const sin = Math.sin;

export const sqrt = Math.sqrt;

export const tan = Math.tan;

export const e = Math.E;

export const ln2 = Math.LN2;

export const ln10 = Math.LN10;

export const log2e = Math.LOG2E;

export const log10e = Math.LOG10E;

export const pi = Math.PI;

export const tau = 2 * Math.PI;

export const sqrt1_2 = Math.SQRT1_2;

export const sqrt2 = Math.SQRT2;
