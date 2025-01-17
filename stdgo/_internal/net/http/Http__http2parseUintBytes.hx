package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7687463:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7687431:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7686853:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7686781:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7686773:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7687903:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7687472:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7686813i32;
                    } else {
                        _gotoNext = 7686853i32;
                    };
                } else if (__value__ == (7686813i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7686853i32;
                } else if (__value__ == (7686853i32)) {
                    _s0_7686853 = _s;
                    _gotoNext = 7686862i32;
                } else if (__value__ == (7686862i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7686872i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7686930i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7686993i32;
                    } else {
                        _gotoNext = 7687274i32;
                    };
                } else if (__value__ == (7686872i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7688062i32;
                } else if (__value__ == (7686930i32)) {
                    _gotoNext = 7687358i32;
                } else if (__value__ == (7686993i32)) {
                    _gotoNext = 7687044i32;
                } else if (__value__ == (7687044i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7687055i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7687214i32;
                    } else {
                        _gotoNext = 7687246i32;
                    };
                } else if (__value__ == (7687055i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7687162i32;
                    } else {
                        _gotoNext = 7687358i32;
                    };
                } else if (__value__ == (7687162i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7688062i32;
                } else if (__value__ == (7687214i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7687358i32;
                } else if (__value__ == (7687246i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7687358i32;
                } else if (__value__ == (7687274i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7688062i32;
                } else if (__value__ == (7687358i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7686773 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7686781 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7687431 = (0 : stdgo.GoInt);
                    _gotoNext = 7687427i32;
                } else if (__value__ == (7687427i32)) {
                    if ((_i_7687431 < (_s.length) : Bool)) {
                        _gotoNext = 7687455i32;
                    } else {
                        _gotoNext = 7688047i32;
                    };
                } else if (__value__ == (7687455i32)) {
                    _d_7687472 = _s[(_i_7687431 : stdgo.GoInt)];
                    _gotoNext = 7687484i32;
                } else if (__value__ == (7687484i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7687472 : Bool) && (_d_7687472 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7687495i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7687472 : Bool) && (_d_7687472 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7687539i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7687472 : Bool) && (_d_7687472 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7687588i32;
                    } else {
                        _gotoNext = 7687637i32;
                    };
                } else if (__value__ == (7687495i32)) {
                    _v_7687463 = (_d_7687472 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7687702i32;
                } else if (__value__ == (7687539i32)) {
                    _v_7687463 = ((_d_7687472 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7687702i32;
                } else if (__value__ == (7687588i32)) {
                    _v_7687463 = ((_d_7687472 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7687702i32;
                } else if (__value__ == (7687637i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7688062i32;
                } else if (__value__ == (7687702i32)) {
                    if (((_v_7687463 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7687720i32;
                    } else {
                        _gotoNext = 7687779i32;
                    };
                } else if (__value__ == (7687720i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7688062i32;
                } else if (__value__ == (7687779i32)) {
                    if ((_n >= _cutoff_7686773 : Bool)) {
                        _gotoNext = 7687794i32;
                    } else {
                        _gotoNext = 7687882i32;
                    };
                } else if (__value__ == (7687794i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7688062i32;
                } else if (__value__ == (7687882i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7687903 = (_n + (_v_7687463 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7687903 < _n : Bool) || (_n1_7687903 > _maxVal_7686781 : Bool) : Bool)) {
                        _gotoNext = 7687950i32;
                    } else {
                        _gotoNext = 7688035i32;
                    };
                } else if (__value__ == (7687950i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7688062i32;
                } else if (__value__ == (7688035i32)) {
                    _n = _n1_7687903;
                    _i_7687431++;
                    _gotoNext = 7687427i32;
                } else if (__value__ == (7688047i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7688062i32;
                } else if (__value__ == (7688062i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7686853 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
