package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7800611:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7801741:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7801310:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7801301:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7801269:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7800691:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7800619:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7800651i32;
                    } else {
                        _gotoNext = 7800691i32;
                    };
                } else if (__value__ == (7800651i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7800691i32;
                } else if (__value__ == (7800691i32)) {
                    _s0_7800691 = _s;
                    _gotoNext = 7800700i32;
                } else if (__value__ == (7800700i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7800710i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7800768i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7800831i32;
                    } else {
                        _gotoNext = 7801112i32;
                    };
                } else if (__value__ == (7800710i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7801900i32;
                } else if (__value__ == (7800768i32)) {
                    _gotoNext = 7801196i32;
                } else if (__value__ == (7800831i32)) {
                    _gotoNext = 7800882i32;
                } else if (__value__ == (7800882i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7800893i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7801052i32;
                    } else {
                        _gotoNext = 7801084i32;
                    };
                } else if (__value__ == (7800893i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7801000i32;
                    } else {
                        _gotoNext = 7801196i32;
                    };
                } else if (__value__ == (7801000i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7801900i32;
                } else if (__value__ == (7801052i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7801196i32;
                } else if (__value__ == (7801084i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7801196i32;
                } else if (__value__ == (7801112i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7801900i32;
                } else if (__value__ == (7801196i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7800611 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7800619 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7801269 = (0 : stdgo.GoInt);
                    _gotoNext = 7801265i32;
                } else if (__value__ == (7801265i32)) {
                    if ((_i_7801269 < (_s.length) : Bool)) {
                        _gotoNext = 7801293i32;
                    } else {
                        _gotoNext = 7801885i32;
                    };
                } else if (__value__ == (7801293i32)) {
                    _d_7801310 = _s[(_i_7801269 : stdgo.GoInt)];
                    _gotoNext = 7801322i32;
                } else if (__value__ == (7801322i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7801310 : Bool) && (_d_7801310 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7801333i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7801310 : Bool) && (_d_7801310 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7801377i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7801310 : Bool) && (_d_7801310 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7801426i32;
                    } else {
                        _gotoNext = 7801475i32;
                    };
                } else if (__value__ == (7801333i32)) {
                    _v_7801301 = (_d_7801310 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7801540i32;
                } else if (__value__ == (7801377i32)) {
                    _v_7801301 = ((_d_7801310 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7801540i32;
                } else if (__value__ == (7801426i32)) {
                    _v_7801301 = ((_d_7801310 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7801540i32;
                } else if (__value__ == (7801475i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7801900i32;
                } else if (__value__ == (7801540i32)) {
                    if (((_v_7801301 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7801558i32;
                    } else {
                        _gotoNext = 7801617i32;
                    };
                } else if (__value__ == (7801558i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7801900i32;
                } else if (__value__ == (7801617i32)) {
                    if ((_n >= _cutoff_7800611 : Bool)) {
                        _gotoNext = 7801632i32;
                    } else {
                        _gotoNext = 7801720i32;
                    };
                } else if (__value__ == (7801632i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7801900i32;
                } else if (__value__ == (7801720i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7801741 = (_n + (_v_7801301 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7801741 < _n : Bool) || (_n1_7801741 > _maxVal_7800619 : Bool) : Bool)) {
                        _gotoNext = 7801788i32;
                    } else {
                        _gotoNext = 7801873i32;
                    };
                } else if (__value__ == (7801788i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7801900i32;
                } else if (__value__ == (7801873i32)) {
                    _n = _n1_7801741;
                    _i_7801269++;
                    _gotoNext = 7801265i32;
                } else if (__value__ == (7801885i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7801900i32;
                } else if (__value__ == (7801900i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7800691 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
