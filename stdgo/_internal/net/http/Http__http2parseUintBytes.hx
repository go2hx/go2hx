package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7638646:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7638614:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7638036:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7637964:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7637956:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7639086:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7638655:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7637996i32;
                    } else {
                        _gotoNext = 7638036i32;
                    };
                } else if (__value__ == (7637996i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7638036i32;
                } else if (__value__ == (7638036i32)) {
                    _s0_7638036 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7638045i32;
                } else if (__value__ == (7638045i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7638055i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7638113i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7638176i32;
                    } else {
                        _gotoNext = 7638457i32;
                    };
                } else if (__value__ == (7638055i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7639245i32;
                } else if (__value__ == (7638113i32)) {
                    _gotoNext = 7638541i32;
                } else if (__value__ == (7638176i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7638227i32;
                } else if (__value__ == (7638227i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7638238i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7638397i32;
                    } else {
                        _gotoNext = 7638429i32;
                    };
                } else if (__value__ == (7638238i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7638345i32;
                    } else {
                        _gotoNext = 7638541i32;
                    };
                } else if (__value__ == (7638345i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7639245i32;
                } else if (__value__ == (7638397i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7638541i32;
                } else if (__value__ == (7638429i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7638541i32;
                } else if (__value__ == (7638457i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7639245i32;
                } else if (__value__ == (7638541i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7637956 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7637964 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7638614 = (0 : stdgo.GoInt);
                    _gotoNext = 7638610i32;
                } else if (__value__ == (7638610i32)) {
                    if ((_i_7638614 < (_s.length) : Bool)) {
                        _gotoNext = 7638638i32;
                    } else {
                        _gotoNext = 7639230i32;
                    };
                } else if (__value__ == (7638638i32)) {
                    _d_7638655 = _s[(_i_7638614 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7638667i32;
                } else if (__value__ == (7638667i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7638655 : Bool) && (_d_7638655 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7638678i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7638655 : Bool) && (_d_7638655 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7638722i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7638655 : Bool) && (_d_7638655 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7638771i32;
                    } else {
                        _gotoNext = 7638820i32;
                    };
                } else if (__value__ == (7638678i32)) {
                    _v_7638646 = (_d_7638655 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7638885i32;
                } else if (__value__ == (7638722i32)) {
                    _v_7638646 = ((_d_7638655 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7638885i32;
                } else if (__value__ == (7638771i32)) {
                    _v_7638646 = ((_d_7638655 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7638885i32;
                } else if (__value__ == (7638820i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7639245i32;
                } else if (__value__ == (7638885i32)) {
                    if (((_v_7638646 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7638903i32;
                    } else {
                        _gotoNext = 7638962i32;
                    };
                } else if (__value__ == (7638903i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7639245i32;
                } else if (__value__ == (7638962i32)) {
                    if ((_n >= _cutoff_7637956 : Bool)) {
                        _gotoNext = 7638977i32;
                    } else {
                        _gotoNext = 7639065i32;
                    };
                } else if (__value__ == (7638977i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7639245i32;
                } else if (__value__ == (7639065i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7639086 = (_n + (_v_7638646 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7639086 < _n : Bool) || (_n1_7639086 > _maxVal_7637964 : Bool) : Bool)) {
                        _gotoNext = 7639133i32;
                    } else {
                        _gotoNext = 7639218i32;
                    };
                } else if (__value__ == (7639133i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7639245i32;
                } else if (__value__ == (7639218i32)) {
                    _n = _n1_7639086;
                    _i_7638614++;
                    _gotoNext = 7638610i32;
                } else if (__value__ == (7639230i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7639245i32;
                } else if (__value__ == (7639245i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7638036 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
