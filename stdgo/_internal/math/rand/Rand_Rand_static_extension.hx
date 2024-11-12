package stdgo._internal.math.rand;
@:keep @:allow(stdgo._internal.math.rand.Rand.Rand_asInterface) class Rand_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            final __type__ = _r._src;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>))) {
                var _src:stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>) : __type__.__underlying__().value;
                return _src._read(_p, stdgo.Go.pointer(_r._readVal), stdgo.Go.pointer(_r._readPos));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>))) {
                var _src:stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>) : __type__.__underlying__().value;
                return _src._read(_p, stdgo.Go.pointer(_r._readVal), stdgo.Go.pointer(_r._readPos));
            };
        };
        return stdgo._internal.math.rand.Rand__read._read(_p, _r._src, stdgo.Go.pointer(_r._readVal), stdgo.Go.pointer(_r._readPos));
    }
    @:keep
    static public function shuffle( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _n:stdgo.GoInt, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Shuffle" : stdgo.GoString));
        };
        var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_i > (2147483646 : stdgo.GoInt) : Bool)) {
            var _j = (_r.int63n(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt);
_swap(_i, _j);
            _i--;
        };
        while ((_i > (0 : stdgo.GoInt) : Bool)) {
            var _j = (_r._int31n(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32)) : stdgo.GoInt);
_swap(_i, _j);
            _i--;
        };
    }
    @:keep
    static public function perm( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        var _m = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _j = (_r.intn((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
_m[(_i : stdgo.GoInt)] = _m[(_j : stdgo.GoInt)];
_m[(_j : stdgo.GoInt)] = _i;
                _i++;
            };
        };
        return _m;
    }
    @:keep
    static public function float32( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoFloat32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        var _f_2600801:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2600793i32;
                } else if (__value__ == (2600793i32)) {
                    _f_2600801 = (_r.float64() : stdgo.GoFloat32);
                    if (_f_2600801 == (1 : stdgo.GoFloat64)) {
                        _gotoNext = 2600838i32;
                    } else {
                        _gotoNext = 2600906i32;
                    };
                } else if (__value__ == (2600838i32)) {
                    _gotoNext = 2600793i32;
                } else if (__value__ == (2600906i32)) {
                    return _f_2600801;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function float64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        var _f_2600333:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2600325i32;
                } else if (__value__ == (2600325i32)) {
                    _f_2600333 = ((_r.int63() : stdgo.GoFloat64) / (9.223372036854776e+18 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    if (_f_2600333 == (1 : stdgo.GoFloat64)) {
                        _gotoNext = 2600380i32;
                    } else {
                        _gotoNext = 2600442i32;
                    };
                } else if (__value__ == (2600380i32)) {
                    _gotoNext = 2600325i32;
                } else if (__value__ == (2600442i32)) {
                    return _f_2600333;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function intn( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Intn" : stdgo.GoString));
        };
        if ((_n <= (2147483647 : stdgo.GoInt) : Bool)) {
            return (_r.int31n((_n : stdgo.GoInt32)) : stdgo.GoInt);
        };
        return (_r.int63n((_n : stdgo.GoInt64)) : stdgo.GoInt);
    }
    @:keep
    static public function _int31n( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _n:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        var _v = (_r.uint32() : stdgo.GoUInt32);
        var _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _low = (_prod : stdgo.GoUInt32);
        if ((_low < (_n : stdgo.GoUInt32) : Bool)) {
            var _thresh = ((-_n : stdgo.GoUInt32) % (_n : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_low < _thresh : Bool)) {
                _v = _r.uint32();
                _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
                _low = (_prod : stdgo.GoUInt32);
            };
        };
        return ((_prod >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32);
    }
    @:keep
    static public function int31n( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _n:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        if ((_n <= (0 : stdgo.GoInt32) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Int31n" : stdgo.GoString));
        };
        if ((_n & ((_n - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
            return (_r.int31() & ((_n - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        var _max = (((2147483647u32 : stdgo.GoUInt32) - ((-2147483648u32 : stdgo.GoUInt32) % (_n : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt32);
        var _v = (_r.int31() : stdgo.GoInt32);
        while ((_v > _max : Bool)) {
            _v = _r.int31();
        };
        return (_v % _n : stdgo.GoInt32);
    }
    @:keep
    static public function int63n( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _n:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        if ((_n <= (0i64 : stdgo.GoInt64) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Int63n" : stdgo.GoString));
        };
        if ((_n & ((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
            return (_r.int63() & ((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        var _max = (((9223372036854775807i64 : stdgo.GoUInt64) - ((-9223372036854775808i64 : stdgo.GoUInt64) % (_n : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        var _v = (_r.int63() : stdgo.GoInt64);
        while ((_v > _max : Bool)) {
            _v = _r.int63();
        };
        return (_v % _n : stdgo.GoInt64);
    }
    @:keep
    static public function int_( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        var _u = (_r.int63() : stdgo.GoUInt);
        return (((_u << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
    }
    @:keep
    static public function int31( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        return ((_r.int63() >> (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt32);
    }
    @:keep
    static public function uint64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        if (_r._s64 != null) {
            return _r._s64.uint64();
        };
        return (((_r.int63() : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_r.int63() : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    static public function uint32( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoUInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        return ((_r.int63() >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt32);
    }
    @:keep
    static public function int63( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        return _r._src.int63();
    }
    @:keep
    static public function seed( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r._src) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>)) : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>), _1 : false };
            }, _lk = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _lk._seedPos(_seed, stdgo.Go.pointer(_r._readPos));
                return;
            };
        };
        _r._src.seed(_seed);
        _r._readPos = (0 : stdgo.GoInt8);
    }
    @:keep
    static public function normFloat64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        while (true) {
            var _j = (_r.uint32() : stdgo.GoInt32);
            var _i = (_j & (127 : stdgo.GoInt32) : stdgo.GoInt32);
            var _x = ((_j : stdgo.GoFloat64) * (stdgo._internal.math.rand.Rand__wn._wn[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64);
            if ((stdgo._internal.math.rand.Rand__absInt32._absInt32(_j) < stdgo._internal.math.rand.Rand__kn._kn[(_i : stdgo.GoInt)] : Bool)) {
                return _x;
            };
            if (_i == ((0 : stdgo.GoInt32))) {
                while (true) {
                    _x = (-stdgo._internal.math.Math_log.log(_r.float64()) * (0.29047645161474317 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    var _y = (-stdgo._internal.math.Math_log.log(_r.float64()) : stdgo.GoFloat64);
                    if (((_y + _y : stdgo.GoFloat64) >= (_x * _x : stdgo.GoFloat64) : Bool)) {
                        break;
                    };
                };
                if ((_j > (0 : stdgo.GoInt32) : Bool)) {
                    return ((3.442619855899 : stdgo.GoFloat64) + _x : stdgo.GoFloat64);
                };
                return ((-3.442619855899 : stdgo.GoFloat64) - _x : stdgo.GoFloat64);
            };
            if (((stdgo._internal.math.rand.Rand__fn._fn[(_i : stdgo.GoInt)] + ((_r.float64() : stdgo.GoFloat32) * ((stdgo._internal.math.rand.Rand__fn._fn[((_i - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] - stdgo._internal.math.rand.Rand__fn._fn[(_i : stdgo.GoInt)] : stdgo.GoFloat32)) : stdgo.GoFloat32) : stdgo.GoFloat32) < (stdgo._internal.math.Math_exp.exp((((-0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) * _x : stdgo.GoFloat64)) : stdgo.GoFloat32) : Bool)) {
                return _x;
            };
        };
    }
    @:keep
    static public function expFloat64( _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = _r;
        while (true) {
            var _j = (_r.uint32() : stdgo.GoUInt32);
            var _i = (_j & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            var _x = ((_j : stdgo.GoFloat64) * (stdgo._internal.math.rand.Rand__we._we[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64);
            if ((_j < stdgo._internal.math.rand.Rand__ke._ke[(_i : stdgo.GoInt)] : Bool)) {
                return _x;
            };
            if (_i == ((0u32 : stdgo.GoUInt32))) {
                return ((7.69711747013105 : stdgo.GoFloat64) - stdgo._internal.math.Math_log.log(_r.float64()) : stdgo.GoFloat64);
            };
            if (((stdgo._internal.math.rand.Rand__fe._fe[(_i : stdgo.GoInt)] + ((_r.float64() : stdgo.GoFloat32) * ((stdgo._internal.math.rand.Rand__fe._fe[((_i - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] - stdgo._internal.math.rand.Rand__fe._fe[(_i : stdgo.GoInt)] : stdgo.GoFloat32)) : stdgo.GoFloat32) : stdgo.GoFloat32) < (stdgo._internal.math.Math_exp.exp(-_x) : stdgo.GoFloat32) : Bool)) {
                return _x;
            };
        };
    }
}
