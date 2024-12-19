package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _maxVal_7674527:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7674519:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7675649:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7675218:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7675209:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7675177:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7674599:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7674559i32;
                    } else {
                        _gotoNext = 7674599i32;
                    };
                } else if (__value__ == (7674559i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7674599i32;
                } else if (__value__ == (7674599i32)) {
                    _s0_7674599 = _s;
                    _gotoNext = 7674608i32;
                } else if (__value__ == (7674608i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7674618i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7674676i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7674739i32;
                    } else {
                        _gotoNext = 7675020i32;
                    };
                } else if (__value__ == (7674618i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7675808i32;
                } else if (__value__ == (7674676i32)) {
                    _gotoNext = 7675104i32;
                } else if (__value__ == (7674739i32)) {
                    _gotoNext = 7674790i32;
                } else if (__value__ == (7674790i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7674801i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7674960i32;
                    } else {
                        _gotoNext = 7674992i32;
                    };
                } else if (__value__ == (7674801i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7674908i32;
                    } else {
                        _gotoNext = 7675104i32;
                    };
                } else if (__value__ == (7674908i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7675808i32;
                } else if (__value__ == (7674960i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7675104i32;
                } else if (__value__ == (7674992i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7675104i32;
                } else if (__value__ == (7675020i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7675808i32;
                } else if (__value__ == (7675104i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7674519 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7674527 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7675177 = (0 : stdgo.GoInt);
                    _gotoNext = 7675173i32;
                } else if (__value__ == (7675173i32)) {
                    if ((_i_7675177 < (_s.length) : Bool)) {
                        _gotoNext = 7675201i32;
                    } else {
                        _gotoNext = 7675793i32;
                    };
                } else if (__value__ == (7675201i32)) {
                    _d_7675218 = _s[(_i_7675177 : stdgo.GoInt)];
                    _gotoNext = 7675230i32;
                } else if (__value__ == (7675230i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7675218 : Bool) && (_d_7675218 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7675241i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7675218 : Bool) && (_d_7675218 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7675285i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7675218 : Bool) && (_d_7675218 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7675334i32;
                    } else {
                        _gotoNext = 7675383i32;
                    };
                } else if (__value__ == (7675241i32)) {
                    _v_7675209 = (_d_7675218 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7675448i32;
                } else if (__value__ == (7675285i32)) {
                    _v_7675209 = ((_d_7675218 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7675448i32;
                } else if (__value__ == (7675334i32)) {
                    _v_7675209 = ((_d_7675218 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7675448i32;
                } else if (__value__ == (7675383i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7675808i32;
                } else if (__value__ == (7675448i32)) {
                    if (((_v_7675209 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7675466i32;
                    } else {
                        _gotoNext = 7675525i32;
                    };
                } else if (__value__ == (7675466i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7675808i32;
                } else if (__value__ == (7675525i32)) {
                    if ((_n >= _cutoff_7674519 : Bool)) {
                        _gotoNext = 7675540i32;
                    } else {
                        _gotoNext = 7675628i32;
                    };
                } else if (__value__ == (7675540i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7675808i32;
                } else if (__value__ == (7675628i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7675649 = (_n + (_v_7675209 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7675649 < _n : Bool) || (_n1_7675649 > _maxVal_7674527 : Bool) : Bool)) {
                        _gotoNext = 7675696i32;
                    } else {
                        _gotoNext = 7675781i32;
                    };
                } else if (__value__ == (7675696i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7675808i32;
                } else if (__value__ == (7675781i32)) {
                    _n = _n1_7675649;
                    _i_7675177++;
                    _gotoNext = 7675173i32;
                } else if (__value__ == (7675793i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7675808i32;
                } else if (__value__ == (7675808i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7674599 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
