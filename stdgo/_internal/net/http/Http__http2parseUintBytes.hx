package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _s0_7889662:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7889590:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7889582:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7890712:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7890281:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7890272:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7890240:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7889622i32;
                    } else {
                        _gotoNext = 7889662i32;
                    };
                } else if (__value__ == (7889622i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7889662i32;
                } else if (__value__ == (7889662i32)) {
                    _s0_7889662 = _s;
                    _gotoNext = 7889671i32;
                } else if (__value__ == (7889671i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7889681i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7889739i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7889802i32;
                    } else {
                        _gotoNext = 7890083i32;
                    };
                } else if (__value__ == (7889681i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7890871i32;
                } else if (__value__ == (7889739i32)) {
                    _gotoNext = 7890167i32;
                } else if (__value__ == (7889802i32)) {
                    _gotoNext = 7889853i32;
                } else if (__value__ == (7889853i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7889864i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7890023i32;
                    } else {
                        _gotoNext = 7890055i32;
                    };
                } else if (__value__ == (7889864i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7889971i32;
                    } else {
                        _gotoNext = 7890167i32;
                    };
                } else if (__value__ == (7889971i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7890871i32;
                } else if (__value__ == (7890023i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7890167i32;
                } else if (__value__ == (7890055i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7890167i32;
                } else if (__value__ == (7890083i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7890871i32;
                } else if (__value__ == (7890167i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7889582 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7889590 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7890240 = (0 : stdgo.GoInt);
                    _gotoNext = 7890236i32;
                } else if (__value__ == (7890236i32)) {
                    if ((_i_7890240 < (_s.length) : Bool)) {
                        _gotoNext = 7890264i32;
                    } else {
                        _gotoNext = 7890856i32;
                    };
                } else if (__value__ == (7890264i32)) {
                    _d_7890281 = _s[(_i_7890240 : stdgo.GoInt)];
                    _gotoNext = 7890293i32;
                } else if (__value__ == (7890293i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7890281 : Bool) && (_d_7890281 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7890304i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7890281 : Bool) && (_d_7890281 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7890348i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7890281 : Bool) && (_d_7890281 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7890397i32;
                    } else {
                        _gotoNext = 7890446i32;
                    };
                } else if (__value__ == (7890304i32)) {
                    _v_7890272 = (_d_7890281 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7890511i32;
                } else if (__value__ == (7890348i32)) {
                    _v_7890272 = ((_d_7890281 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7890511i32;
                } else if (__value__ == (7890397i32)) {
                    _v_7890272 = ((_d_7890281 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7890511i32;
                } else if (__value__ == (7890446i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7890871i32;
                } else if (__value__ == (7890511i32)) {
                    if (((_v_7890272 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7890529i32;
                    } else {
                        _gotoNext = 7890588i32;
                    };
                } else if (__value__ == (7890529i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7890871i32;
                } else if (__value__ == (7890588i32)) {
                    if ((_n >= _cutoff_7889582 : Bool)) {
                        _gotoNext = 7890603i32;
                    } else {
                        _gotoNext = 7890691i32;
                    };
                } else if (__value__ == (7890603i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7890871i32;
                } else if (__value__ == (7890691i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7890712 = (_n + (_v_7890272 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7890712 < _n : Bool) || (_n1_7890712 > _maxVal_7889590 : Bool) : Bool)) {
                        _gotoNext = 7890759i32;
                    } else {
                        _gotoNext = 7890844i32;
                    };
                } else if (__value__ == (7890759i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7890871i32;
                } else if (__value__ == (7890844i32)) {
                    _n = _n1_7890712;
                    _i_7890240++;
                    _gotoNext = 7890236i32;
                } else if (__value__ == (7890856i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7890871i32;
                } else if (__value__ == (7890871i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7889662 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
