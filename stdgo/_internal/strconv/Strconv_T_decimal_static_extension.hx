package stdgo._internal.strconv;
@:keep @:allow(stdgo._internal.strconv.Strconv.T_decimal_asInterface) class T_decimal_static_extension {
    @:keep
    static public function roundedInteger( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>):stdgo.GoUInt64 {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> = _a;
        if ((_a._dp > (20 : stdgo.GoInt) : Bool)) {
            return (-1i64 : stdgo.GoUInt64);
        };
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            _i = (0 : stdgo.GoInt);
            while (((_i < _a._dp : Bool) && (_i < _a._nd : Bool) : Bool)) {
                _n = ((_n * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + ((_a._d[(_i : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) : stdgo.GoUInt64);
                _i++;
            };
        };
        while ((_i < _a._dp : Bool)) {
            _n = (_n * ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _i++;
        };
        if (stdgo._internal.strconv.Strconv__shouldRoundUp._shouldRoundUp(_a, _a._dp)) {
            _n++;
        };
        return _n;
    }
    @:keep
    static public function roundUp( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> = _a;
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= _a._nd : Bool) : Bool)) {
            return;
        };
        {
            var _i = (_nd - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _c = (_a._d[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c < (57 : stdgo.GoUInt8) : Bool)) {
                    _a._d[(_i : stdgo.GoInt)]++;
                    _a._nd = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    return;
                };
                _i--;
            };
        };
        _a._d[(0 : stdgo.GoInt)] = (49 : stdgo.GoUInt8);
        _a._nd = (1 : stdgo.GoInt);
        _a._dp++;
    }
    @:keep
    static public function roundDown( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> = _a;
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= _a._nd : Bool) : Bool)) {
            return;
        };
        _a._nd = _nd;
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }
    @:keep
    static public function round( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> = _a;
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= _a._nd : Bool) : Bool)) {
            return;
        };
        if (stdgo._internal.strconv.Strconv__shouldRoundUp._shouldRoundUp(_a, _nd)) {
            _a.roundUp(_nd);
        } else {
            _a.roundDown(_nd);
        };
    }
    @:keep
    static public function shift( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>, _k:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> = _a;
        if (_a._nd == ((0 : stdgo.GoInt))) {} else if ((_k > (0 : stdgo.GoInt) : Bool)) {
            while ((_k > (28 : stdgo.GoInt) : Bool)) {
                stdgo._internal.strconv.Strconv__leftShift._leftShift(_a, (28u32 : stdgo.GoUInt));
                _k = (_k - ((28 : stdgo.GoInt)) : stdgo.GoInt);
            };
            stdgo._internal.strconv.Strconv__leftShift._leftShift(_a, (_k : stdgo.GoUInt));
        } else if ((_k < (0 : stdgo.GoInt) : Bool)) {
            while ((_k < (-28 : stdgo.GoInt) : Bool)) {
                stdgo._internal.strconv.Strconv__rightShift._rightShift(_a, (28u32 : stdgo.GoUInt));
                _k = (_k + ((28 : stdgo.GoInt)) : stdgo.GoInt);
            };
            stdgo._internal.strconv.Strconv__rightShift._rightShift(_a, (-_k : stdgo.GoUInt));
        };
    }
    @:keep
    static public function assign( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>, _v:stdgo.GoUInt64):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> = _a;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24, ...[for (i in 0 ... 24) (0 : stdgo.GoUInt8)]);
        var _n = (0 : stdgo.GoInt);
        while ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
            var _v1 = (_v / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _v = (_v - (((10i64 : stdgo.GoUInt64) * _v1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _buf[(_n : stdgo.GoInt)] = ((_v + (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _n++;
            _v = _v1;
        };
        _a._nd = (0 : stdgo.GoInt);
        {
            _n--;
            while ((_n >= (0 : stdgo.GoInt) : Bool)) {
                _a._d[(_a._nd : stdgo.GoInt)] = _buf[(_n : stdgo.GoInt)];
_a._nd++;
                _n--;
            };
        };
        _a._dp = _a._nd;
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }
    @:keep
    static public function string( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> = _a;
        var _n = ((10 : stdgo.GoInt) + _a._nd : stdgo.GoInt);
        if ((_a._dp > (0 : stdgo.GoInt) : Bool)) {
            _n = (_n + (_a._dp) : stdgo.GoInt);
        };
        if ((_a._dp < (0 : stdgo.GoInt) : Bool)) {
            _n = (_n + (-_a._dp) : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _w = (0 : stdgo.GoInt);
        if (_a._nd == ((0 : stdgo.GoInt))) {
            return ("0" : stdgo.GoString);
        } else if ((_a._dp <= (0 : stdgo.GoInt) : Bool)) {
            _buf[(_w : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
            _w++;
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
            _w++;
            _w = (_w + (stdgo._internal.strconv.Strconv__digitZero._digitZero((_buf.__slice__(_w, (_w + -_a._dp : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_a._d.__slice__((0 : stdgo.GoInt), _a._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        } else if ((_a._dp < _a._nd : Bool)) {
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_a._d.__slice__((0 : stdgo.GoInt), _a._dp) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
            _w++;
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_a._d.__slice__(_a._dp, _a._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        } else {
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_a._d.__slice__((0 : stdgo.GoInt), _a._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _w = (_w + (stdgo._internal.strconv.Strconv__digitZero._digitZero((_buf.__slice__(_w, ((_w + _a._dp : stdgo.GoInt) - _a._nd : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        return ((_buf.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _floatBits( _d:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> = _d;
        var _b = (0 : stdgo.GoUInt64), _overflow = false;
        var _bits_2618792:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n_2618229:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_2617905:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_2617748:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mant_2617303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _exp_2617290:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_d._nd == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2617365i32;
                    } else {
                        _gotoNext = 2617558i32;
                    };
                } else if (__value__ == (2617365i32)) {
                    _mant_2617303 = (0i64 : stdgo.GoUInt64);
                    _exp_2617290 = _flt._bias;
                    _gotoNext = 2618767i32;
                } else if (__value__ == (2617558i32)) {
                    if ((_d._dp > (310 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2617572i32;
                    } else {
                        _gotoNext = 2617594i32;
                    };
                } else if (__value__ == (2617572i32)) {
                    _gotoNext = 2618682i32;
                } else if (__value__ == (2617594i32)) {
                    if ((_d._dp < (-330 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2617609i32;
                    } else {
                        _gotoNext = 2617718i32;
                    };
                } else if (__value__ == (2617609i32)) {
                    _mant_2617303 = (0i64 : stdgo.GoUInt64);
                    _exp_2617290 = _flt._bias;
                    _gotoNext = 2618767i32;
                } else if (__value__ == (2617718i32)) {
                    _exp_2617290 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2617727i32;
                } else if (__value__ == (2617727i32)) {
                    if ((_d._dp > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2617740i32;
                    } else {
                        _gotoNext = 2617855i32;
                    };
                } else if (__value__ == (2617740i32)) {
                    if ((_d._dp >= (stdgo._internal.strconv.Strconv__powtab._powtab.length) : Bool)) {
                        _gotoNext = 2617779i32;
                    } else {
                        _gotoNext = 2617800i32;
                    };
                } else if (__value__ == (2617779i32)) {
                    _n_2617748 = (27 : stdgo.GoInt);
                    _gotoNext = 2617828i32;
                } else if (__value__ == (2617800i32)) {
                    _gotoNext = 2617800i32;
                    _n_2617748 = stdgo._internal.strconv.Strconv__powtab._powtab[(_d._dp : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 2617828i32;
                } else if (__value__ == (2617828i32)) {
                    _d.shift(-_n_2617748);
                    _exp_2617290 = (_exp_2617290 + (_n_2617748) : stdgo.GoInt);
                    _gotoNext = 2617727i32;
                } else if (__value__ == (2617855i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2617855i32;
                    if (((_d._dp < (0 : stdgo.GoInt) : Bool) || (_d._dp == ((0 : stdgo.GoInt)) && (_d._d[(0 : stdgo.GoInt)] < (53 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 2617897i32;
                    } else {
                        _gotoNext = 2618074i32;
                    };
                } else if (__value__ == (2617897i32)) {
                    if ((-_d._dp >= (stdgo._internal.strconv.Strconv__powtab._powtab.length) : Bool)) {
                        _gotoNext = 2617937i32;
                    } else {
                        _gotoNext = 2617958i32;
                    };
                } else if (__value__ == (2617937i32)) {
                    _n_2617905 = (27 : stdgo.GoInt);
                    _gotoNext = 2617987i32;
                } else if (__value__ == (2617958i32)) {
                    _gotoNext = 2617958i32;
                    _n_2617905 = stdgo._internal.strconv.Strconv__powtab._powtab[(-_d._dp : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 2617987i32;
                } else if (__value__ == (2617987i32)) {
                    _d.shift(_n_2617905);
                    _exp_2617290 = (_exp_2617290 - (_n_2617905) : stdgo.GoInt);
                    _gotoNext = 2617855i32;
                } else if (__value__ == (2618074i32)) {
                    _exp_2617290--;
                    if ((_exp_2617290 < (_flt._bias + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2618225i32;
                    } else {
                        _gotoNext = 2618283i32;
                    };
                } else if (__value__ == (2618225i32)) {
                    _n_2618229 = ((_flt._bias + (1 : stdgo.GoInt) : stdgo.GoInt) - _exp_2617290 : stdgo.GoInt);
                    _d.shift(-_n_2618229);
                    _exp_2617290 = (_exp_2617290 + (_n_2618229) : stdgo.GoInt);
                    _gotoNext = 2618283i32;
                } else if (__value__ == (2618283i32)) {
                    if (((_exp_2617290 - _flt._bias : stdgo.GoInt) >= (((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2618319i32;
                    } else {
                        _gotoNext = 2618375i32;
                    };
                } else if (__value__ == (2618319i32)) {
                    _gotoNext = 2618682i32;
                } else if (__value__ == (2618375i32)) {
                    _d.shift((((1u32 : stdgo.GoUInt) + _flt._mantbits : stdgo.GoUInt) : stdgo.GoInt));
                    _mant_2617303 = _d.roundedInteger();
                    if (_mant_2617303 == (((2i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64))) {
                        _gotoNext = 2618511i32;
                    } else {
                        _gotoNext = 2618618i32;
                    };
                } else if (__value__ == (2618511i32)) {
                    _mant_2617303 = (_mant_2617303 >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _exp_2617290++;
                    if (((_exp_2617290 - _flt._bias : stdgo.GoInt) >= (((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2618572i32;
                    } else {
                        _gotoNext = 2618618i32;
                    };
                } else if (__value__ == (2618572i32)) {
                    _gotoNext = 2618682i32;
                } else if (__value__ == (2618618i32)) {
                    if ((_mant_2617303 & (((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2618649i32;
                    } else {
                        _gotoNext = 2618672i32;
                    };
                } else if (__value__ == (2618649i32)) {
                    _exp_2617290 = _flt._bias;
                    _gotoNext = 2618672i32;
                } else if (__value__ == (2618672i32)) {
                    _gotoNext = 2618767i32;
                } else if (__value__ == (2618682i32)) {
                    _mant_2617303 = (0i64 : stdgo.GoUInt64);
                    _exp_2617290 = ((((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) + _flt._bias : stdgo.GoInt);
                    _overflow = true;
                    _gotoNext = 2618767i32;
                } else if (__value__ == (2618767i32)) {
                    _bits_2618792 = (_mant_2617303 & ((((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _bits_2618792 = (_bits_2618792 | ((((((_exp_2617290 - _flt._bias : stdgo.GoInt)) & ((((1 : stdgo.GoInt) << _flt._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    if (_d._neg) {
                        _gotoNext = 2618914i32;
                    } else {
                        _gotoNext = 2618963i32;
                    };
                } else if (__value__ == (2618914i32)) {
                    _bits_2618792 = (_bits_2618792 | ((((1i64 : stdgo.GoUInt64) << _flt._mantbits : stdgo.GoUInt64) << _flt._expbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _gotoNext = 2618963i32;
                } else if (__value__ == (2618963i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : _bits_2618792, _1 : _overflow };
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
    static public function _set( _b:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>, _s:stdgo.GoString):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> = _b;
        var _ok = false;
        var _i = (0 : stdgo.GoInt);
        _b._neg = false;
        _b._trunc = false;
        if ((_i >= (_s.length) : Bool)) {
            return _ok;
        };
        if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _i++;
        } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _b._neg = true;
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
                _b._dp = _b._nd;
                {
                    _i++;
                    continue;
                };
            } else if ((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _sawdigits = true;
                if (((_s[(_i : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) && (_b._nd == (0 : stdgo.GoInt)) : Bool)) {
                    _b._dp--;
                    {
                        _i++;
                        continue;
                    };
                };
                if ((_b._nd < (_b._d.length) : Bool)) {
                    _b._d[(_b._nd : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
                    _b._nd++;
                } else if (_s[(_i : stdgo.GoInt)] != ((48 : stdgo.GoUInt8))) {
                    _b._trunc = true;
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
            _b._dp = _b._nd;
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
            _b._dp = (_b._dp + ((_e * _esign : stdgo.GoInt)) : stdgo.GoInt);
        };
        if (_i != ((_s.length))) {
            return _ok;
        };
        _ok = true;
        return _ok;
    }
}
