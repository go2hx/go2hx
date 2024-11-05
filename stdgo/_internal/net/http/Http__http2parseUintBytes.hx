package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7585272:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7585263:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7585231:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7584653:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7584581:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7584573:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7585703:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7584613i32;
                    } else {
                        _gotoNext = 7584653i32;
                    };
                } else if (__value__ == (7584613i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7584653i32;
                } else if (__value__ == (7584653i32)) {
                    _s0_7584653 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7584662i32;
                } else if (__value__ == (7584662i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7584672i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7584730i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7584793i32;
                    } else {
                        _gotoNext = 7585074i32;
                    };
                } else if (__value__ == (7584672i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7585862i32;
                } else if (__value__ == (7584730i32)) {
                    _gotoNext = 7585158i32;
                } else if (__value__ == (7584793i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7584844i32;
                } else if (__value__ == (7584844i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7584855i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7585014i32;
                    } else {
                        _gotoNext = 7585046i32;
                    };
                } else if (__value__ == (7584855i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7584962i32;
                    } else {
                        _gotoNext = 7585158i32;
                    };
                } else if (__value__ == (7584962i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7585862i32;
                } else if (__value__ == (7585014i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7585158i32;
                } else if (__value__ == (7585046i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7585158i32;
                } else if (__value__ == (7585074i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7585862i32;
                } else if (__value__ == (7585158i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7584573 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7584581 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7585231 = (0 : stdgo.GoInt);
                    _gotoNext = 7585227i32;
                } else if (__value__ == (7585227i32)) {
                    if ((_i_7585231 < (_s.length) : Bool)) {
                        _gotoNext = 7585255i32;
                    } else {
                        _gotoNext = 7585847i32;
                    };
                } else if (__value__ == (7585255i32)) {
                    _d_7585272 = _s[(_i_7585231 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7585284i32;
                } else if (__value__ == (7585284i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7585272 : Bool) && (_d_7585272 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7585295i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7585272 : Bool) && (_d_7585272 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7585339i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7585272 : Bool) && (_d_7585272 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7585388i32;
                    } else {
                        _gotoNext = 7585437i32;
                    };
                } else if (__value__ == (7585295i32)) {
                    _v_7585263 = (_d_7585272 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7585502i32;
                } else if (__value__ == (7585339i32)) {
                    _v_7585263 = ((_d_7585272 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7585502i32;
                } else if (__value__ == (7585388i32)) {
                    _v_7585263 = ((_d_7585272 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7585502i32;
                } else if (__value__ == (7585437i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7585862i32;
                } else if (__value__ == (7585502i32)) {
                    if (((_v_7585263 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7585520i32;
                    } else {
                        _gotoNext = 7585579i32;
                    };
                } else if (__value__ == (7585520i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7585862i32;
                } else if (__value__ == (7585579i32)) {
                    if ((_n >= _cutoff_7584573 : Bool)) {
                        _gotoNext = 7585594i32;
                    } else {
                        _gotoNext = 7585682i32;
                    };
                } else if (__value__ == (7585594i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7585862i32;
                } else if (__value__ == (7585682i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7585703 = (_n + (_v_7585263 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7585703 < _n : Bool) || (_n1_7585703 > _maxVal_7584581 : Bool) : Bool)) {
                        _gotoNext = 7585750i32;
                    } else {
                        _gotoNext = 7585835i32;
                    };
                } else if (__value__ == (7585750i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7585862i32;
                } else if (__value__ == (7585835i32)) {
                    _n = _n1_7585703;
                    _i_7585231++;
                    _gotoNext = 7585227i32;
                } else if (__value__ == (7585847i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7585862i32;
                } else if (__value__ == (7585862i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7584653 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
