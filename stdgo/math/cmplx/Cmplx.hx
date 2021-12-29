package stdgo.math.cmplx;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Abs returns the absolute value (also called the modulus) of x.
**/
function abs(_x:GoComplex128):GoFloat64 {
    return stdgo.math.Math.hypot(_x.real, _x.imag);
}
/**
    // Asin returns the inverse sine of x.
**/
function asin(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if ((_im == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_re) <= ((1 : GoFloat64)))) {
            return new GoComplex128(stdgo.math.Math.asin(_re), _im);
        } else if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_im) <= ((1 : GoFloat64)))) {
            return new GoComplex128(_re, stdgo.math.Math.asinh(_im));
        } else if (stdgo.math.Math.isNaN(_im)) {
            if (_re == ((0 : GoFloat64))) {
                return new GoComplex128(_re, stdgo.math.Math.naN());
            } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                return new GoComplex128(stdgo.math.Math.naN(), _re);
            } else {
                return naN();
            };
        } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
            if (stdgo.math.Math.isNaN(_re)) {
                return _x;
            } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                return new GoComplex128(stdgo.math.Math.copysign(((0.7853981633974483 : GoFloat64)), _re), _im);
            } else {
                return new GoComplex128(stdgo.math.Math.copysign(((0 : GoFloat64)), _re), _im);
            };
        } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
            return new GoComplex128(stdgo.math.Math.copysign(((1.5707963267948966 : GoFloat64)), _re), stdgo.math.Math.copysign(_re, _im));
        };
    };
    var _ct:GoComplex128 = new GoComplex128(-_x.imag, _x.real);
    var _xx:GoComplex128 = _x * _x;
    var _x1:GoComplex128 = new GoComplex128(((1 : GoFloat64)) - _xx.real, -_xx.imag);
    var _x2:GoComplex128 = sqrt(_x1);
    var _w:GoComplex128 = log(_ct + _x2);
    return new GoComplex128(_w.imag, -_w.real);
}
/**
    // Asinh returns the inverse hyperbolic sine of x.
**/
function asinh(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if ((_im == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_re) <= ((1 : GoFloat64)))) {
            return new GoComplex128(stdgo.math.Math.asinh(_re), _im);
        } else if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_im) <= ((1 : GoFloat64)))) {
            return new GoComplex128(_re, stdgo.math.Math.asin(_im));
        } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
            if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
                return new GoComplex128(_re, stdgo.math.Math.copysign(((0.7853981633974483 : GoFloat64)), _im));
            } else if (stdgo.math.Math.isNaN(_im)) {
                return _x;
            } else {
                return new GoComplex128(_re, stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
            };
        } else if (stdgo.math.Math.isNaN(_re)) {
            if (_im == ((0 : GoFloat64))) {
                return _x;
            } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
                return new GoComplex128(_im, _re);
            } else {
                return naN();
            };
        } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
            return new GoComplex128(stdgo.math.Math.copysign(_im, _re), stdgo.math.Math.copysign(((1.5707963267948966 : GoFloat64)), _im));
        };
    };
    var _xx:GoComplex128 = _x * _x;
    var _x1:GoComplex128 = new GoComplex128(((1 : GoFloat64)) + _xx.real, _xx.imag);
    return log(_x + sqrt(_x1));
}
/**
    // Acos returns the inverse cosine of x.
**/
function acos(_x:GoComplex128):GoComplex128 {
    var _w:GoComplex128 = asin(_x);
    return new GoComplex128(((1.5707963267948966 : GoFloat64)) - _w.real, -_w.imag);
}
/**
    // Acosh returns the inverse hyperbolic cosine of x.
**/
function acosh(_x:GoComplex128):GoComplex128 {
    if (_x == ((0 : GoComplex128))) {
        return new GoComplex128(((0 : GoFloat64)), stdgo.math.Math.copysign(((1.5707963267948966 : GoFloat64)), _x.imag));
    };
    var _w:GoComplex128 = acos(_x);
    if (_w.imag <= ((0 : GoFloat64))) {
        return new GoComplex128(-_w.imag, _w.real);
    };
    return new GoComplex128(_w.imag, -_w.real);
}
/**
    // Atan returns the inverse tangent of x.
**/
function atan(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if (_im == ((0 : GoFloat64))) {
            return new GoComplex128(stdgo.math.Math.atan(_re), _im);
        } else if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_im) <= ((1 : GoFloat64)))) {
            return new GoComplex128(_re, stdgo.math.Math.atanh(_im));
        } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
            if (stdgo.math.Math.isNaN(_re)) {
                return new GoComplex128(stdgo.math.Math.naN(), stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
            };
            return new GoComplex128(stdgo.math.Math.copysign(((1.5707963267948966 : GoFloat64)), _re), stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
        } else if (stdgo.math.Math.isNaN(_re) || stdgo.math.Math.isNaN(_im)) {
            return naN();
        };
    };
    var _x2:GoFloat64 = _x.real * _x.real;
    var _a:GoFloat64 = (((1 : GoFloat64)) - _x2) - (_x.imag * _x.imag);
    if (_a == ((0 : GoFloat64))) {
        return naN();
    };
    var _t:GoFloat64 = ((0.5 : GoFloat64)) * stdgo.math.Math.atan2(((2 : GoFloat64)) * _x.real, _a);
    var _w:GoFloat64 = _reducePi(_t);
    _t = _x.imag - ((1 : GoFloat64));
    var _b:GoFloat64 = _x2 + (_t * _t);
    if (_b == ((0 : GoFloat64))) {
        return naN();
    };
    _t = _x.imag + ((1 : GoFloat64));
    var _c:GoFloat64 = (_x2 + (_t * _t)) / _b;
    return new GoComplex128(_w, ((0.25 : GoFloat64)) * stdgo.math.Math.log(_c));
}
/**
    // Atanh returns the inverse hyperbolic tangent of x.
**/
function atanh(_x:GoComplex128):GoComplex128 {
    var _z:GoComplex128 = new GoComplex128(-_x.imag, _x.real);
    _z = atan(_z);
    return new GoComplex128(_z.imag, -_z.real);
}
/**
    // Conj returns the complex conjugate of x.
**/
function conj(_x:GoComplex128):GoComplex128 {
    return new GoComplex128(_x.real, -_x.imag);
}
/**
    // Exp returns e**x, the base-e exponential of x.
**/
function exp(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
            if ((_re > ((0 : GoFloat64))) && (_im == ((0 : GoFloat64)))) {
                return _x;
            } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im)) {
                if (_re < ((0 : GoFloat64))) {
                    return new GoComplex128(((0 : GoFloat64)), stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
                } else {
                    return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), stdgo.math.Math.naN());
                };
            };
        } else if (stdgo.math.Math.isNaN(_re)) {
            if (_im == ((0 : GoFloat64))) {
                return new GoComplex128(stdgo.math.Math.naN(), _im);
            };
        };
    };
    var _r:GoFloat64 = stdgo.math.Math.exp(_x.real);
    var __tmp__ = stdgo.math.Math.sincos(_x.imag), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
    return new GoComplex128(_r * _c, _r * _s);
}
/**
    // IsInf reports whether either real(x) or imag(x) is an infinity.
**/
function isInf(_x:GoComplex128):Bool {
    if (stdgo.math.Math.isInf(_x.real, ((0 : GoInt))) || stdgo.math.Math.isInf(_x.imag, ((0 : GoInt)))) {
        return true;
    };
    return false;
}
/**
    // Inf returns a complex infinity, complex(+Inf, +Inf).
**/
function inf():GoComplex128 {
    var _inf:GoFloat64 = stdgo.math.Math.inf(((1 : GoInt)));
    return new GoComplex128(_inf, _inf);
}
/**
    // IsNaN reports whether either real(x) or imag(x) is NaN
    // and neither is an infinity.
**/
function isNaN(_x:GoComplex128):Bool {
    if (stdgo.math.Math.isInf(_x.real, ((0 : GoInt))) || stdgo.math.Math.isInf(_x.imag, ((0 : GoInt)))) {
        return false;
    } else if (stdgo.math.Math.isNaN(_x.real) || stdgo.math.Math.isNaN(_x.imag)) {
        return true;
    };
    return false;
}
/**
    // NaN returns a complex ``not-a-number'' value.
**/
function naN():GoComplex128 {
    var _nan:GoFloat64 = stdgo.math.Math.naN();
    return new GoComplex128(_nan, _nan);
}
/**
    // Log returns the natural logarithm of x.
**/
function log(_x:GoComplex128):GoComplex128 {
    return new GoComplex128(stdgo.math.Math.log(abs(_x)), phase(_x));
}
/**
    // Log10 returns the decimal logarithm of x.
**/
function log10(_x:GoComplex128):GoComplex128 {
    var _z:GoComplex128 = log(_x);
    return new GoComplex128(((0.4342944819032518 : GoFloat64)) * _z.real, ((0.4342944819032518 : GoFloat64)) * _z.imag);
}
/**
    // Phase returns the phase (also called the argument) of x.
    // The returned value is in the range [-Pi, Pi].
**/
function phase(_x:GoComplex128):GoFloat64 {
    return stdgo.math.Math.atan2(_x.imag, _x.real);
}
/**
    // Polar returns the absolute value r and phase θ of x,
    // such that x = r * e**θi.
    // The phase is in the range [-Pi, Pi].
**/
function polar(_x:GoComplex128):{ var _0 : GoFloat64; var _1 : GoFloat64; } {
    var _r:GoFloat64 = ((0 : GoFloat64)), __952:GoFloat64 = ((0 : GoFloat64));
    return { _0 : abs(_x), _1 : phase(_x) };
}
/**
    // Pow returns x**y, the base-x exponential of y.
    // For generalized compatibility with math.Pow:
    //	Pow(0, ±0) returns 1+0i
    //	Pow(0, c) for real(c)<0 returns Inf+0i if imag(c) is zero, otherwise Inf+Inf i.
**/
function pow(_x:GoComplex128, _y:GoComplex128):GoComplex128 {
    if (_x == ((0 : GoComplex128))) {
        if (isNaN(_y)) {
            return naN();
        };
        var _r:GoFloat64 = _y.real, _i:GoFloat64 = _y.imag;
        if (_r == ((0 : GoFloat64))) {
            return ((1 : GoComplex128));
        } else if (_r < ((0 : GoFloat64))) {
            if (_i == ((0 : GoFloat64))) {
                return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), ((0 : GoFloat64)));
            };
            return inf();
        } else if (_r > ((0 : GoFloat64))) {
            return ((0 : GoComplex128));
        };
        throw ((("not reached" : GoString)));
    };
    var _modulus:GoFloat64 = abs(_x);
    if (_modulus == ((0 : GoFloat64))) {
        return new GoComplex128(((0 : GoUnTypedInt)), ((0 : GoUnTypedInt)));
    };
    var _r:GoFloat64 = stdgo.math.Math.pow(_modulus, _y.real);
    var _arg:GoFloat64 = phase(_x);
    var _theta:GoFloat64 = _y.real * _arg;
    if (_y.imag != ((0 : GoFloat64))) {
        _r = _r * (stdgo.math.Math.exp(-_y.imag * _arg));
        _theta = _theta + (_y.imag * stdgo.math.Math.log(_modulus));
    };
    var __tmp__ = stdgo.math.Math.sincos(_theta), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
    return new GoComplex128(_r * _c, _r * _s);
}
/**
    // Rect returns the complex number x with polar coordinates r, θ.
**/
function rect(_r:GoFloat64, __952:GoFloat64):GoComplex128 {
    var __tmp__ = stdgo.math.Math.sincos(__952), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
    return new GoComplex128(_r * _c, _r * _s);
}
/**
    // Sin returns the sine of x.
**/
function sin(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if ((_im == ((0 : GoFloat64))) && (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re))) {
            return new GoComplex128(stdgo.math.Math.naN(), _im);
        } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
            if (_re == ((0 : GoFloat64))) {
                return _x;
            } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re)) {
                return new GoComplex128(stdgo.math.Math.naN(), _im);
            };
        } else if ((_re == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_im)) {
            return _x;
        };
    };
    var __tmp__ = stdgo.math.Math.sincos(_x.real), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
    var __tmp__ = _sinhcosh(_x.imag), _sh:GoFloat64 = __tmp__._0, _ch:GoFloat64 = __tmp__._1;
    return new GoComplex128(_s * _ch, _c * _sh);
}
/**
    // Sinh returns the hyperbolic sine of x.
**/
function sinh(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im))) {
            return new GoComplex128(_re, stdgo.math.Math.naN());
        } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
            if (_im == ((0 : GoFloat64))) {
                return new GoComplex128(_re, _im);
            } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im)) {
                return new GoComplex128(_re, stdgo.math.Math.naN());
            };
        } else if ((_im == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_re)) {
            return new GoComplex128(stdgo.math.Math.naN(), _im);
        };
    };
    var __tmp__ = stdgo.math.Math.sincos(_x.imag), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
    var __tmp__ = _sinhcosh(_x.real), _sh:GoFloat64 = __tmp__._0, _ch:GoFloat64 = __tmp__._1;
    return new GoComplex128(_c * _sh, _s * _ch);
}
/**
    // Cos returns the cosine of x.
**/
function cos(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if ((_im == ((0 : GoFloat64))) && (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re))) {
            return new GoComplex128(stdgo.math.Math.naN(), -_im * stdgo.math.Math.copysign(((0 : GoFloat64)), _re));
        } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
            if (_re == ((0 : GoFloat64))) {
                return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), -_re * stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
            } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re)) {
                return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), stdgo.math.Math.naN());
            };
        } else if ((_re == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_im)) {
            return new GoComplex128(stdgo.math.Math.naN(), ((0 : GoFloat64)));
        };
    };
    var __tmp__ = stdgo.math.Math.sincos(_x.real), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
    var __tmp__ = _sinhcosh(_x.imag), _sh:GoFloat64 = __tmp__._0, _ch:GoFloat64 = __tmp__._1;
    return new GoComplex128(_c * _ch, -_s * _sh);
}
/**
    // Cosh returns the hyperbolic cosine of x.
**/
function cosh(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im))) {
            return new GoComplex128(stdgo.math.Math.naN(), _re * stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
        } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
            if (_im == ((0 : GoFloat64))) {
                return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), _im * stdgo.math.Math.copysign(((0 : GoFloat64)), _re));
            } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im)) {
                return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), stdgo.math.Math.naN());
            };
        } else if ((_im == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_re)) {
            return new GoComplex128(stdgo.math.Math.naN(), _im);
        };
    };
    var __tmp__ = stdgo.math.Math.sincos(_x.imag), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
    var __tmp__ = _sinhcosh(_x.real), _sh:GoFloat64 = __tmp__._0, _ch:GoFloat64 = __tmp__._1;
    return new GoComplex128(_c * _ch, _s * _sh);
}
/**
    // calculate sinh and cosh
**/
function _sinhcosh(_x:GoFloat64):{ var _0 : GoFloat64; var _1 : GoFloat64; } {
    var _sh:GoFloat64 = ((0 : GoFloat64)), _ch:GoFloat64 = ((0 : GoFloat64));
    if (stdgo.math.Math.abs(_x) <= ((0.5 : GoFloat64))) {
        return { _0 : stdgo.math.Math.sinh(_x), _1 : stdgo.math.Math.cosh(_x) };
    };
    var _e:GoFloat64 = stdgo.math.Math.exp(_x);
    var _ei:GoFloat64 = ((0.5 : GoFloat64)) / _e;
    _e = _e * (((0.5 : GoFloat64)));
    return { _0 : _e - _ei, _1 : _e + _ei };
}
/**
    // Sqrt returns the square root of x.
    // The result r is chosen so that real(r) ≥ 0 and imag(r) has the same sign as imag(x).
**/
function sqrt(_x:GoComplex128):GoComplex128 {
    if (_x.imag == ((0 : GoFloat64))) {
        if (_x.real == ((0 : GoFloat64))) {
            return new GoComplex128(((0 : GoFloat64)), _x.imag);
        };
        if (_x.real < ((0 : GoFloat64))) {
            return new GoComplex128(((0 : GoFloat64)), stdgo.math.Math.copysign(stdgo.math.Math.sqrt(-_x.real), _x.imag));
        };
        return new GoComplex128(stdgo.math.Math.sqrt(_x.real), _x.imag);
    } else if (stdgo.math.Math.isInf(_x.imag, ((0 : GoInt)))) {
        return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), _x.imag);
    };
    if (_x.real == ((0 : GoFloat64))) {
        if (_x.imag < ((0 : GoFloat64))) {
            var _r:GoFloat64 = stdgo.math.Math.sqrt(((-0.5 : GoFloat64)) * _x.imag);
            return new GoComplex128(_r, -_r);
        };
        var _r:GoFloat64 = stdgo.math.Math.sqrt(((0.5 : GoFloat64)) * _x.imag);
        return new GoComplex128(_r, _r);
    };
    var _a:GoFloat64 = _x.real;
    var _b:GoFloat64 = _x.imag;
    var _scale:GoFloat64 = ((0 : GoFloat64));
    if ((stdgo.math.Math.abs(_a) > ((4 : GoFloat64))) || (stdgo.math.Math.abs(_b) > ((4 : GoFloat64)))) {
        _a = _a * (((0.25 : GoFloat64)));
        _b = _b * (((0.25 : GoFloat64)));
        _scale = ((2 : GoFloat64));
    } else {
        _a = _a * (((1.8014398509481984e+16 : GoFloat64)));
        _b = _b * (((1.8014398509481984e+16 : GoFloat64)));
        _scale = ((7.450580596923828e-09 : GoFloat64));
    };
    var _r:GoFloat64 = stdgo.math.Math.hypot(_a, _b);
    var _t:GoFloat64 = ((0 : GoFloat64));
    if (_a > ((0 : GoFloat64))) {
        _t = stdgo.math.Math.sqrt((((0.5 : GoFloat64)) * _r) + (((0.5 : GoFloat64)) * _a));
        _r = _scale * stdgo.math.Math.abs((((0.5 : GoFloat64)) * _b) / _t);
        _t = _t * (_scale);
    } else {
        _r = stdgo.math.Math.sqrt((((0.5 : GoFloat64)) * _r) - (((0.5 : GoFloat64)) * _a));
        _t = _scale * stdgo.math.Math.abs((((0.5 : GoFloat64)) * _b) / _r);
        _r = _r * (_scale);
    };
    if (_b < ((0 : GoFloat64))) {
        return new GoComplex128(_t, -_r);
    };
    return new GoComplex128(_t, _r);
}
/**
    // Tan returns the tangent of x.
**/
function tan(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
            if (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re)) {
                return new GoComplex128(stdgo.math.Math.copysign(((0 : GoFloat64)), _re), stdgo.math.Math.copysign(((1 : GoFloat64)), _im));
            };
            return new GoComplex128(stdgo.math.Math.copysign(((0 : GoFloat64)), stdgo.math.Math.sin(((2 : GoFloat64)) * _re)), stdgo.math.Math.copysign(((1 : GoFloat64)), _im));
        } else if ((_re == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_im)) {
            return _x;
        };
    };
    var _d:GoFloat64 = stdgo.math.Math.cos(((2 : GoFloat64)) * _x.real) + stdgo.math.Math.cosh(((2 : GoFloat64)) * _x.imag);
    if (stdgo.math.Math.abs(_d) < ((0.25 : GoFloat64))) {
        _d = _tanSeries(_x);
    };
    if (_d == ((0 : GoFloat64))) {
        return inf();
    };
    return new GoComplex128(stdgo.math.Math.sin(((2 : GoFloat64)) * _x.real) / _d, stdgo.math.Math.sinh(((2 : GoFloat64)) * _x.imag) / _d);
}
/**
    // Tanh returns the hyperbolic tangent of x.
**/
function tanh(_x:GoComplex128):GoComplex128 {
    {
        var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
        if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
            if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im)) {
                return new GoComplex128(stdgo.math.Math.copysign(((1 : GoFloat64)), _re), stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
            };
            return new GoComplex128(stdgo.math.Math.copysign(((1 : GoFloat64)), _re), stdgo.math.Math.copysign(((0 : GoFloat64)), stdgo.math.Math.sin(((2 : GoFloat64)) * _im)));
        } else if ((_im == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_re)) {
            return _x;
        };
    };
    var _d:GoFloat64 = stdgo.math.Math.cosh(((2 : GoFloat64)) * _x.real) + stdgo.math.Math.cos(((2 : GoFloat64)) * _x.imag);
    if (_d == ((0 : GoFloat64))) {
        return inf();
    };
    return new GoComplex128(stdgo.math.Math.sinh(((2 : GoFloat64)) * _x.real) / _d, stdgo.math.Math.sin(((2 : GoFloat64)) * _x.imag) / _d);
}
/**
    // reducePi reduces the input argument x to the range (-Pi/2, Pi/2].
    // x must be greater than or equal to 0. For small arguments it
    // uses Cody-Waite reduction in 3 float64 parts based on:
    // "Elementary Function Evaluation:  Algorithms and Implementation"
    // Jean-Michel Muller, 1997.
    // For very large arguments it uses Payne-Hanek range reduction based on:
    // "ARGUMENT REDUCTION FOR HUGE ARGUMENTS: Good to the Last Bit"
    // K. C. Ng et al, March 24, 1992.
**/
function _reducePi(_x:GoFloat64):GoFloat64 {
    {};
    if (stdgo.math.Math.abs(_x) < ((1.073741824e+09 : GoFloat64))) {
        {};
        var _t:GoFloat64 = _x / ((3.141592653589793 : GoFloat64));
        _t = _t + (((0.5 : GoFloat64)));
        _t = ((((_t : GoInt64)) : GoFloat64));
        return ((_x - (_t * ((3.141592502593994 : GoFloat64)))) - (_t * ((1.5099578831723193e-07 : GoFloat64)))) - (_t * ((1.0780605716316238e-14 : GoFloat64)));
    };
    {};
    var _ix:GoUInt64 = stdgo.math.Math.float64bits(_x);
    var _exp:GoInt = (((((_ix >> ((52 : GoUnTypedInt))) & ((2047 : GoUInt64))) : GoInt)) - ((1023 : GoInt))) - ((52 : GoInt));
    _ix = _ix & ((("4503599627370495" : GoUInt64)));
    _ix = _ix | ((("4503599627370496" : GoUInt64)));
    var _mPi:GoArray<GoUInt64> = new GoArray<GoUInt64>(
((0 : GoUInt64)),
(("5871781006564002452" : GoUInt64)),
(("18308165927316385504" : GoUInt64)),
(("7904181063698728992" : GoUInt64)),
(("18386141011142107824" : GoUInt64)),
(("15821769039155751280" : GoUInt64)),
(("226472410124699918" : GoUInt64)),
(("9155525084211106719" : GoUInt64)),
(("8377006445469475394" : GoUInt64)),
(("8416726409370648352" : GoUInt64)),
(("11297538173999619322" : GoUInt64)),
(("5639122210317440029" : GoUInt64)),
(("10375251204153461767" : GoUInt64)),
(("17840878831444244111" : GoUInt64)),
(("13158180450388509915" : GoUInt64)),
(("12079533480525952278" : GoUInt64)),
(("13444332734028904637" : GoUInt64)),
(("11422145685100251509" : GoUInt64)),
(("3890458997777936004" : GoUInt64)),
(("3098925296816862677" : GoUInt64))).copy();
    var _digit:GoUInt = (((_exp + ((64 : GoInt))) : GoUInt)) / ((64 : GoUInt)), _bitshift:GoUInt = (((_exp + ((64 : GoInt))) : GoUInt)) % ((64 : GoUInt));
    var _z0:GoUInt64 = (_mPi[_digit] << _bitshift) | (_mPi[_digit + ((1 : GoUInt))] >> (((64 : GoUInt)) - _bitshift));
    var _z1:GoUInt64 = (_mPi[_digit + ((1 : GoUInt))] << _bitshift) | (_mPi[_digit + ((2 : GoUInt))] >> (((64 : GoUInt)) - _bitshift));
    var _z2:GoUInt64 = (_mPi[_digit + ((2 : GoUInt))] << _bitshift) | (_mPi[_digit + ((3 : GoUInt))] >> (((64 : GoUInt)) - _bitshift));
    var __tmp__ = stdgo.math.bits.Bits.mul64(_z2, _ix), _z2hi:GoUInt64 = __tmp__._0, _:GoUInt64 = __tmp__._1;
    var __tmp__ = stdgo.math.bits.Bits.mul64(_z1, _ix), _z1hi:GoUInt64 = __tmp__._0, _z1lo:GoUInt64 = __tmp__._1;
    var _z0lo:GoUInt64 = _z0 * _ix;
    var __tmp__ = stdgo.math.bits.Bits.add64(_z1lo, _z2hi, ((0 : GoUInt64))), _lo:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
    var __tmp__ = stdgo.math.bits.Bits.add64(_z0lo, _z1hi, _c), _hi:GoUInt64 = __tmp__._0, _:GoUInt64 = __tmp__._1;
    var _lz:GoUInt = ((stdgo.math.bits.Bits.leadingZeros64(_hi) : GoUInt));
    var _e:GoUInt64 = (((((1023 : GoUInt)) - (_lz + ((1 : GoUInt)))) : GoUInt64));
    _hi = (_hi << (_lz + ((1 : GoUInt)))) | (_lo >> (((64 : GoUInt)) - (_lz + ((1 : GoUInt)))));
    _hi = _hi >> (((12 : GoUnTypedInt)));
    _hi = _hi | (_e << ((52 : GoUnTypedInt)));
    _x = stdgo.math.Math.float64frombits(_hi);
    if (_x > ((0.5 : GoFloat64))) {
        _x--;
    };
    return ((3.141592653589793 : GoFloat64)) * _x;
}
/**
    // Taylor series expansion for cosh(2y) - cos(2x)
**/
function _tanSeries(_z:GoComplex128):GoFloat64 {
    {};
    var _x:GoFloat64 = stdgo.math.Math.abs(((2 : GoFloat64)) * _z.real);
    var _y:GoFloat64 = stdgo.math.Math.abs(((2 : GoFloat64)) * _z.imag);
    _x = _reducePi(_x);
    _x = _x * _x;
    _y = _y * _y;
    var _x2:GoFloat64 = ((1 : GoFloat64));
    var _y2:GoFloat64 = ((1 : GoFloat64));
    var _f:GoFloat64 = ((1 : GoFloat64));
    var _rn:GoFloat64 = ((0 : GoFloat64));
    var _d:GoFloat64 = ((0 : GoFloat64));
    while (true) {
        _rn++;
        _f = _f * (_rn);
        _rn++;
        _f = _f * (_rn);
        _x2 = _x2 * (_x);
        _y2 = _y2 * (_y);
        var _t:GoFloat64 = _y2 + _x2;
        _t = _t / (_f);
        _d = _d + (_t);
        _rn++;
        _f = _f * (_rn);
        _rn++;
        _f = _f * (_rn);
        _x2 = _x2 * (_x);
        _y2 = _y2 * (_y);
        _t = _y2 - _x2;
        _t = _t / (_f);
        _d = _d + (_t);
        if (!(stdgo.math.Math.abs(_t / _d) > ((1.1102230246251565e-16 : GoFloat64)))) {
            break;
        };
    };
    return _d;
}
/**
    // Cot returns the cotangent of x.
**/
function cot(_x:GoComplex128):GoComplex128 {
    var _d:GoFloat64 = stdgo.math.Math.cosh(((2 : GoFloat64)) * _x.imag) - stdgo.math.Math.cos(((2 : GoFloat64)) * _x.real);
    if (stdgo.math.Math.abs(_d) < ((0.25 : GoFloat64))) {
        _d = _tanSeries(_x);
    };
    if (_d == ((0 : GoFloat64))) {
        return inf();
    };
    return new GoComplex128(stdgo.math.Math.sin(((2 : GoFloat64)) * _x.real) / _d, -stdgo.math.Math.sinh(((2 : GoFloat64)) * _x.imag) / _d);
}
