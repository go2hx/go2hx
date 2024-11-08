package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7625707:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7625698:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7625666:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7625088:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7625016:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7625008:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7626138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7625048i32;
                    } else {
                        _gotoNext = 7625088i32;
                    };
                } else if (__value__ == (7625048i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7625088i32;
                } else if (__value__ == (7625088i32)) {
                    _s0_7625088 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7625097i32;
                } else if (__value__ == (7625097i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7625107i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7625165i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7625228i32;
                    } else {
                        _gotoNext = 7625509i32;
                    };
                } else if (__value__ == (7625107i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7626297i32;
                } else if (__value__ == (7625165i32)) {
                    _gotoNext = 7625593i32;
                } else if (__value__ == (7625228i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7625279i32;
                } else if (__value__ == (7625279i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7625290i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7625449i32;
                    } else {
                        _gotoNext = 7625481i32;
                    };
                } else if (__value__ == (7625290i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7625397i32;
                    } else {
                        _gotoNext = 7625593i32;
                    };
                } else if (__value__ == (7625397i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7626297i32;
                } else if (__value__ == (7625449i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7625593i32;
                } else if (__value__ == (7625481i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7625593i32;
                } else if (__value__ == (7625509i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7626297i32;
                } else if (__value__ == (7625593i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7625008 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7625016 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7625666 = (0 : stdgo.GoInt);
                    _gotoNext = 7625662i32;
                } else if (__value__ == (7625662i32)) {
                    if ((_i_7625666 < (_s.length) : Bool)) {
                        _gotoNext = 7625690i32;
                    } else {
                        _gotoNext = 7626282i32;
                    };
                } else if (__value__ == (7625690i32)) {
                    _d_7625707 = _s[(_i_7625666 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7625719i32;
                } else if (__value__ == (7625719i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7625707 : Bool) && (_d_7625707 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7625730i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7625707 : Bool) && (_d_7625707 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7625774i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7625707 : Bool) && (_d_7625707 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7625823i32;
                    } else {
                        _gotoNext = 7625872i32;
                    };
                } else if (__value__ == (7625730i32)) {
                    _v_7625698 = (_d_7625707 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7625937i32;
                } else if (__value__ == (7625774i32)) {
                    _v_7625698 = ((_d_7625707 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7625937i32;
                } else if (__value__ == (7625823i32)) {
                    _v_7625698 = ((_d_7625707 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7625937i32;
                } else if (__value__ == (7625872i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7626297i32;
                } else if (__value__ == (7625937i32)) {
                    if (((_v_7625698 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7625955i32;
                    } else {
                        _gotoNext = 7626014i32;
                    };
                } else if (__value__ == (7625955i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7626297i32;
                } else if (__value__ == (7626014i32)) {
                    if ((_n >= _cutoff_7625008 : Bool)) {
                        _gotoNext = 7626029i32;
                    } else {
                        _gotoNext = 7626117i32;
                    };
                } else if (__value__ == (7626029i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7626297i32;
                } else if (__value__ == (7626117i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7626138 = (_n + (_v_7625698 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7626138 < _n : Bool) || (_n1_7626138 > _maxVal_7625016 : Bool) : Bool)) {
                        _gotoNext = 7626185i32;
                    } else {
                        _gotoNext = 7626270i32;
                    };
                } else if (__value__ == (7626185i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7626297i32;
                } else if (__value__ == (7626270i32)) {
                    _n = _n1_7626138;
                    _i_7625666++;
                    _gotoNext = 7625662i32;
                } else if (__value__ == (7626282i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7626297i32;
                } else if (__value__ == (7626297i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7625088 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
