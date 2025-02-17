package stdgo._internal.strconv;
@:keep @:allow(stdgo._internal.strconv.Strconv.T_decimal_asInterface) class T_decimal_static_extension {
    @:keep
    @:tdfield
    static public function roundedInteger( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>):stdgo.GoUInt64 {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        if (((@:checkr _a ?? throw "null pointer dereference")._dp > (20 : stdgo.GoInt) : Bool)) {
            return (-1i64 : stdgo.GoUInt64);
        };
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            _i = (0 : stdgo.GoInt);
            while (((_i < (@:checkr _a ?? throw "null pointer dereference")._dp : Bool) && (_i < (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
                _n = ((_n * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (((@:checkr _a ?? throw "null pointer dereference")._d[(_i : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) : stdgo.GoUInt64);
                _i++;
            };
        };
        while ((_i < (@:checkr _a ?? throw "null pointer dereference")._dp : Bool)) {
            _n = (_n * ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _i++;
        };
        if (stdgo._internal.strconv.Strconv__shouldroundup._shouldRoundUp(_a, (@:checkr _a ?? throw "null pointer dereference")._dp)) {
            _n++;
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function roundUp( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
            return;
        };
        {
            var _i = (_nd - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _c = ((@:checkr _a ?? throw "null pointer dereference")._d[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c < (57 : stdgo.GoUInt8) : Bool)) {
                    (@:checkr _a ?? throw "null pointer dereference")._d[(_i : stdgo.GoInt)]++;
                    (@:checkr _a ?? throw "null pointer dereference")._nd = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    return;
                };
                _i--;
            };
        };
        (@:checkr _a ?? throw "null pointer dereference")._d[(0 : stdgo.GoInt)] = (49 : stdgo.GoUInt8);
        (@:checkr _a ?? throw "null pointer dereference")._nd = (1 : stdgo.GoInt);
        (@:checkr _a ?? throw "null pointer dereference")._dp++;
    }
    @:keep
    @:tdfield
    static public function roundDown( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
            return;
        };
        (@:checkr _a ?? throw "null pointer dereference")._nd = _nd;
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }
    @:keep
    @:tdfield
    static public function round( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
            return;
        };
        if (stdgo._internal.strconv.Strconv__shouldroundup._shouldRoundUp(_a, _nd)) {
            @:check2r _a.roundUp(_nd);
        } else {
            @:check2r _a.roundDown(_nd);
        };
    }
    @:keep
    @:tdfield
    static public function shift( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _k:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        if ((@:checkr _a ?? throw "null pointer dereference")._nd == ((0 : stdgo.GoInt))) {} else if ((_k > (0 : stdgo.GoInt) : Bool)) {
            while ((_k > (28 : stdgo.GoInt) : Bool)) {
                stdgo._internal.strconv.Strconv__leftshift._leftShift(_a, (28u32 : stdgo.GoUInt));
                _k = (_k - ((28 : stdgo.GoInt)) : stdgo.GoInt);
            };
            stdgo._internal.strconv.Strconv__leftshift._leftShift(_a, (_k : stdgo.GoUInt));
        } else if ((_k < (0 : stdgo.GoInt) : Bool)) {
            while ((_k < (-28 : stdgo.GoInt) : Bool)) {
                stdgo._internal.strconv.Strconv__rightshift._rightShift(_a, (28u32 : stdgo.GoUInt));
                _k = (_k + ((28 : stdgo.GoInt)) : stdgo.GoInt);
            };
            stdgo._internal.strconv.Strconv__rightshift._rightShift(_a, (-_k : stdgo.GoUInt));
        };
    }
    @:keep
    @:tdfield
    static public function assign( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _v:stdgo.GoUInt64):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24).__setNumber32__();
        var _n = (0 : stdgo.GoInt);
        while ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
            var _v1 = (_v / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _v = (_v - (((10i64 : stdgo.GoUInt64) * _v1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _buf[(_n : stdgo.GoInt)] = ((_v + (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _n++;
            _v = _v1;
        };
        (@:checkr _a ?? throw "null pointer dereference")._nd = (0 : stdgo.GoInt);
        {
            _n--;
            while ((_n >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _a ?? throw "null pointer dereference")._d[((@:checkr _a ?? throw "null pointer dereference")._nd : stdgo.GoInt)] = _buf[(_n : stdgo.GoInt)];
(@:checkr _a ?? throw "null pointer dereference")._nd++;
                _n--;
            };
        };
        (@:checkr _a ?? throw "null pointer dereference")._dp = (@:checkr _a ?? throw "null pointer dereference")._nd;
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        var _n = ((10 : stdgo.GoInt) + (@:checkr _a ?? throw "null pointer dereference")._nd : stdgo.GoInt);
        if (((@:checkr _a ?? throw "null pointer dereference")._dp > (0 : stdgo.GoInt) : Bool)) {
            _n = (_n + ((@:checkr _a ?? throw "null pointer dereference")._dp) : stdgo.GoInt);
        };
        if (((@:checkr _a ?? throw "null pointer dereference")._dp < (0 : stdgo.GoInt) : Bool)) {
            _n = (_n + (-(@:checkr _a ?? throw "null pointer dereference")._dp) : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _w = (0 : stdgo.GoInt);
        if ((@:checkr _a ?? throw "null pointer dereference")._nd == ((0 : stdgo.GoInt))) {
            return ("0" : stdgo.GoString);
        } else if (((@:checkr _a ?? throw "null pointer dereference")._dp <= (0 : stdgo.GoInt) : Bool)) {
            _buf[(_w : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
            _w++;
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
            _w++;
            _w = (_w + (stdgo._internal.strconv.Strconv__digitzero._digitZero((_buf.__slice__(_w, (_w + -(@:checkr _a ?? throw "null pointer dereference")._dp : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _a ?? throw "null pointer dereference")._d.__slice__((0 : stdgo.GoInt), (@:checkr _a ?? throw "null pointer dereference")._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        } else if (((@:checkr _a ?? throw "null pointer dereference")._dp < (@:checkr _a ?? throw "null pointer dereference")._nd : Bool)) {
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _a ?? throw "null pointer dereference")._d.__slice__((0 : stdgo.GoInt), (@:checkr _a ?? throw "null pointer dereference")._dp) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
            _w++;
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _a ?? throw "null pointer dereference")._d.__slice__((@:checkr _a ?? throw "null pointer dereference")._dp, (@:checkr _a ?? throw "null pointer dereference")._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        } else {
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _a ?? throw "null pointer dereference")._d.__slice__((0 : stdgo.GoInt), (@:checkr _a ?? throw "null pointer dereference")._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _w = (_w + (stdgo._internal.strconv.Strconv__digitzero._digitZero((_buf.__slice__(_w, ((_w + (@:checkr _a ?? throw "null pointer dereference")._dp : stdgo.GoInt) - (@:checkr _a ?? throw "null pointer dereference")._nd : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        return ((_buf.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _floatBits( _d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _d;
        var _b = (0 : stdgo.GoUInt64), _overflow = false;
        var _bits_17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n_16:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_15:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mant_13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _exp_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._nd == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2663178i32;
                    } else {
                        _gotoNext = 2663371i32;
                    };
                } else if (__value__ == (2663178i32)) {
                    _mant_13 = (0i64 : stdgo.GoUInt64);
                    _exp_12 = (@:checkr _flt ?? throw "null pointer dereference")._bias;
                    _gotoNext = 2664580i32;
                } else if (__value__ == (2663371i32)) {
                    if (((@:checkr _d ?? throw "null pointer dereference")._dp > (310 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2663385i32;
                    } else {
                        _gotoNext = 2663407i32;
                    };
                } else if (__value__ == (2663385i32)) {
                    _gotoNext = 2664495i32;
                } else if (__value__ == (2663407i32)) {
                    if (((@:checkr _d ?? throw "null pointer dereference")._dp < (-330 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2663422i32;
                    } else {
                        _gotoNext = 2663531i32;
                    };
                } else if (__value__ == (2663422i32)) {
                    _mant_13 = (0i64 : stdgo.GoUInt64);
                    _exp_12 = (@:checkr _flt ?? throw "null pointer dereference")._bias;
                    _gotoNext = 2664580i32;
                } else if (__value__ == (2663531i32)) {
                    _exp_12 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2663540i32;
                } else if (__value__ == (2663540i32)) {
                    if (((@:checkr _d ?? throw "null pointer dereference")._dp > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2663553i32;
                    } else {
                        _gotoNext = 2663668i32;
                    };
                } else if (__value__ == (2663553i32)) {
                    if (((@:checkr _d ?? throw "null pointer dereference")._dp >= (stdgo._internal.strconv.Strconv__powtab._powtab.length) : Bool)) {
                        _gotoNext = 2663592i32;
                    } else {
                        _gotoNext = 2663613i32;
                    };
                } else if (__value__ == (2663592i32)) {
                    _n_14 = (27 : stdgo.GoInt);
                    _gotoNext = 2663641i32;
                } else if (__value__ == (2663613i32)) {
                    _gotoNext = 2663613i32;
                    _n_14 = stdgo._internal.strconv.Strconv__powtab._powtab[((@:checkr _d ?? throw "null pointer dereference")._dp : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 2663641i32;
                } else if (__value__ == (2663641i32)) {
                    @:check2r _d.shift(-_n_14);
                    _exp_12 = (_exp_12 + (_n_14) : stdgo.GoInt);
                    _gotoNext = 2663540i32;
                } else if (__value__ == (2663668i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2663668i32;
                    if ((((@:checkr _d ?? throw "null pointer dereference")._dp < (0 : stdgo.GoInt) : Bool) || ((@:checkr _d ?? throw "null pointer dereference")._dp == ((0 : stdgo.GoInt)) && ((@:checkr _d ?? throw "null pointer dereference")._d[(0 : stdgo.GoInt)] < (53 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 2663710i32;
                    } else {
                        _gotoNext = 2663887i32;
                    };
                } else if (__value__ == (2663710i32)) {
                    if ((-(@:checkr _d ?? throw "null pointer dereference")._dp >= (stdgo._internal.strconv.Strconv__powtab._powtab.length) : Bool)) {
                        _gotoNext = 2663750i32;
                    } else {
                        _gotoNext = 2663771i32;
                    };
                } else if (__value__ == (2663750i32)) {
                    _n_15 = (27 : stdgo.GoInt);
                    _gotoNext = 2663800i32;
                } else if (__value__ == (2663771i32)) {
                    _gotoNext = 2663771i32;
                    _n_15 = stdgo._internal.strconv.Strconv__powtab._powtab[(-(@:checkr _d ?? throw "null pointer dereference")._dp : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 2663800i32;
                } else if (__value__ == (2663800i32)) {
                    @:check2r _d.shift(_n_15);
                    _exp_12 = (_exp_12 - (_n_15) : stdgo.GoInt);
                    _gotoNext = 2663668i32;
                } else if (__value__ == (2663887i32)) {
                    _exp_12--;
                    if ((_exp_12 < ((@:checkr _flt ?? throw "null pointer dereference")._bias + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2664038i32;
                    } else {
                        _gotoNext = 2664096i32;
                    };
                } else if (__value__ == (2664038i32)) {
                    _n_16 = (((@:checkr _flt ?? throw "null pointer dereference")._bias + (1 : stdgo.GoInt) : stdgo.GoInt) - _exp_12 : stdgo.GoInt);
                    @:check2r _d.shift(-_n_16);
                    _exp_12 = (_exp_12 + (_n_16) : stdgo.GoInt);
                    _gotoNext = 2664096i32;
                } else if (__value__ == (2664096i32)) {
                    if (((_exp_12 - (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt) >= (((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2664132i32;
                    } else {
                        _gotoNext = 2664188i32;
                    };
                } else if (__value__ == (2664132i32)) {
                    _gotoNext = 2664495i32;
                } else if (__value__ == (2664188i32)) {
                    @:check2r _d.shift((((1u32 : stdgo.GoUInt) + (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt) : stdgo.GoInt));
                    _mant_13 = @:check2r _d.roundedInteger();
                    if (_mant_13 == (((2i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64))) {
                        _gotoNext = 2664324i32;
                    } else {
                        _gotoNext = 2664431i32;
                    };
                } else if (__value__ == (2664324i32)) {
                    _mant_13 = (_mant_13 >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _exp_12++;
                    if (((_exp_12 - (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt) >= (((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2664385i32;
                    } else {
                        _gotoNext = 2664431i32;
                    };
                } else if (__value__ == (2664385i32)) {
                    _gotoNext = 2664495i32;
                } else if (__value__ == (2664431i32)) {
                    if ((_mant_13 & (((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2664462i32;
                    } else {
                        _gotoNext = 2664485i32;
                    };
                } else if (__value__ == (2664462i32)) {
                    _exp_12 = (@:checkr _flt ?? throw "null pointer dereference")._bias;
                    _gotoNext = 2664485i32;
                } else if (__value__ == (2664485i32)) {
                    _gotoNext = 2664580i32;
                } else if (__value__ == (2664495i32)) {
                    _mant_13 = (0i64 : stdgo.GoUInt64);
                    _exp_12 = ((((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) + (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt);
                    _overflow = true;
                    _gotoNext = 2664580i32;
                } else if (__value__ == (2664580i32)) {
                    _bits_17 = (_mant_13 & ((((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _bits_17 = (_bits_17 | ((((((_exp_12 - (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt)) & ((((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    if ((@:checkr _d ?? throw "null pointer dereference")._neg) {
                        _gotoNext = 2664727i32;
                    } else {
                        _gotoNext = 2664776i32;
                    };
                } else if (__value__ == (2664727i32)) {
                    _bits_17 = (_bits_17 | ((((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _gotoNext = 2664776i32;
                } else if (__value__ == (2664776i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : _bits_17, _1 : _overflow };
                        _b = __tmp__._0;
                        _overflow = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _set( _b:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _s:stdgo.GoString):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _b;
        var _ok = false;
        var _i = (0 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._neg = false;
        (@:checkr _b ?? throw "null pointer dereference")._trunc = false;
        if ((_i >= (_s.length) : Bool)) {
            return _ok;
        };
        if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _i++;
        } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            (@:checkr _b ?? throw "null pointer dereference")._neg = true;
            _i++;
        };
        var _sawdot = (false : Bool);
        var _sawdigits = (false : Bool);
        while ((_i < (_s.length) : Bool)) {
            if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                {
                    _i++;
                    continue;
                };
            } else if (_s[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                if (_sawdot) {
                    return _ok;
                };
                _sawdot = true;
                (@:checkr _b ?? throw "null pointer dereference")._dp = (@:checkr _b ?? throw "null pointer dereference")._nd;
                {
                    _i++;
                    continue;
                };
            } else if ((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _sawdigits = true;
                if (((_s[(_i : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) && ((@:checkr _b ?? throw "null pointer dereference")._nd == (0 : stdgo.GoInt)) : Bool)) {
                    (@:checkr _b ?? throw "null pointer dereference")._dp--;
                    {
                        _i++;
                        continue;
                    };
                };
                if (((@:checkr _b ?? throw "null pointer dereference")._nd < ((@:checkr _b ?? throw "null pointer dereference")._d.length) : Bool)) {
                    (@:checkr _b ?? throw "null pointer dereference")._d[((@:checkr _b ?? throw "null pointer dereference")._nd : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
                    (@:checkr _b ?? throw "null pointer dereference")._nd++;
                } else if (_s[(_i : stdgo.GoInt)] != ((48 : stdgo.GoUInt8))) {
                    (@:checkr _b ?? throw "null pointer dereference")._trunc = true;
                };
                {
                    _i++;
                    continue;
                };
            };
break;
            _i++;
        };
        if (!_sawdigits) {
            return _ok;
        };
        if (!_sawdot) {
            (@:checkr _b ?? throw "null pointer dereference")._dp = (@:checkr _b ?? throw "null pointer dereference")._nd;
        };
        if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == (101 : stdgo.GoUInt8)) : Bool)) {
            _i++;
            if ((_i >= (_s.length) : Bool)) {
                return _ok;
            };
            var _esign = (1 : stdgo.GoInt);
            if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                _i++;
            } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                _i++;
                _esign = (-1 : stdgo.GoInt);
            };
            if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                return _ok;
            };
            var _e = (0 : stdgo.GoInt);
            while (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                    {
                        _i++;
                        continue;
                    };
                };
if ((_e < (10000 : stdgo.GoInt) : Bool)) {
                    _e = (((_e * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                };
                _i++;
            };
            (@:checkr _b ?? throw "null pointer dereference")._dp = ((@:checkr _b ?? throw "null pointer dereference")._dp + ((_e * _esign : stdgo.GoInt)) : stdgo.GoInt);
        };
        if (_i != ((_s.length))) {
            return _ok;
        };
        _ok = true;
        return _ok;
    }
}
