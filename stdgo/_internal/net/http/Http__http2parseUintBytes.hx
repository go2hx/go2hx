package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _maxVal_7592863:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7592855:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7593985:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7593554:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7593545:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7593513:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7592935:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7592895i32;
                    } else {
                        _gotoNext = 7592935i32;
                    };
                } else if (__value__ == (7592895i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7592935i32;
                } else if (__value__ == (7592935i32)) {
                    _s0_7592935 = _s;
                    _gotoNext = 7592944i32;
                } else if (__value__ == (7592944i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7592954i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7593012i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7593075i32;
                    } else {
                        _gotoNext = 7593356i32;
                    };
                } else if (__value__ == (7592954i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594144i32;
                } else if (__value__ == (7593012i32)) {
                    _gotoNext = 7593440i32;
                } else if (__value__ == (7593075i32)) {
                    _gotoNext = 7593126i32;
                } else if (__value__ == (7593126i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7593137i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7593296i32;
                    } else {
                        _gotoNext = 7593328i32;
                    };
                } else if (__value__ == (7593137i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7593244i32;
                    } else {
                        _gotoNext = 7593440i32;
                    };
                } else if (__value__ == (7593244i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594144i32;
                } else if (__value__ == (7593296i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7593440i32;
                } else if (__value__ == (7593328i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7593440i32;
                } else if (__value__ == (7593356i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7594144i32;
                } else if (__value__ == (7593440i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7592855 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7592863 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7593513 = (0 : stdgo.GoInt);
                    _gotoNext = 7593509i32;
                } else if (__value__ == (7593509i32)) {
                    if ((_i_7593513 < (_s.length) : Bool)) {
                        _gotoNext = 7593537i32;
                    } else {
                        _gotoNext = 7594129i32;
                    };
                } else if (__value__ == (7593537i32)) {
                    _d_7593554 = _s[(_i_7593513 : stdgo.GoInt)];
                    _gotoNext = 7593566i32;
                } else if (__value__ == (7593566i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7593554 : Bool) && (_d_7593554 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593577i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7593554 : Bool) && (_d_7593554 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593621i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7593554 : Bool) && (_d_7593554 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593670i32;
                    } else {
                        _gotoNext = 7593719i32;
                    };
                } else if (__value__ == (7593577i32)) {
                    _v_7593545 = (_d_7593554 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7593784i32;
                } else if (__value__ == (7593621i32)) {
                    _v_7593545 = ((_d_7593554 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7593784i32;
                } else if (__value__ == (7593670i32)) {
                    _v_7593545 = ((_d_7593554 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7593784i32;
                } else if (__value__ == (7593719i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594144i32;
                } else if (__value__ == (7593784i32)) {
                    if (((_v_7593545 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7593802i32;
                    } else {
                        _gotoNext = 7593861i32;
                    };
                } else if (__value__ == (7593802i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594144i32;
                } else if (__value__ == (7593861i32)) {
                    if ((_n >= _cutoff_7592855 : Bool)) {
                        _gotoNext = 7593876i32;
                    } else {
                        _gotoNext = 7593964i32;
                    };
                } else if (__value__ == (7593876i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7594144i32;
                } else if (__value__ == (7593964i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7593985 = (_n + (_v_7593545 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7593985 < _n : Bool) || (_n1_7593985 > _maxVal_7592863 : Bool) : Bool)) {
                        _gotoNext = 7594032i32;
                    } else {
                        _gotoNext = 7594117i32;
                    };
                } else if (__value__ == (7594032i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7594144i32;
                } else if (__value__ == (7594117i32)) {
                    _n = _n1_7593985;
                    _i_7593513++;
                    _gotoNext = 7593509i32;
                } else if (__value__ == (7594129i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7594144i32;
                } else if (__value__ == (7594144i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7592935 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
