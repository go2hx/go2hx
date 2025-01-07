package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7596967:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7596536:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7596527:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7596495:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7595917:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7595845:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7595837:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7595877i32;
                    } else {
                        _gotoNext = 7595917i32;
                    };
                } else if (__value__ == (7595877i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7595917i32;
                } else if (__value__ == (7595917i32)) {
                    _s0_7595917 = _s;
                    _gotoNext = 7595926i32;
                } else if (__value__ == (7595926i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7595936i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7595994i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7596057i32;
                    } else {
                        _gotoNext = 7596338i32;
                    };
                } else if (__value__ == (7595936i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7597126i32;
                } else if (__value__ == (7595994i32)) {
                    _gotoNext = 7596422i32;
                } else if (__value__ == (7596057i32)) {
                    _gotoNext = 7596108i32;
                } else if (__value__ == (7596108i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7596119i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7596278i32;
                    } else {
                        _gotoNext = 7596310i32;
                    };
                } else if (__value__ == (7596119i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7596226i32;
                    } else {
                        _gotoNext = 7596422i32;
                    };
                } else if (__value__ == (7596226i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7597126i32;
                } else if (__value__ == (7596278i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7596422i32;
                } else if (__value__ == (7596310i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7596422i32;
                } else if (__value__ == (7596338i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7597126i32;
                } else if (__value__ == (7596422i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7595837 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7595845 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7596495 = (0 : stdgo.GoInt);
                    _gotoNext = 7596491i32;
                } else if (__value__ == (7596491i32)) {
                    if ((_i_7596495 < (_s.length) : Bool)) {
                        _gotoNext = 7596519i32;
                    } else {
                        _gotoNext = 7597111i32;
                    };
                } else if (__value__ == (7596519i32)) {
                    _d_7596536 = _s[(_i_7596495 : stdgo.GoInt)];
                    _gotoNext = 7596548i32;
                } else if (__value__ == (7596548i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7596536 : Bool) && (_d_7596536 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7596559i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7596536 : Bool) && (_d_7596536 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7596603i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7596536 : Bool) && (_d_7596536 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7596652i32;
                    } else {
                        _gotoNext = 7596701i32;
                    };
                } else if (__value__ == (7596559i32)) {
                    _v_7596527 = (_d_7596536 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7596766i32;
                } else if (__value__ == (7596603i32)) {
                    _v_7596527 = ((_d_7596536 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7596766i32;
                } else if (__value__ == (7596652i32)) {
                    _v_7596527 = ((_d_7596536 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7596766i32;
                } else if (__value__ == (7596701i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7597126i32;
                } else if (__value__ == (7596766i32)) {
                    if (((_v_7596527 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7596784i32;
                    } else {
                        _gotoNext = 7596843i32;
                    };
                } else if (__value__ == (7596784i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7597126i32;
                } else if (__value__ == (7596843i32)) {
                    if ((_n >= _cutoff_7595837 : Bool)) {
                        _gotoNext = 7596858i32;
                    } else {
                        _gotoNext = 7596946i32;
                    };
                } else if (__value__ == (7596858i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7597126i32;
                } else if (__value__ == (7596946i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7596967 = (_n + (_v_7596527 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7596967 < _n : Bool) || (_n1_7596967 > _maxVal_7595845 : Bool) : Bool)) {
                        _gotoNext = 7597014i32;
                    } else {
                        _gotoNext = 7597099i32;
                    };
                } else if (__value__ == (7597014i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7597126i32;
                } else if (__value__ == (7597099i32)) {
                    _n = _n1_7596967;
                    _i_7596495++;
                    _gotoNext = 7596491i32;
                } else if (__value__ == (7597111i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7597126i32;
                } else if (__value__ == (7597126i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7595917 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
