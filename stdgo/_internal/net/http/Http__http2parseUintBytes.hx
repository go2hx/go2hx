package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7690691:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7691821:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7691390:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7691381:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7691349:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7690771:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7690699:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7690731i32;
                    } else {
                        _gotoNext = 7690771i32;
                    };
                } else if (__value__ == (7690731i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7690771i32;
                } else if (__value__ == (7690771i32)) {
                    _s0_7690771 = _s;
                    _gotoNext = 7690780i32;
                } else if (__value__ == (7690780i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7690790i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7690848i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7690911i32;
                    } else {
                        _gotoNext = 7691192i32;
                    };
                } else if (__value__ == (7690790i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7691980i32;
                } else if (__value__ == (7690848i32)) {
                    _gotoNext = 7691276i32;
                } else if (__value__ == (7690911i32)) {
                    _gotoNext = 7690962i32;
                } else if (__value__ == (7690962i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7690973i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7691132i32;
                    } else {
                        _gotoNext = 7691164i32;
                    };
                } else if (__value__ == (7690973i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7691080i32;
                    } else {
                        _gotoNext = 7691276i32;
                    };
                } else if (__value__ == (7691080i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7691980i32;
                } else if (__value__ == (7691132i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7691276i32;
                } else if (__value__ == (7691164i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7691276i32;
                } else if (__value__ == (7691192i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7691980i32;
                } else if (__value__ == (7691276i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7690691 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7690699 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7691349 = (0 : stdgo.GoInt);
                    _gotoNext = 7691345i32;
                } else if (__value__ == (7691345i32)) {
                    if ((_i_7691349 < (_s.length) : Bool)) {
                        _gotoNext = 7691373i32;
                    } else {
                        _gotoNext = 7691965i32;
                    };
                } else if (__value__ == (7691373i32)) {
                    _d_7691390 = _s[(_i_7691349 : stdgo.GoInt)];
                    _gotoNext = 7691402i32;
                } else if (__value__ == (7691402i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7691390 : Bool) && (_d_7691390 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7691413i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7691390 : Bool) && (_d_7691390 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7691457i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7691390 : Bool) && (_d_7691390 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7691506i32;
                    } else {
                        _gotoNext = 7691555i32;
                    };
                } else if (__value__ == (7691413i32)) {
                    _v_7691381 = (_d_7691390 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7691620i32;
                } else if (__value__ == (7691457i32)) {
                    _v_7691381 = ((_d_7691390 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7691620i32;
                } else if (__value__ == (7691506i32)) {
                    _v_7691381 = ((_d_7691390 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7691620i32;
                } else if (__value__ == (7691555i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7691980i32;
                } else if (__value__ == (7691620i32)) {
                    if (((_v_7691381 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7691638i32;
                    } else {
                        _gotoNext = 7691697i32;
                    };
                } else if (__value__ == (7691638i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7691980i32;
                } else if (__value__ == (7691697i32)) {
                    if ((_n >= _cutoff_7690691 : Bool)) {
                        _gotoNext = 7691712i32;
                    } else {
                        _gotoNext = 7691800i32;
                    };
                } else if (__value__ == (7691712i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7691980i32;
                } else if (__value__ == (7691800i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7691821 = (_n + (_v_7691381 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7691821 < _n : Bool) || (_n1_7691821 > _maxVal_7690699 : Bool) : Bool)) {
                        _gotoNext = 7691868i32;
                    } else {
                        _gotoNext = 7691953i32;
                    };
                } else if (__value__ == (7691868i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7691980i32;
                } else if (__value__ == (7691953i32)) {
                    _n = _n1_7691821;
                    _i_7691349++;
                    _gotoNext = 7691345i32;
                } else if (__value__ == (7691965i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7691980i32;
                } else if (__value__ == (7691980i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7690771 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
