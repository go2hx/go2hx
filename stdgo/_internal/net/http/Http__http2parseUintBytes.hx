package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7721339:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7721307:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7720729:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7720657:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7720649:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7721779:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7721348:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7720689i32;
                    } else {
                        _gotoNext = 7720729i32;
                    };
                } else if (__value__ == (7720689i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7720729i32;
                } else if (__value__ == (7720729i32)) {
                    _s0_7720729 = _s;
                    _gotoNext = 7720738i32;
                } else if (__value__ == (7720738i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7720748i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7720806i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7720869i32;
                    } else {
                        _gotoNext = 7721150i32;
                    };
                } else if (__value__ == (7720748i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7721938i32;
                } else if (__value__ == (7720806i32)) {
                    _gotoNext = 7721234i32;
                } else if (__value__ == (7720869i32)) {
                    _gotoNext = 7720920i32;
                } else if (__value__ == (7720920i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7720931i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7721090i32;
                    } else {
                        _gotoNext = 7721122i32;
                    };
                } else if (__value__ == (7720931i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7721038i32;
                    } else {
                        _gotoNext = 7721234i32;
                    };
                } else if (__value__ == (7721038i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7721938i32;
                } else if (__value__ == (7721090i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7721234i32;
                } else if (__value__ == (7721122i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7721234i32;
                } else if (__value__ == (7721150i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7721938i32;
                } else if (__value__ == (7721234i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7720649 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7720657 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7721307 = (0 : stdgo.GoInt);
                    _gotoNext = 7721303i32;
                } else if (__value__ == (7721303i32)) {
                    if ((_i_7721307 < (_s.length) : Bool)) {
                        _gotoNext = 7721331i32;
                    } else {
                        _gotoNext = 7721923i32;
                    };
                } else if (__value__ == (7721331i32)) {
                    _d_7721348 = _s[(_i_7721307 : stdgo.GoInt)];
                    _gotoNext = 7721360i32;
                } else if (__value__ == (7721360i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7721348 : Bool) && (_d_7721348 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7721371i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7721348 : Bool) && (_d_7721348 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7721415i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7721348 : Bool) && (_d_7721348 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7721464i32;
                    } else {
                        _gotoNext = 7721513i32;
                    };
                } else if (__value__ == (7721371i32)) {
                    _v_7721339 = (_d_7721348 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7721578i32;
                } else if (__value__ == (7721415i32)) {
                    _v_7721339 = ((_d_7721348 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7721578i32;
                } else if (__value__ == (7721464i32)) {
                    _v_7721339 = ((_d_7721348 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7721578i32;
                } else if (__value__ == (7721513i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7721938i32;
                } else if (__value__ == (7721578i32)) {
                    if (((_v_7721339 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7721596i32;
                    } else {
                        _gotoNext = 7721655i32;
                    };
                } else if (__value__ == (7721596i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7721938i32;
                } else if (__value__ == (7721655i32)) {
                    if ((_n >= _cutoff_7720649 : Bool)) {
                        _gotoNext = 7721670i32;
                    } else {
                        _gotoNext = 7721758i32;
                    };
                } else if (__value__ == (7721670i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7721938i32;
                } else if (__value__ == (7721758i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7721779 = (_n + (_v_7721339 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7721779 < _n : Bool) || (_n1_7721779 > _maxVal_7720657 : Bool) : Bool)) {
                        _gotoNext = 7721826i32;
                    } else {
                        _gotoNext = 7721911i32;
                    };
                } else if (__value__ == (7721826i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7721938i32;
                } else if (__value__ == (7721911i32)) {
                    _n = _n1_7721779;
                    _i_7721307++;
                    _gotoNext = 7721303i32;
                } else if (__value__ == (7721923i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7721938i32;
                } else if (__value__ == (7721938i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7720729 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
