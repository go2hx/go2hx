package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7832020:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7831589:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7831580:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7831548:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7830970:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7830898:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7830890:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7830930i32;
                    } else {
                        _gotoNext = 7830970i32;
                    };
                } else if (__value__ == (7830930i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7830970i32;
                } else if (__value__ == (7830970i32)) {
                    _s0_7830970 = _s;
                    _gotoNext = 7830979i32;
                } else if (__value__ == (7830979i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7830989i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7831047i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7831110i32;
                    } else {
                        _gotoNext = 7831391i32;
                    };
                } else if (__value__ == (7830989i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7832179i32;
                } else if (__value__ == (7831047i32)) {
                    _gotoNext = 7831475i32;
                } else if (__value__ == (7831110i32)) {
                    _gotoNext = 7831161i32;
                } else if (__value__ == (7831161i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7831172i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7831331i32;
                    } else {
                        _gotoNext = 7831363i32;
                    };
                } else if (__value__ == (7831172i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7831279i32;
                    } else {
                        _gotoNext = 7831475i32;
                    };
                } else if (__value__ == (7831279i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7832179i32;
                } else if (__value__ == (7831331i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7831475i32;
                } else if (__value__ == (7831363i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7831475i32;
                } else if (__value__ == (7831391i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7832179i32;
                } else if (__value__ == (7831475i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7830890 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7830898 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7831548 = (0 : stdgo.GoInt);
                    _gotoNext = 7831544i32;
                } else if (__value__ == (7831544i32)) {
                    if ((_i_7831548 < (_s.length) : Bool)) {
                        _gotoNext = 7831572i32;
                    } else {
                        _gotoNext = 7832164i32;
                    };
                } else if (__value__ == (7831572i32)) {
                    _d_7831589 = _s[(_i_7831548 : stdgo.GoInt)];
                    _gotoNext = 7831601i32;
                } else if (__value__ == (7831601i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7831589 : Bool) && (_d_7831589 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7831612i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7831589 : Bool) && (_d_7831589 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7831656i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7831589 : Bool) && (_d_7831589 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7831705i32;
                    } else {
                        _gotoNext = 7831754i32;
                    };
                } else if (__value__ == (7831612i32)) {
                    _v_7831580 = (_d_7831589 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7831819i32;
                } else if (__value__ == (7831656i32)) {
                    _v_7831580 = ((_d_7831589 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7831819i32;
                } else if (__value__ == (7831705i32)) {
                    _v_7831580 = ((_d_7831589 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7831819i32;
                } else if (__value__ == (7831754i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7832179i32;
                } else if (__value__ == (7831819i32)) {
                    if (((_v_7831580 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7831837i32;
                    } else {
                        _gotoNext = 7831896i32;
                    };
                } else if (__value__ == (7831837i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7832179i32;
                } else if (__value__ == (7831896i32)) {
                    if ((_n >= _cutoff_7830890 : Bool)) {
                        _gotoNext = 7831911i32;
                    } else {
                        _gotoNext = 7831999i32;
                    };
                } else if (__value__ == (7831911i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7832179i32;
                } else if (__value__ == (7831999i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7832020 = (_n + (_v_7831580 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7832020 < _n : Bool) || (_n1_7832020 > _maxVal_7830898 : Bool) : Bool)) {
                        _gotoNext = 7832067i32;
                    } else {
                        _gotoNext = 7832152i32;
                    };
                } else if (__value__ == (7832067i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7832179i32;
                } else if (__value__ == (7832152i32)) {
                    _n = _n1_7832020;
                    _i_7831548++;
                    _gotoNext = 7831544i32;
                } else if (__value__ == (7832164i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7832179i32;
                } else if (__value__ == (7832179i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7830970 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
