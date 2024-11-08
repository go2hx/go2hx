package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _s0_7701949:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7701877:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7701869:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7702999:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7702568:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7702559:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7702527:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7701909i32;
                    } else {
                        _gotoNext = 7701949i32;
                    };
                } else if (__value__ == (7701909i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7701949i32;
                } else if (__value__ == (7701949i32)) {
                    _s0_7701949 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7701958i32;
                } else if (__value__ == (7701958i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7701968i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7702026i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7702089i32;
                    } else {
                        _gotoNext = 7702370i32;
                    };
                } else if (__value__ == (7701968i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7703158i32;
                } else if (__value__ == (7702026i32)) {
                    _gotoNext = 7702454i32;
                } else if (__value__ == (7702089i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7702140i32;
                } else if (__value__ == (7702140i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7702151i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7702310i32;
                    } else {
                        _gotoNext = 7702342i32;
                    };
                } else if (__value__ == (7702151i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7702258i32;
                    } else {
                        _gotoNext = 7702454i32;
                    };
                } else if (__value__ == (7702258i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7703158i32;
                } else if (__value__ == (7702310i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7702454i32;
                } else if (__value__ == (7702342i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7702454i32;
                } else if (__value__ == (7702370i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7703158i32;
                } else if (__value__ == (7702454i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7701869 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7701877 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7702527 = (0 : stdgo.GoInt);
                    _gotoNext = 7702523i32;
                } else if (__value__ == (7702523i32)) {
                    if ((_i_7702527 < (_s.length) : Bool)) {
                        _gotoNext = 7702551i32;
                    } else {
                        _gotoNext = 7703143i32;
                    };
                } else if (__value__ == (7702551i32)) {
                    _d_7702568 = _s[(_i_7702527 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7702580i32;
                } else if (__value__ == (7702580i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7702568 : Bool) && (_d_7702568 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7702591i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7702568 : Bool) && (_d_7702568 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7702635i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7702568 : Bool) && (_d_7702568 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7702684i32;
                    } else {
                        _gotoNext = 7702733i32;
                    };
                } else if (__value__ == (7702591i32)) {
                    _v_7702559 = (_d_7702568 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7702798i32;
                } else if (__value__ == (7702635i32)) {
                    _v_7702559 = ((_d_7702568 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7702798i32;
                } else if (__value__ == (7702684i32)) {
                    _v_7702559 = ((_d_7702568 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7702798i32;
                } else if (__value__ == (7702733i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7703158i32;
                } else if (__value__ == (7702798i32)) {
                    if (((_v_7702559 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7702816i32;
                    } else {
                        _gotoNext = 7702875i32;
                    };
                } else if (__value__ == (7702816i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7703158i32;
                } else if (__value__ == (7702875i32)) {
                    if ((_n >= _cutoff_7701869 : Bool)) {
                        _gotoNext = 7702890i32;
                    } else {
                        _gotoNext = 7702978i32;
                    };
                } else if (__value__ == (7702890i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7703158i32;
                } else if (__value__ == (7702978i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7702999 = (_n + (_v_7702559 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7702999 < _n : Bool) || (_n1_7702999 > _maxVal_7701877 : Bool) : Bool)) {
                        _gotoNext = 7703046i32;
                    } else {
                        _gotoNext = 7703131i32;
                    };
                } else if (__value__ == (7703046i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7703158i32;
                } else if (__value__ == (7703131i32)) {
                    _n = _n1_7702999;
                    _i_7702527++;
                    _gotoNext = 7702523i32;
                } else if (__value__ == (7703143i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7703158i32;
                } else if (__value__ == (7703158i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7701949 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
