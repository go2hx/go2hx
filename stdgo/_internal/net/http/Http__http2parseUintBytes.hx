package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7965194:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7964616:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7964544:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7964536:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7965666:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7965235:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7965226:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7964576i32;
                    } else {
                        _gotoNext = 7964616i32;
                    };
                } else if (__value__ == (7964576i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7964616i32;
                } else if (__value__ == (7964616i32)) {
                    _s0_7964616 = _s;
                    _gotoNext = 7964625i32;
                } else if (__value__ == (7964625i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7964635i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7964693i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7964756i32;
                    } else {
                        _gotoNext = 7965037i32;
                    };
                } else if (__value__ == (7964635i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7965825i32;
                } else if (__value__ == (7964693i32)) {
                    _gotoNext = 7965121i32;
                } else if (__value__ == (7964756i32)) {
                    _gotoNext = 7964807i32;
                } else if (__value__ == (7964807i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7964818i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7964977i32;
                    } else {
                        _gotoNext = 7965009i32;
                    };
                } else if (__value__ == (7964818i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7964925i32;
                    } else {
                        _gotoNext = 7965121i32;
                    };
                } else if (__value__ == (7964925i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7965825i32;
                } else if (__value__ == (7964977i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7965121i32;
                } else if (__value__ == (7965009i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7965121i32;
                } else if (__value__ == (7965037i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7965825i32;
                } else if (__value__ == (7965121i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7964536 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7964544 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7965194 = (0 : stdgo.GoInt);
                    _gotoNext = 7965190i32;
                } else if (__value__ == (7965190i32)) {
                    if ((_i_7965194 < (_s.length) : Bool)) {
                        _gotoNext = 7965218i32;
                    } else {
                        _gotoNext = 7965810i32;
                    };
                } else if (__value__ == (7965218i32)) {
                    _d_7965235 = _s[(_i_7965194 : stdgo.GoInt)];
                    _gotoNext = 7965247i32;
                } else if (__value__ == (7965247i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7965235 : Bool) && (_d_7965235 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7965258i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7965235 : Bool) && (_d_7965235 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7965302i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7965235 : Bool) && (_d_7965235 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7965351i32;
                    } else {
                        _gotoNext = 7965400i32;
                    };
                } else if (__value__ == (7965258i32)) {
                    _v_7965226 = (_d_7965235 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7965465i32;
                } else if (__value__ == (7965302i32)) {
                    _v_7965226 = ((_d_7965235 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7965465i32;
                } else if (__value__ == (7965351i32)) {
                    _v_7965226 = ((_d_7965235 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7965465i32;
                } else if (__value__ == (7965400i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7965825i32;
                } else if (__value__ == (7965465i32)) {
                    if (((_v_7965226 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7965483i32;
                    } else {
                        _gotoNext = 7965542i32;
                    };
                } else if (__value__ == (7965483i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7965825i32;
                } else if (__value__ == (7965542i32)) {
                    if ((_n >= _cutoff_7964536 : Bool)) {
                        _gotoNext = 7965557i32;
                    } else {
                        _gotoNext = 7965645i32;
                    };
                } else if (__value__ == (7965557i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7965825i32;
                } else if (__value__ == (7965645i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7965666 = (_n + (_v_7965226 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7965666 < _n : Bool) || (_n1_7965666 > _maxVal_7964544 : Bool) : Bool)) {
                        _gotoNext = 7965713i32;
                    } else {
                        _gotoNext = 7965798i32;
                    };
                } else if (__value__ == (7965713i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7965825i32;
                } else if (__value__ == (7965798i32)) {
                    _n = _n1_7965666;
                    _i_7965194++;
                    _gotoNext = 7965190i32;
                } else if (__value__ == (7965810i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7965825i32;
                } else if (__value__ == (7965825i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7964616 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
