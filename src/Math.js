"use strict";

// module Math

exports.abs = Math.abs;

exports.acos = Math.acos;

exports.acosh = Math.acosh || function (x) {
  return Math.log(x + Math.sqrt(x * x - 1));
};

exports.asin = Math.asin;

exports.asinh = Math.asinh || function (x) {
  if (x === -Infinity) {
    return x;
  } else {
    return Math.log(x + Math.sqrt(x * x + 1));
  }
};

exports.atan = Math.atan;

exports.atanh = Math.atanh || function (x) {
  return Math.log((1 + x) / (1 - x)) / 2;
};

exports.atan2 = function (y) {
  return function (x) {
    return Math.atan2(y, x);
  };
};

exports.cbrt = Math.cbrt || function (x) {
  if (x === 0) {
    return x; // +0 or -0
  } else if (x < 0) {
    return -Math.pow(-x, 1 / 3);
  } else {
    return Math.pow(x, 1 / 3);
  }
};

exports.ceil = Math.ceil;

exports.clz32 = Math.clz32 || function (x) {
  if (x === 0) {
    return 32;
  }
  return 31 - Math.floor(Math.log(x >>> 0) * Math.LOG2E);
};

exports.cos = Math.cos;

exports.cosh = Math.cosh || function (x) {
  return (Math.exp(x) + Math.exp(-x)) / 2;
};

exports.exp = Math.exp;

exports.expm1 = Math.expm1 || function (x) {
  return Math.exp(x) - 1;
};

exports.floor = Math.floor;

exports.hypot = Math.hypot ? function (x) {
  return function (y) {
    return Math.hypot(x, y);
  };
} : function (x) {
  return function (y) {
    return Math.sqrt(x * x + y * y);
  };
};

exports.hypot3 = Math.hypot ? function (x) {
  return function (y) {
    return function (z) {
      return Math.hypot(x, y, z);
    };
  };
} : function (x) {
  return function (y) {
    return function (z) {
      return Math.sqrt(x * x + y * y + z * z);
    };
  };
};

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

exports.imul = Math.imul ? nativeImul : emulatedImul;

exports.trunc = Math.trunc || function (n) {
  return n < 0 ? Math.ceil(n) : Math.floor(n);
};

exports.log = Math.log;

exports.log1p = Math.log1p || function (x) {
  return Math.log(x + 1);
};

exports.log10 = Math.log10 || function (x) {
  return Math.log(x) * Math.LOG10E;
};

exports.log2 = Math.log2 || function (x) {
  return Math.log(x) * Math.LOG2E;
};

exports.max = function (n1) {
  return function (n2) {
    return Math.max(n1, n2);
  };
};

exports.min = function (n1) {
  return function (n2) {
    return Math.min(n1, n2);
  };
};

exports.pow = function (n) {
  return function (p) {
    return Math.pow(n, p);
  };
};

exports.remainder = function (n) {
  return function (m) {
    return n % m;
  };
};

exports.round = Math.round;

exports.sign = Math.sign || function (x) {
  if (x > 0) {
    return 1;
  } else if (x < 0) {
    return -1;
  } else {
    return +x; // +0 or -0 or NaN
  }
};

exports.sin = Math.sin;

exports.sinh = Math.sinh || function (x) {
  return (Math.exp(x) - Math.exp(-x)) / 2;
};

exports.sqrt = Math.sqrt;

exports.tan = Math.tan;

exports.tanh = Math.tanh || function (x) {
  var ex = Math.exp(2 * x);
  if (ex === Infinity) {
    return 1;
  } else {
    return (ex - 1) / (ex + 1);
  }
};

exports.e = Math.E;

exports.ln2 = Math.LN2;

exports.ln10 = Math.LN10;

exports.log2e = Math.LOG2E;

exports.log10e = Math.LOG10E;

exports.pi = Math.PI;

exports.tau = 2 * Math.PI;

exports.sqrt1_2 = Math.SQRT1_2;

exports.sqrt2 = Math.SQRT2;
