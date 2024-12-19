package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7878231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7877800:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7877791:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7877759:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7877181:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7877109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7877101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7877141i32;
                    } else {
                        _gotoNext = 7877181i32;
                    };
                } else if (__value__ == (7877141i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7877181i32;
                } else if (__value__ == (7877181i32)) {
                    _s0_7877181 = _s;
                    _gotoNext = 7877190i32;
                } else if (__value__ == (7877190i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7877200i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7877258i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7877321i32;
                    } else {
                        _gotoNext = 7877602i32;
                    };
                } else if (__value__ == (7877200i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7878390i32;
                } else if (__value__ == (7877258i32)) {
                    _gotoNext = 7877686i32;
                } else if (__value__ == (7877321i32)) {
                    _gotoNext = 7877372i32;
                } else if (__value__ == (7877372i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7877383i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7877542i32;
                    } else {
                        _gotoNext = 7877574i32;
                    };
                } else if (__value__ == (7877383i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7877490i32;
                    } else {
                        _gotoNext = 7877686i32;
                    };
                } else if (__value__ == (7877490i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7878390i32;
                } else if (__value__ == (7877542i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7877686i32;
                } else if (__value__ == (7877574i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7877686i32;
                } else if (__value__ == (7877602i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7878390i32;
                } else if (__value__ == (7877686i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7877101 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7877109 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7877759 = (0 : stdgo.GoInt);
                    _gotoNext = 7877755i32;
                } else if (__value__ == (7877755i32)) {
                    if ((_i_7877759 < (_s.length) : Bool)) {
                        _gotoNext = 7877783i32;
                    } else {
                        _gotoNext = 7878375i32;
                    };
                } else if (__value__ == (7877783i32)) {
                    _d_7877800 = _s[(_i_7877759 : stdgo.GoInt)];
                    _gotoNext = 7877812i32;
                } else if (__value__ == (7877812i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7877800 : Bool) && (_d_7877800 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7877823i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7877800 : Bool) && (_d_7877800 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7877867i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7877800 : Bool) && (_d_7877800 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7877916i32;
                    } else {
                        _gotoNext = 7877965i32;
                    };
                } else if (__value__ == (7877823i32)) {
                    _v_7877791 = (_d_7877800 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7878030i32;
                } else if (__value__ == (7877867i32)) {
                    _v_7877791 = ((_d_7877800 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7878030i32;
                } else if (__value__ == (7877916i32)) {
                    _v_7877791 = ((_d_7877800 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7878030i32;
                } else if (__value__ == (7877965i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7878390i32;
                } else if (__value__ == (7878030i32)) {
                    if (((_v_7877791 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7878048i32;
                    } else {
                        _gotoNext = 7878107i32;
                    };
                } else if (__value__ == (7878048i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7878390i32;
                } else if (__value__ == (7878107i32)) {
                    if ((_n >= _cutoff_7877101 : Bool)) {
                        _gotoNext = 7878122i32;
                    } else {
                        _gotoNext = 7878210i32;
                    };
                } else if (__value__ == (7878122i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7878390i32;
                } else if (__value__ == (7878210i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7878231 = (_n + (_v_7877791 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7878231 < _n : Bool) || (_n1_7878231 > _maxVal_7877109 : Bool) : Bool)) {
                        _gotoNext = 7878278i32;
                    } else {
                        _gotoNext = 7878363i32;
                    };
                } else if (__value__ == (7878278i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7878390i32;
                } else if (__value__ == (7878363i32)) {
                    _n = _n1_7878231;
                    _i_7877759++;
                    _gotoNext = 7877755i32;
                } else if (__value__ == (7878375i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7878390i32;
                } else if (__value__ == (7878390i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7877181 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
