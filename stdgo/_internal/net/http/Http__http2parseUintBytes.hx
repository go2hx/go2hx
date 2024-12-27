package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7683313:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7683304:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7683272:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7682694:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7682622:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7682614:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7683744:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7682654i32;
                    } else {
                        _gotoNext = 7682694i32;
                    };
                } else if (__value__ == (7682654i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7682694i32;
                } else if (__value__ == (7682694i32)) {
                    _s0_7682694 = _s;
                    _gotoNext = 7682703i32;
                } else if (__value__ == (7682703i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7682713i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7682771i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7682834i32;
                    } else {
                        _gotoNext = 7683115i32;
                    };
                } else if (__value__ == (7682713i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7683903i32;
                } else if (__value__ == (7682771i32)) {
                    _gotoNext = 7683199i32;
                } else if (__value__ == (7682834i32)) {
                    _gotoNext = 7682885i32;
                } else if (__value__ == (7682885i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7682896i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7683055i32;
                    } else {
                        _gotoNext = 7683087i32;
                    };
                } else if (__value__ == (7682896i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7683003i32;
                    } else {
                        _gotoNext = 7683199i32;
                    };
                } else if (__value__ == (7683003i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7683903i32;
                } else if (__value__ == (7683055i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7683199i32;
                } else if (__value__ == (7683087i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7683199i32;
                } else if (__value__ == (7683115i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7683903i32;
                } else if (__value__ == (7683199i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7682614 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7682622 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7683272 = (0 : stdgo.GoInt);
                    _gotoNext = 7683268i32;
                } else if (__value__ == (7683268i32)) {
                    if ((_i_7683272 < (_s.length) : Bool)) {
                        _gotoNext = 7683296i32;
                    } else {
                        _gotoNext = 7683888i32;
                    };
                } else if (__value__ == (7683296i32)) {
                    _d_7683313 = _s[(_i_7683272 : stdgo.GoInt)];
                    _gotoNext = 7683325i32;
                } else if (__value__ == (7683325i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7683313 : Bool) && (_d_7683313 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7683336i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7683313 : Bool) && (_d_7683313 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7683380i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7683313 : Bool) && (_d_7683313 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7683429i32;
                    } else {
                        _gotoNext = 7683478i32;
                    };
                } else if (__value__ == (7683336i32)) {
                    _v_7683304 = (_d_7683313 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7683543i32;
                } else if (__value__ == (7683380i32)) {
                    _v_7683304 = ((_d_7683313 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7683543i32;
                } else if (__value__ == (7683429i32)) {
                    _v_7683304 = ((_d_7683313 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7683543i32;
                } else if (__value__ == (7683478i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7683903i32;
                } else if (__value__ == (7683543i32)) {
                    if (((_v_7683304 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7683561i32;
                    } else {
                        _gotoNext = 7683620i32;
                    };
                } else if (__value__ == (7683561i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7683903i32;
                } else if (__value__ == (7683620i32)) {
                    if ((_n >= _cutoff_7682614 : Bool)) {
                        _gotoNext = 7683635i32;
                    } else {
                        _gotoNext = 7683723i32;
                    };
                } else if (__value__ == (7683635i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7683903i32;
                } else if (__value__ == (7683723i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7683744 = (_n + (_v_7683304 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7683744 < _n : Bool) || (_n1_7683744 > _maxVal_7682622 : Bool) : Bool)) {
                        _gotoNext = 7683791i32;
                    } else {
                        _gotoNext = 7683876i32;
                    };
                } else if (__value__ == (7683791i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7683903i32;
                } else if (__value__ == (7683876i32)) {
                    _n = _n1_7683744;
                    _i_7683272++;
                    _gotoNext = 7683268i32;
                } else if (__value__ == (7683888i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7683903i32;
                } else if (__value__ == (7683903i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7682694 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
