package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7834622:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7835752:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7835321:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7835312:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7835280:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7834702:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7834630:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7834662i32;
                    } else {
                        _gotoNext = 7834702i32;
                    };
                } else if (__value__ == (7834662i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7834702i32;
                } else if (__value__ == (7834702i32)) {
                    _s0_7834702 = _s;
                    _gotoNext = 7834711i32;
                } else if (__value__ == (7834711i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7834721i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7834779i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7834842i32;
                    } else {
                        _gotoNext = 7835123i32;
                    };
                } else if (__value__ == (7834721i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7835911i32;
                } else if (__value__ == (7834779i32)) {
                    _gotoNext = 7835207i32;
                } else if (__value__ == (7834842i32)) {
                    _gotoNext = 7834893i32;
                } else if (__value__ == (7834893i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7834904i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7835063i32;
                    } else {
                        _gotoNext = 7835095i32;
                    };
                } else if (__value__ == (7834904i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7835011i32;
                    } else {
                        _gotoNext = 7835207i32;
                    };
                } else if (__value__ == (7835011i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7835911i32;
                } else if (__value__ == (7835063i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7835207i32;
                } else if (__value__ == (7835095i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7835207i32;
                } else if (__value__ == (7835123i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7835911i32;
                } else if (__value__ == (7835207i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7834622 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7834630 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7835280 = (0 : stdgo.GoInt);
                    _gotoNext = 7835276i32;
                } else if (__value__ == (7835276i32)) {
                    if ((_i_7835280 < (_s.length) : Bool)) {
                        _gotoNext = 7835304i32;
                    } else {
                        _gotoNext = 7835896i32;
                    };
                } else if (__value__ == (7835304i32)) {
                    _d_7835321 = _s[(_i_7835280 : stdgo.GoInt)];
                    _gotoNext = 7835333i32;
                } else if (__value__ == (7835333i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7835321 : Bool) && (_d_7835321 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7835344i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7835321 : Bool) && (_d_7835321 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7835388i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7835321 : Bool) && (_d_7835321 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7835437i32;
                    } else {
                        _gotoNext = 7835486i32;
                    };
                } else if (__value__ == (7835344i32)) {
                    _v_7835312 = (_d_7835321 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7835551i32;
                } else if (__value__ == (7835388i32)) {
                    _v_7835312 = ((_d_7835321 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7835551i32;
                } else if (__value__ == (7835437i32)) {
                    _v_7835312 = ((_d_7835321 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7835551i32;
                } else if (__value__ == (7835486i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7835911i32;
                } else if (__value__ == (7835551i32)) {
                    if (((_v_7835312 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7835569i32;
                    } else {
                        _gotoNext = 7835628i32;
                    };
                } else if (__value__ == (7835569i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7835911i32;
                } else if (__value__ == (7835628i32)) {
                    if ((_n >= _cutoff_7834622 : Bool)) {
                        _gotoNext = 7835643i32;
                    } else {
                        _gotoNext = 7835731i32;
                    };
                } else if (__value__ == (7835643i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7835911i32;
                } else if (__value__ == (7835731i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7835752 = (_n + (_v_7835312 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7835752 < _n : Bool) || (_n1_7835752 > _maxVal_7834630 : Bool) : Bool)) {
                        _gotoNext = 7835799i32;
                    } else {
                        _gotoNext = 7835884i32;
                    };
                } else if (__value__ == (7835799i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7835911i32;
                } else if (__value__ == (7835884i32)) {
                    _n = _n1_7835752;
                    _i_7835280++;
                    _gotoNext = 7835276i32;
                } else if (__value__ == (7835896i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7835911i32;
                } else if (__value__ == (7835911i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7834702 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
