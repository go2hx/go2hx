package stdgo._internal.math.rand;
@:keep @:allow(stdgo._internal.math.rand.Rand.Rand_asInterface) class Rand_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            final __type__ = (@:checkr _r ?? throw "null pointer dereference")._src;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>))) {
                var _src:stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>) : __type__.__underlying__().value;
                return {
                    final __tmp__ = @:check2r _src._read(_p, stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._readVal), stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._readPos));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _n, _1 : _err };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>))) {
                var _src:stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_fastsource.T_fastSource>) : __type__.__underlying__().value;
                return {
                    final __tmp__ = @:check2r _src._read(_p, stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._readVal), stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._readPos));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _n, _1 : _err };
                };
            };
        };
        return {
            final __tmp__ = stdgo._internal.math.rand.Rand__read._read(_p, (@:checkr _r ?? throw "null pointer dereference")._src, stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._readVal), stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._readPos));
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function shuffle( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Shuffle" : stdgo.GoString));
        };
        var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_i > (2147483646 : stdgo.GoInt) : Bool)) {
            var _j = (@:check2r _r.int63n(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt);
_swap(_i, _j);
            _i--;
        };
        while ((_i > (0 : stdgo.GoInt) : Bool)) {
            var _j = (@:check2r _r._int31n(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32)) : stdgo.GoInt);
_swap(_i, _j);
            _i--;
        };
    }
    @:keep
    @:tdfield
    static public function perm( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _m = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _j = (@:check2r _r.intn((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
_m[(_i : stdgo.GoInt)] = _m[(_j : stdgo.GoInt)];
_m[(_j : stdgo.GoInt)] = _i;
                _i++;
            };
        };
        return _m;
    }
    @:keep
    @:tdfield
    static public function float32( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _f_1:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2838469i32;
                } else if (__value__ == (2838469i32)) {
                    _f_1 = (@:check2r _r.float64() : stdgo.GoFloat32);
                    if (_f_1 == (1 : stdgo.GoFloat64)) {
                        _gotoNext = 2838514i32;
                    } else {
                        _gotoNext = 2838582i32;
                    };
                } else if (__value__ == (2838514i32)) {
                    _gotoNext = 2838469i32;
                } else if (__value__ == (2838582i32)) {
                    return _f_1;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function float64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _f_0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2838001i32;
                } else if (__value__ == (2838001i32)) {
                    _f_0 = ((@:check2r _r.int63() : stdgo.GoFloat64) / (9.223372036854776e+18 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    if (_f_0 == (1 : stdgo.GoFloat64)) {
                        _gotoNext = 2838056i32;
                    } else {
                        _gotoNext = 2838118i32;
                    };
                } else if (__value__ == (2838056i32)) {
                    _gotoNext = 2838001i32;
                } else if (__value__ == (2838118i32)) {
                    return _f_0;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function intn( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Intn" : stdgo.GoString));
        };
        if ((_n <= (2147483647 : stdgo.GoInt) : Bool)) {
            return (@:check2r _r.int31n((_n : stdgo.GoInt32)) : stdgo.GoInt);
        };
        return (@:check2r _r.int63n((_n : stdgo.GoInt64)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _int31n( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _v = (@:check2r _r.uint32() : stdgo.GoUInt32);
        var _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _low = (_prod : stdgo.GoUInt32);
        if ((_low < (_n : stdgo.GoUInt32) : Bool)) {
            var _thresh = ((-_n : stdgo.GoUInt32) % (_n : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_low < _thresh : Bool)) {
                _v = @:check2r _r.uint32();
                _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
                _low = (_prod : stdgo.GoUInt32);
            };
        };
        return ((_prod >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function int31n( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        if ((_n <= (0 : stdgo.GoInt32) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Int31n" : stdgo.GoString));
        };
        if ((_n & ((_n - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
            return (@:check2r _r.int31() & ((_n - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        var _max = (((2147483647u32 : stdgo.GoUInt32) - ((-2147483648u32 : stdgo.GoUInt32) % (_n : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt32);
        var _v = (@:check2r _r.int31() : stdgo.GoInt32);
        while ((_v > _max : Bool)) {
            _v = @:check2r _r.int31();
        };
        return (_v % _n : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function int63n( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        if ((_n <= (0i64 : stdgo.GoInt64) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Int63n" : stdgo.GoString));
        };
        if ((_n & ((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
            return (@:check2r _r.int63() & ((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        var _max = (((9223372036854775807i64 : stdgo.GoUInt64) - ((-9223372036854775808i64 : stdgo.GoUInt64) % (_n : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        var _v = (@:check2r _r.int63() : stdgo.GoInt64);
        while ((_v > _max : Bool)) {
            _v = @:check2r _r.int63();
        };
        return (_v % _n : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function int_( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        var _u = (@:check2r _r.int63() : stdgo.GoUInt);
        return (((_u << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function int31( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        return ((@:check2r _r.int63() >> (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function uint64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._s64 != null) {
            return (@:checkr _r ?? throw "null pointer dereference")._s64.uint64();
        };
        return (((@:check2r _r.int63() : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((@:check2r _r.int63() : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function uint32( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoUInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        return ((@:check2r _r.int63() >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function int63( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._src.int63();
    }
    @:keep
    @:tdfield
    static public function seed( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._src) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>)) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_lockedsource.T_lockedSource>), _1 : false };
            }, _lk = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                @:check2r _lk._seedPos(_seed, stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._readPos));
                return;
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._src.seed(_seed);
        (@:checkr _r ?? throw "null pointer dereference")._readPos = (0 : stdgo.GoInt8);
    }
    @:keep
    @:tdfield
    static public function normFloat64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        while (true) {
            var _j = (@:check2r _r.uint32() : stdgo.GoInt32);
            var _i = (_j & (127 : stdgo.GoInt32) : stdgo.GoInt32);
            var _x = ((_j : stdgo.GoFloat64) * (stdgo._internal.math.rand.Rand__wn._wn[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64);
            if ((stdgo._internal.math.rand.Rand__absint32._absInt32(_j) < stdgo._internal.math.rand.Rand__kn._kn[(_i : stdgo.GoInt)] : Bool)) {
                return _x;
            };
            if (_i == ((0 : stdgo.GoInt32))) {
                while (true) {
                    _x = (-stdgo._internal.math.Math_log.log(@:check2r _r.float64()) * (0.29047645161474317 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    var _y = (-stdgo._internal.math.Math_log.log(@:check2r _r.float64()) : stdgo.GoFloat64);
                    if (((_y + _y : stdgo.GoFloat64) >= (_x * _x : stdgo.GoFloat64) : Bool)) {
                        break;
                    };
                };
                if ((_j > (0 : stdgo.GoInt32) : Bool)) {
                    return ((3.442619855899 : stdgo.GoFloat64) + _x : stdgo.GoFloat64);
                };
                return ((-3.442619855899 : stdgo.GoFloat64) - _x : stdgo.GoFloat64);
            };
            if (((stdgo._internal.math.rand.Rand__fn._fn[(_i : stdgo.GoInt)] + ((@:check2r _r.float64() : stdgo.GoFloat32) * ((stdgo._internal.math.rand.Rand__fn._fn[((_i - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] - stdgo._internal.math.rand.Rand__fn._fn[(_i : stdgo.GoInt)] : stdgo.GoFloat32)) : stdgo.GoFloat32) : stdgo.GoFloat32) < (stdgo._internal.math.Math_exp.exp((((-0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) * _x : stdgo.GoFloat64)) : stdgo.GoFloat32) : Bool)) {
                return _x;
            };
        };
    }
    @:keep
    @:tdfield
    static public function expFloat64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = _r;
        while (true) {
            var _j = (@:check2r _r.uint32() : stdgo.GoUInt32);
            var _i = (_j & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            var _x = ((_j : stdgo.GoFloat64) * (stdgo._internal.math.rand.Rand__we._we[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64);
            if ((_j < stdgo._internal.math.rand.Rand__ke._ke[(_i : stdgo.GoInt)] : Bool)) {
                return _x;
            };
            if (_i == ((0u32 : stdgo.GoUInt32))) {
                return ((7.69711747013105 : stdgo.GoFloat64) - stdgo._internal.math.Math_log.log(@:check2r _r.float64()) : stdgo.GoFloat64);
            };
            if (((stdgo._internal.math.rand.Rand__fe._fe[(_i : stdgo.GoInt)] + ((@:check2r _r.float64() : stdgo.GoFloat32) * ((stdgo._internal.math.rand.Rand__fe._fe[((_i - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] - stdgo._internal.math.rand.Rand__fe._fe[(_i : stdgo.GoInt)] : stdgo.GoFloat32)) : stdgo.GoFloat32) : stdgo.GoFloat32) < (stdgo._internal.math.Math_exp.exp(-_x) : stdgo.GoFloat32) : Bool)) {
                return _x;
            };
        };
    }
}
