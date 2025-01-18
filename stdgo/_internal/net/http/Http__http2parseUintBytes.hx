package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7966136:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7966127:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7966095:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7965517:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7965445:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7965437:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7966567:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7965477i32;
                    } else {
                        _gotoNext = 7965517i32;
                    };
                } else if (__value__ == (7965477i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7965517i32;
                } else if (__value__ == (7965517i32)) {
                    _s0_7965517 = _s;
                    _gotoNext = 7965526i32;
                } else if (__value__ == (7965526i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7965536i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7965594i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7965657i32;
                    } else {
                        _gotoNext = 7965938i32;
                    };
                } else if (__value__ == (7965536i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7966726i32;
                } else if (__value__ == (7965594i32)) {
                    _gotoNext = 7966022i32;
                } else if (__value__ == (7965657i32)) {
                    _gotoNext = 7965708i32;
                } else if (__value__ == (7965708i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7965719i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7965878i32;
                    } else {
                        _gotoNext = 7965910i32;
                    };
                } else if (__value__ == (7965719i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7965826i32;
                    } else {
                        _gotoNext = 7966022i32;
                    };
                } else if (__value__ == (7965826i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7966726i32;
                } else if (__value__ == (7965878i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7966022i32;
                } else if (__value__ == (7965910i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7966022i32;
                } else if (__value__ == (7965938i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7966726i32;
                } else if (__value__ == (7966022i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7965437 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7965445 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7966095 = (0 : stdgo.GoInt);
                    _gotoNext = 7966091i32;
                } else if (__value__ == (7966091i32)) {
                    if ((_i_7966095 < (_s.length) : Bool)) {
                        _gotoNext = 7966119i32;
                    } else {
                        _gotoNext = 7966711i32;
                    };
                } else if (__value__ == (7966119i32)) {
                    _d_7966136 = _s[(_i_7966095 : stdgo.GoInt)];
                    _gotoNext = 7966148i32;
                } else if (__value__ == (7966148i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7966136 : Bool) && (_d_7966136 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7966159i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7966136 : Bool) && (_d_7966136 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7966203i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7966136 : Bool) && (_d_7966136 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7966252i32;
                    } else {
                        _gotoNext = 7966301i32;
                    };
                } else if (__value__ == (7966159i32)) {
                    _v_7966127 = (_d_7966136 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7966366i32;
                } else if (__value__ == (7966203i32)) {
                    _v_7966127 = ((_d_7966136 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7966366i32;
                } else if (__value__ == (7966252i32)) {
                    _v_7966127 = ((_d_7966136 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7966366i32;
                } else if (__value__ == (7966301i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7966726i32;
                } else if (__value__ == (7966366i32)) {
                    if (((_v_7966127 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7966384i32;
                    } else {
                        _gotoNext = 7966443i32;
                    };
                } else if (__value__ == (7966384i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7966726i32;
                } else if (__value__ == (7966443i32)) {
                    if ((_n >= _cutoff_7965437 : Bool)) {
                        _gotoNext = 7966458i32;
                    } else {
                        _gotoNext = 7966546i32;
                    };
                } else if (__value__ == (7966458i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7966726i32;
                } else if (__value__ == (7966546i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7966567 = (_n + (_v_7966127 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7966567 < _n : Bool) || (_n1_7966567 > _maxVal_7965445 : Bool) : Bool)) {
                        _gotoNext = 7966614i32;
                    } else {
                        _gotoNext = 7966699i32;
                    };
                } else if (__value__ == (7966614i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7966726i32;
                } else if (__value__ == (7966699i32)) {
                    _n = _n1_7966567;
                    _i_7966095++;
                    _gotoNext = 7966091i32;
                } else if (__value__ == (7966711i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7966726i32;
                } else if (__value__ == (7966726i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7965517 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
