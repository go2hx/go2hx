package stdgo._internal.math.cmplx;
function _reducePi(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((stdgo._internal.math.Math_abs.abs(_x) < (1.073741824e+09 : stdgo.GoFloat64) : Bool)) {
            {};
            var _t = (_x / (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _t = (_t + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _t = ((_t : stdgo.GoInt64) : stdgo.GoFloat64);
            return (((((_x - (_t * (3.141592502593994 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_t * (1.5099578831723193e-07 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_t * (1.0780605716316238e-14 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        {};
        var _ix = (stdgo._internal.math.Math_float64bits.float64bits(_x) : stdgo.GoUInt64);
        var _exp = (((((_ix >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) - (1023 : stdgo.GoInt) : stdgo.GoInt) - (52 : stdgo.GoInt) : stdgo.GoInt);
        _ix = (_ix & ((4503599627370495i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _ix = (_ix | ((4503599627370496i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _mPi = (new stdgo.GoArray<stdgo.GoUInt64>(20, 20, ...[
(0i64 : stdgo.GoUInt64),
(5871781006564002452i64 : stdgo.GoUInt64),
(-138578146393166112i64 : stdgo.GoUInt64),
(7904181063698728992i64 : stdgo.GoUInt64),
(-60603062567443792i64 : stdgo.GoUInt64),
(-2624975034553800336i64 : stdgo.GoUInt64),
(226472410124699918i64 : stdgo.GoUInt64),
(9155525084211106719i64 : stdgo.GoUInt64),
(8377006445469475394i64 : stdgo.GoUInt64),
(8416726409370648352i64 : stdgo.GoUInt64),
(-7149205899709932294i64 : stdgo.GoUInt64),
(5639122210317440029i64 : stdgo.GoUInt64),
(-8071492869556089849i64 : stdgo.GoUInt64),
(-605865242265307505i64 : stdgo.GoUInt64),
(-5288563623321041701i64 : stdgo.GoUInt64),
(-6367210593183599338i64 : stdgo.GoUInt64),
(-5002411339680646979i64 : stdgo.GoUInt64),
(-7024598388609300107i64 : stdgo.GoUInt64),
(3890458997777936004i64 : stdgo.GoUInt64),
(3098925296816862677i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)?.__copy__();
        var __0 = (((_exp + (64 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) / (64u32 : stdgo.GoUInt) : stdgo.GoUInt), __1 = (((_exp + (64 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) % (64u32 : stdgo.GoUInt) : stdgo.GoUInt);
var _bitshift = __1, _digit = __0;
        var _z0 = (((_mPi[(_digit : stdgo.GoInt)] << _bitshift : stdgo.GoUInt64)) | ((_mPi[((_digit + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] >> (((64u32 : stdgo.GoUInt) - _bitshift : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _z1 = (((_mPi[((_digit + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] << _bitshift : stdgo.GoUInt64)) | ((_mPi[((_digit + (2u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] >> (((64u32 : stdgo.GoUInt) - _bitshift : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _z2 = (((_mPi[((_digit + (2u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] << _bitshift : stdgo.GoUInt64)) | ((_mPi[((_digit + (3u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] >> (((64u32 : stdgo.GoUInt) - _bitshift : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_z2, _ix), _z2hi:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_z1, _ix), _z1hi:stdgo.GoUInt64 = __tmp__._0, _z1lo:stdgo.GoUInt64 = __tmp__._1;
        var _z0lo = (_z0 * _ix : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_z1lo, _z2hi, (0i64 : stdgo.GoUInt64)), _lo:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_z0lo, _z1hi, _c), _hi:stdgo.GoUInt64 = __tmp__._0, __1:stdgo.GoUInt64 = __tmp__._1;
        var _lz = (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_hi) : stdgo.GoUInt);
        var _e = (((1023u32 : stdgo.GoUInt) - ((_lz + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt64);
        _hi = (((_hi << ((_lz + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) | ((_lo >> (((64u32 : stdgo.GoUInt) - ((_lz + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _hi = (_hi >> ((12i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _hi = (_hi | ((_e << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _x = stdgo._internal.math.Math_float64frombits.float64frombits(_hi);
        if ((_x > (0.5 : stdgo.GoFloat64) : Bool)) {
            _x--;
        };
        return ((3.141592653589793 : stdgo.GoFloat64) * _x : stdgo.GoFloat64);
    }
