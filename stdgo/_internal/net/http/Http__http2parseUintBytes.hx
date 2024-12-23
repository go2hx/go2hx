package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7835647:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7835638:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7835606:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7835028:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7834956:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7834948:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7836078:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7834988i32;
                    } else {
                        _gotoNext = 7835028i32;
                    };
                } else if (__value__ == (7834988i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7835028i32;
                } else if (__value__ == (7835028i32)) {
                    _s0_7835028 = _s;
                    _gotoNext = 7835037i32;
                } else if (__value__ == (7835037i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7835047i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7835105i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7835168i32;
                    } else {
                        _gotoNext = 7835449i32;
                    };
                } else if (__value__ == (7835047i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7836237i32;
                } else if (__value__ == (7835105i32)) {
                    _gotoNext = 7835533i32;
                } else if (__value__ == (7835168i32)) {
                    _gotoNext = 7835219i32;
                } else if (__value__ == (7835219i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7835230i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7835389i32;
                    } else {
                        _gotoNext = 7835421i32;
                    };
                } else if (__value__ == (7835230i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7835337i32;
                    } else {
                        _gotoNext = 7835533i32;
                    };
                } else if (__value__ == (7835337i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7836237i32;
                } else if (__value__ == (7835389i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7835533i32;
                } else if (__value__ == (7835421i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7835533i32;
                } else if (__value__ == (7835449i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7836237i32;
                } else if (__value__ == (7835533i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7834948 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7834956 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7835606 = (0 : stdgo.GoInt);
                    _gotoNext = 7835602i32;
                } else if (__value__ == (7835602i32)) {
                    if ((_i_7835606 < (_s.length) : Bool)) {
                        _gotoNext = 7835630i32;
                    } else {
                        _gotoNext = 7836222i32;
                    };
                } else if (__value__ == (7835630i32)) {
                    _d_7835647 = _s[(_i_7835606 : stdgo.GoInt)];
                    _gotoNext = 7835659i32;
                } else if (__value__ == (7835659i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7835647 : Bool) && (_d_7835647 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7835670i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7835647 : Bool) && (_d_7835647 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7835714i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7835647 : Bool) && (_d_7835647 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7835763i32;
                    } else {
                        _gotoNext = 7835812i32;
                    };
                } else if (__value__ == (7835670i32)) {
                    _v_7835638 = (_d_7835647 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7835877i32;
                } else if (__value__ == (7835714i32)) {
                    _v_7835638 = ((_d_7835647 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7835877i32;
                } else if (__value__ == (7835763i32)) {
                    _v_7835638 = ((_d_7835647 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7835877i32;
                } else if (__value__ == (7835812i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7836237i32;
                } else if (__value__ == (7835877i32)) {
                    if (((_v_7835638 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7835895i32;
                    } else {
                        _gotoNext = 7835954i32;
                    };
                } else if (__value__ == (7835895i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7836237i32;
                } else if (__value__ == (7835954i32)) {
                    if ((_n >= _cutoff_7834948 : Bool)) {
                        _gotoNext = 7835969i32;
                    } else {
                        _gotoNext = 7836057i32;
                    };
                } else if (__value__ == (7835969i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7836237i32;
                } else if (__value__ == (7836057i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7836078 = (_n + (_v_7835638 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7836078 < _n : Bool) || (_n1_7836078 > _maxVal_7834956 : Bool) : Bool)) {
                        _gotoNext = 7836125i32;
                    } else {
                        _gotoNext = 7836210i32;
                    };
                } else if (__value__ == (7836125i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7836237i32;
                } else if (__value__ == (7836210i32)) {
                    _n = _n1_7836078;
                    _i_7835606++;
                    _gotoNext = 7835602i32;
                } else if (__value__ == (7836222i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7836237i32;
                } else if (__value__ == (7836237i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7835028 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
