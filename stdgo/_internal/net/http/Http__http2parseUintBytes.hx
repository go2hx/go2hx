package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7816902:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7816471:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7816462:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7816430:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7815852:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7815780:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7815772:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7815812i32;
                    } else {
                        _gotoNext = 7815852i32;
                    };
                } else if (__value__ == (7815812i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7815852i32;
                } else if (__value__ == (7815852i32)) {
                    _s0_7815852 = _s;
                    _gotoNext = 7815861i32;
                } else if (__value__ == (7815861i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7815871i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7815929i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7815992i32;
                    } else {
                        _gotoNext = 7816273i32;
                    };
                } else if (__value__ == (7815871i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7817061i32;
                } else if (__value__ == (7815929i32)) {
                    _gotoNext = 7816357i32;
                } else if (__value__ == (7815992i32)) {
                    _gotoNext = 7816043i32;
                } else if (__value__ == (7816043i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7816054i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7816213i32;
                    } else {
                        _gotoNext = 7816245i32;
                    };
                } else if (__value__ == (7816054i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7816161i32;
                    } else {
                        _gotoNext = 7816357i32;
                    };
                } else if (__value__ == (7816161i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7817061i32;
                } else if (__value__ == (7816213i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7816357i32;
                } else if (__value__ == (7816245i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7816357i32;
                } else if (__value__ == (7816273i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7817061i32;
                } else if (__value__ == (7816357i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7815772 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7815780 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7816430 = (0 : stdgo.GoInt);
                    _gotoNext = 7816426i32;
                } else if (__value__ == (7816426i32)) {
                    if ((_i_7816430 < (_s.length) : Bool)) {
                        _gotoNext = 7816454i32;
                    } else {
                        _gotoNext = 7817046i32;
                    };
                } else if (__value__ == (7816454i32)) {
                    _d_7816471 = _s[(_i_7816430 : stdgo.GoInt)];
                    _gotoNext = 7816483i32;
                } else if (__value__ == (7816483i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7816471 : Bool) && (_d_7816471 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7816494i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7816471 : Bool) && (_d_7816471 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7816538i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7816471 : Bool) && (_d_7816471 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7816587i32;
                    } else {
                        _gotoNext = 7816636i32;
                    };
                } else if (__value__ == (7816494i32)) {
                    _v_7816462 = (_d_7816471 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7816701i32;
                } else if (__value__ == (7816538i32)) {
                    _v_7816462 = ((_d_7816471 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7816701i32;
                } else if (__value__ == (7816587i32)) {
                    _v_7816462 = ((_d_7816471 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7816701i32;
                } else if (__value__ == (7816636i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7817061i32;
                } else if (__value__ == (7816701i32)) {
                    if (((_v_7816462 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7816719i32;
                    } else {
                        _gotoNext = 7816778i32;
                    };
                } else if (__value__ == (7816719i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7817061i32;
                } else if (__value__ == (7816778i32)) {
                    if ((_n >= _cutoff_7815772 : Bool)) {
                        _gotoNext = 7816793i32;
                    } else {
                        _gotoNext = 7816881i32;
                    };
                } else if (__value__ == (7816793i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7817061i32;
                } else if (__value__ == (7816881i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7816902 = (_n + (_v_7816462 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7816902 < _n : Bool) || (_n1_7816902 > _maxVal_7815780 : Bool) : Bool)) {
                        _gotoNext = 7816949i32;
                    } else {
                        _gotoNext = 7817034i32;
                    };
                } else if (__value__ == (7816949i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7817061i32;
                } else if (__value__ == (7817034i32)) {
                    _n = _n1_7816902;
                    _i_7816430++;
                    _gotoNext = 7816426i32;
                } else if (__value__ == (7817046i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7817061i32;
                } else if (__value__ == (7817061i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7815852 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
