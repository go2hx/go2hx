package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7737876:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7739006:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7738575:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7738566:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7738534:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7737956:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7737884:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7737916i32;
                    } else {
                        _gotoNext = 7737956i32;
                    };
                } else if (__value__ == (7737916i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7737956i32;
                } else if (__value__ == (7737956i32)) {
                    _s0_7737956 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7737965i32;
                } else if (__value__ == (7737965i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7737975i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7738033i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7738096i32;
                    } else {
                        _gotoNext = 7738377i32;
                    };
                } else if (__value__ == (7737975i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7739165i32;
                } else if (__value__ == (7738033i32)) {
                    _gotoNext = 7738461i32;
                } else if (__value__ == (7738096i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7738147i32;
                } else if (__value__ == (7738147i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7738158i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7738317i32;
                    } else {
                        _gotoNext = 7738349i32;
                    };
                } else if (__value__ == (7738158i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7738265i32;
                    } else {
                        _gotoNext = 7738461i32;
                    };
                } else if (__value__ == (7738265i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7739165i32;
                } else if (__value__ == (7738317i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7738461i32;
                } else if (__value__ == (7738349i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7738461i32;
                } else if (__value__ == (7738377i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7739165i32;
                } else if (__value__ == (7738461i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7737876 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7737884 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7738534 = (0 : stdgo.GoInt);
                    _gotoNext = 7738530i32;
                } else if (__value__ == (7738530i32)) {
                    if ((_i_7738534 < (_s.length) : Bool)) {
                        _gotoNext = 7738558i32;
                    } else {
                        _gotoNext = 7739150i32;
                    };
                } else if (__value__ == (7738558i32)) {
                    _d_7738575 = _s[(_i_7738534 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7738587i32;
                } else if (__value__ == (7738587i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7738575 : Bool) && (_d_7738575 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7738598i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7738575 : Bool) && (_d_7738575 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7738642i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7738575 : Bool) && (_d_7738575 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7738691i32;
                    } else {
                        _gotoNext = 7738740i32;
                    };
                } else if (__value__ == (7738598i32)) {
                    _v_7738566 = (_d_7738575 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7738805i32;
                } else if (__value__ == (7738642i32)) {
                    _v_7738566 = ((_d_7738575 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7738805i32;
                } else if (__value__ == (7738691i32)) {
                    _v_7738566 = ((_d_7738575 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7738805i32;
                } else if (__value__ == (7738740i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7739165i32;
                } else if (__value__ == (7738805i32)) {
                    if (((_v_7738566 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7738823i32;
                    } else {
                        _gotoNext = 7738882i32;
                    };
                } else if (__value__ == (7738823i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7739165i32;
                } else if (__value__ == (7738882i32)) {
                    if ((_n >= _cutoff_7737876 : Bool)) {
                        _gotoNext = 7738897i32;
                    } else {
                        _gotoNext = 7738985i32;
                    };
                } else if (__value__ == (7738897i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7739165i32;
                } else if (__value__ == (7738985i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7739006 = (_n + (_v_7738566 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7739006 < _n : Bool) || (_n1_7739006 > _maxVal_7737884 : Bool) : Bool)) {
                        _gotoNext = 7739053i32;
                    } else {
                        _gotoNext = 7739138i32;
                    };
                } else if (__value__ == (7739053i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7739165i32;
                } else if (__value__ == (7739138i32)) {
                    _n = _n1_7739006;
                    _i_7738534++;
                    _gotoNext = 7738530i32;
                } else if (__value__ == (7739150i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7739165i32;
                } else if (__value__ == (7739165i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7737956 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
