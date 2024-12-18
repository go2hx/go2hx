package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7635888:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7635856:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7635278:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7635206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7635198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7636328:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7635897:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7635238i32;
                    } else {
                        _gotoNext = 7635278i32;
                    };
                } else if (__value__ == (7635238i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7635278i32;
                } else if (__value__ == (7635278i32)) {
                    _s0_7635278 = _s;
                    _gotoNext = 7635287i32;
                } else if (__value__ == (7635287i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7635297i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7635355i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7635418i32;
                    } else {
                        _gotoNext = 7635699i32;
                    };
                } else if (__value__ == (7635297i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7636487i32;
                } else if (__value__ == (7635355i32)) {
                    _gotoNext = 7635783i32;
                } else if (__value__ == (7635418i32)) {
                    _gotoNext = 7635469i32;
                } else if (__value__ == (7635469i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7635480i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7635639i32;
                    } else {
                        _gotoNext = 7635671i32;
                    };
                } else if (__value__ == (7635480i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7635587i32;
                    } else {
                        _gotoNext = 7635783i32;
                    };
                } else if (__value__ == (7635587i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7636487i32;
                } else if (__value__ == (7635639i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7635783i32;
                } else if (__value__ == (7635671i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7635783i32;
                } else if (__value__ == (7635699i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7636487i32;
                } else if (__value__ == (7635783i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7635198 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7635206 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7635856 = (0 : stdgo.GoInt);
                    _gotoNext = 7635852i32;
                } else if (__value__ == (7635852i32)) {
                    if ((_i_7635856 < (_s.length) : Bool)) {
                        _gotoNext = 7635880i32;
                    } else {
                        _gotoNext = 7636472i32;
                    };
                } else if (__value__ == (7635880i32)) {
                    _d_7635897 = _s[(_i_7635856 : stdgo.GoInt)];
                    _gotoNext = 7635909i32;
                } else if (__value__ == (7635909i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7635897 : Bool) && (_d_7635897 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7635920i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7635897 : Bool) && (_d_7635897 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7635964i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7635897 : Bool) && (_d_7635897 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7636013i32;
                    } else {
                        _gotoNext = 7636062i32;
                    };
                } else if (__value__ == (7635920i32)) {
                    _v_7635888 = (_d_7635897 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7636127i32;
                } else if (__value__ == (7635964i32)) {
                    _v_7635888 = ((_d_7635897 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7636127i32;
                } else if (__value__ == (7636013i32)) {
                    _v_7635888 = ((_d_7635897 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7636127i32;
                } else if (__value__ == (7636062i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7636487i32;
                } else if (__value__ == (7636127i32)) {
                    if (((_v_7635888 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7636145i32;
                    } else {
                        _gotoNext = 7636204i32;
                    };
                } else if (__value__ == (7636145i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7636487i32;
                } else if (__value__ == (7636204i32)) {
                    if ((_n >= _cutoff_7635198 : Bool)) {
                        _gotoNext = 7636219i32;
                    } else {
                        _gotoNext = 7636307i32;
                    };
                } else if (__value__ == (7636219i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7636487i32;
                } else if (__value__ == (7636307i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7636328 = (_n + (_v_7635888 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7636328 < _n : Bool) || (_n1_7636328 > _maxVal_7635206 : Bool) : Bool)) {
                        _gotoNext = 7636375i32;
                    } else {
                        _gotoNext = 7636460i32;
                    };
                } else if (__value__ == (7636375i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7636487i32;
                } else if (__value__ == (7636460i32)) {
                    _n = _n1_7636328;
                    _i_7635856++;
                    _gotoNext = 7635852i32;
                } else if (__value__ == (7636472i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7636487i32;
                } else if (__value__ == (7636487i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7635278 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
