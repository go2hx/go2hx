package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7685217:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7685185:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7684607:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7684535:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7684527:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7685657:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7685226:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7684567i32;
                    } else {
                        _gotoNext = 7684607i32;
                    };
                } else if (__value__ == (7684567i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7684607i32;
                } else if (__value__ == (7684607i32)) {
                    _s0_7684607 = _s;
                    _gotoNext = 7684616i32;
                } else if (__value__ == (7684616i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7684626i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7684684i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7684747i32;
                    } else {
                        _gotoNext = 7685028i32;
                    };
                } else if (__value__ == (7684626i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7685816i32;
                } else if (__value__ == (7684684i32)) {
                    _gotoNext = 7685112i32;
                } else if (__value__ == (7684747i32)) {
                    _gotoNext = 7684798i32;
                } else if (__value__ == (7684798i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7684809i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7684968i32;
                    } else {
                        _gotoNext = 7685000i32;
                    };
                } else if (__value__ == (7684809i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7684916i32;
                    } else {
                        _gotoNext = 7685112i32;
                    };
                } else if (__value__ == (7684916i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7685816i32;
                } else if (__value__ == (7684968i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7685112i32;
                } else if (__value__ == (7685000i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7685112i32;
                } else if (__value__ == (7685028i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7685816i32;
                } else if (__value__ == (7685112i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7684527 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7684535 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7685185 = (0 : stdgo.GoInt);
                    _gotoNext = 7685181i32;
                } else if (__value__ == (7685181i32)) {
                    if ((_i_7685185 < (_s.length) : Bool)) {
                        _gotoNext = 7685209i32;
                    } else {
                        _gotoNext = 7685801i32;
                    };
                } else if (__value__ == (7685209i32)) {
                    _d_7685226 = _s[(_i_7685185 : stdgo.GoInt)];
                    _gotoNext = 7685238i32;
                } else if (__value__ == (7685238i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7685226 : Bool) && (_d_7685226 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7685249i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7685226 : Bool) && (_d_7685226 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7685293i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7685226 : Bool) && (_d_7685226 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7685342i32;
                    } else {
                        _gotoNext = 7685391i32;
                    };
                } else if (__value__ == (7685249i32)) {
                    _v_7685217 = (_d_7685226 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7685456i32;
                } else if (__value__ == (7685293i32)) {
                    _v_7685217 = ((_d_7685226 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7685456i32;
                } else if (__value__ == (7685342i32)) {
                    _v_7685217 = ((_d_7685226 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7685456i32;
                } else if (__value__ == (7685391i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7685816i32;
                } else if (__value__ == (7685456i32)) {
                    if (((_v_7685217 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7685474i32;
                    } else {
                        _gotoNext = 7685533i32;
                    };
                } else if (__value__ == (7685474i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7685816i32;
                } else if (__value__ == (7685533i32)) {
                    if ((_n >= _cutoff_7684527 : Bool)) {
                        _gotoNext = 7685548i32;
                    } else {
                        _gotoNext = 7685636i32;
                    };
                } else if (__value__ == (7685548i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7685816i32;
                } else if (__value__ == (7685636i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7685657 = (_n + (_v_7685217 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7685657 < _n : Bool) || (_n1_7685657 > _maxVal_7684535 : Bool) : Bool)) {
                        _gotoNext = 7685704i32;
                    } else {
                        _gotoNext = 7685789i32;
                    };
                } else if (__value__ == (7685704i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7685816i32;
                } else if (__value__ == (7685789i32)) {
                    _n = _n1_7685657;
                    _i_7685185++;
                    _gotoNext = 7685181i32;
                } else if (__value__ == (7685801i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7685816i32;
                } else if (__value__ == (7685816i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7684607 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
