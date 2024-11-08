package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7823494:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7823485:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7823453:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7822875:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7822803:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7822795:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7823925:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7822835i32;
                    } else {
                        _gotoNext = 7822875i32;
                    };
                } else if (__value__ == (7822835i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7822875i32;
                } else if (__value__ == (7822875i32)) {
                    _s0_7822875 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7822884i32;
                } else if (__value__ == (7822884i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7822894i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7822952i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7823015i32;
                    } else {
                        _gotoNext = 7823296i32;
                    };
                } else if (__value__ == (7822894i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7824084i32;
                } else if (__value__ == (7822952i32)) {
                    _gotoNext = 7823380i32;
                } else if (__value__ == (7823015i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7823066i32;
                } else if (__value__ == (7823066i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7823077i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7823236i32;
                    } else {
                        _gotoNext = 7823268i32;
                    };
                } else if (__value__ == (7823077i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7823184i32;
                    } else {
                        _gotoNext = 7823380i32;
                    };
                } else if (__value__ == (7823184i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7824084i32;
                } else if (__value__ == (7823236i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7823380i32;
                } else if (__value__ == (7823268i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7823380i32;
                } else if (__value__ == (7823296i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7824084i32;
                } else if (__value__ == (7823380i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7822795 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7822803 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7823453 = (0 : stdgo.GoInt);
                    _gotoNext = 7823449i32;
                } else if (__value__ == (7823449i32)) {
                    if ((_i_7823453 < (_s.length) : Bool)) {
                        _gotoNext = 7823477i32;
                    } else {
                        _gotoNext = 7824069i32;
                    };
                } else if (__value__ == (7823477i32)) {
                    _d_7823494 = _s[(_i_7823453 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7823506i32;
                } else if (__value__ == (7823506i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7823494 : Bool) && (_d_7823494 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7823517i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7823494 : Bool) && (_d_7823494 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7823561i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7823494 : Bool) && (_d_7823494 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7823610i32;
                    } else {
                        _gotoNext = 7823659i32;
                    };
                } else if (__value__ == (7823517i32)) {
                    _v_7823485 = (_d_7823494 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7823724i32;
                } else if (__value__ == (7823561i32)) {
                    _v_7823485 = ((_d_7823494 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7823724i32;
                } else if (__value__ == (7823610i32)) {
                    _v_7823485 = ((_d_7823494 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7823724i32;
                } else if (__value__ == (7823659i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7824084i32;
                } else if (__value__ == (7823724i32)) {
                    if (((_v_7823485 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7823742i32;
                    } else {
                        _gotoNext = 7823801i32;
                    };
                } else if (__value__ == (7823742i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7824084i32;
                } else if (__value__ == (7823801i32)) {
                    if ((_n >= _cutoff_7822795 : Bool)) {
                        _gotoNext = 7823816i32;
                    } else {
                        _gotoNext = 7823904i32;
                    };
                } else if (__value__ == (7823816i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7824084i32;
                } else if (__value__ == (7823904i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7823925 = (_n + (_v_7823485 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7823925 < _n : Bool) || (_n1_7823925 > _maxVal_7822803 : Bool) : Bool)) {
                        _gotoNext = 7823972i32;
                    } else {
                        _gotoNext = 7824057i32;
                    };
                } else if (__value__ == (7823972i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7824084i32;
                } else if (__value__ == (7824057i32)) {
                    _n = _n1_7823925;
                    _i_7823453++;
                    _gotoNext = 7823449i32;
                } else if (__value__ == (7824069i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7824084i32;
                } else if (__value__ == (7824084i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7822875 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
