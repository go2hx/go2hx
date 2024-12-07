package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _maxVal_7917469:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7917461:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7918591:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7918160:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7918151:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7918119:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7917541:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7917501i32;
                    } else {
                        _gotoNext = 7917541i32;
                    };
                } else if (__value__ == (7917501i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7917541i32;
                } else if (__value__ == (7917541i32)) {
                    _s0_7917541 = _s;
                    _gotoNext = 7917550i32;
                } else if (__value__ == (7917550i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7917560i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7917618i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7917681i32;
                    } else {
                        _gotoNext = 7917962i32;
                    };
                } else if (__value__ == (7917560i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7918750i32;
                } else if (__value__ == (7917618i32)) {
                    _gotoNext = 7918046i32;
                } else if (__value__ == (7917681i32)) {
                    _gotoNext = 7917732i32;
                } else if (__value__ == (7917732i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7917743i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7917902i32;
                    } else {
                        _gotoNext = 7917934i32;
                    };
                } else if (__value__ == (7917743i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7917850i32;
                    } else {
                        _gotoNext = 7918046i32;
                    };
                } else if (__value__ == (7917850i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7918750i32;
                } else if (__value__ == (7917902i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7918046i32;
                } else if (__value__ == (7917934i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7918046i32;
                } else if (__value__ == (7917962i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7918750i32;
                } else if (__value__ == (7918046i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7917461 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7917469 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7918119 = (0 : stdgo.GoInt);
                    _gotoNext = 7918115i32;
                } else if (__value__ == (7918115i32)) {
                    if ((_i_7918119 < (_s.length) : Bool)) {
                        _gotoNext = 7918143i32;
                    } else {
                        _gotoNext = 7918735i32;
                    };
                } else if (__value__ == (7918143i32)) {
                    _d_7918160 = _s[(_i_7918119 : stdgo.GoInt)];
                    _gotoNext = 7918172i32;
                } else if (__value__ == (7918172i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7918160 : Bool) && (_d_7918160 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7918183i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7918160 : Bool) && (_d_7918160 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7918227i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7918160 : Bool) && (_d_7918160 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7918276i32;
                    } else {
                        _gotoNext = 7918325i32;
                    };
                } else if (__value__ == (7918183i32)) {
                    _v_7918151 = (_d_7918160 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7918390i32;
                } else if (__value__ == (7918227i32)) {
                    _v_7918151 = ((_d_7918160 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7918390i32;
                } else if (__value__ == (7918276i32)) {
                    _v_7918151 = ((_d_7918160 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7918390i32;
                } else if (__value__ == (7918325i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7918750i32;
                } else if (__value__ == (7918390i32)) {
                    if (((_v_7918151 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7918408i32;
                    } else {
                        _gotoNext = 7918467i32;
                    };
                } else if (__value__ == (7918408i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7918750i32;
                } else if (__value__ == (7918467i32)) {
                    if ((_n >= _cutoff_7917461 : Bool)) {
                        _gotoNext = 7918482i32;
                    } else {
                        _gotoNext = 7918570i32;
                    };
                } else if (__value__ == (7918482i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7918750i32;
                } else if (__value__ == (7918570i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7918591 = (_n + (_v_7918151 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7918591 < _n : Bool) || (_n1_7918591 > _maxVal_7917469 : Bool) : Bool)) {
                        _gotoNext = 7918638i32;
                    } else {
                        _gotoNext = 7918723i32;
                    };
                } else if (__value__ == (7918638i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7918750i32;
                } else if (__value__ == (7918723i32)) {
                    _n = _n1_7918591;
                    _i_7918119++;
                    _gotoNext = 7918115i32;
                } else if (__value__ == (7918735i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7918750i32;
                } else if (__value__ == (7918750i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7917541 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
