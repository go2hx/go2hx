package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7557080:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7557071:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7557039:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7556461:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7556389:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7556381:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7557511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7556421i32;
                    } else {
                        _gotoNext = 7556461i32;
                    };
                } else if (__value__ == (7556421i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7556461i32;
                } else if (__value__ == (7556461i32)) {
                    _s0_7556461 = _s;
                    _gotoNext = 7556470i32;
                } else if (__value__ == (7556470i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7556480i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7556538i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7556601i32;
                    } else {
                        _gotoNext = 7556882i32;
                    };
                } else if (__value__ == (7556480i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7557670i32;
                } else if (__value__ == (7556538i32)) {
                    _gotoNext = 7556966i32;
                } else if (__value__ == (7556601i32)) {
                    _gotoNext = 7556652i32;
                } else if (__value__ == (7556652i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7556663i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7556822i32;
                    } else {
                        _gotoNext = 7556854i32;
                    };
                } else if (__value__ == (7556663i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7556770i32;
                    } else {
                        _gotoNext = 7556966i32;
                    };
                } else if (__value__ == (7556770i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7557670i32;
                } else if (__value__ == (7556822i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7556966i32;
                } else if (__value__ == (7556854i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7556966i32;
                } else if (__value__ == (7556882i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7557670i32;
                } else if (__value__ == (7556966i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7556381 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7556389 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7557039 = (0 : stdgo.GoInt);
                    _gotoNext = 7557035i32;
                } else if (__value__ == (7557035i32)) {
                    if ((_i_7557039 < (_s.length) : Bool)) {
                        _gotoNext = 7557063i32;
                    } else {
                        _gotoNext = 7557655i32;
                    };
                } else if (__value__ == (7557063i32)) {
                    _d_7557080 = _s[(_i_7557039 : stdgo.GoInt)];
                    _gotoNext = 7557092i32;
                } else if (__value__ == (7557092i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7557080 : Bool) && (_d_7557080 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7557103i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7557080 : Bool) && (_d_7557080 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7557147i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7557080 : Bool) && (_d_7557080 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7557196i32;
                    } else {
                        _gotoNext = 7557245i32;
                    };
                } else if (__value__ == (7557103i32)) {
                    _v_7557071 = (_d_7557080 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7557310i32;
                } else if (__value__ == (7557147i32)) {
                    _v_7557071 = ((_d_7557080 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7557310i32;
                } else if (__value__ == (7557196i32)) {
                    _v_7557071 = ((_d_7557080 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7557310i32;
                } else if (__value__ == (7557245i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7557670i32;
                } else if (__value__ == (7557310i32)) {
                    if (((_v_7557071 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7557328i32;
                    } else {
                        _gotoNext = 7557387i32;
                    };
                } else if (__value__ == (7557328i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7557670i32;
                } else if (__value__ == (7557387i32)) {
                    if ((_n >= _cutoff_7556381 : Bool)) {
                        _gotoNext = 7557402i32;
                    } else {
                        _gotoNext = 7557490i32;
                    };
                } else if (__value__ == (7557402i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7557670i32;
                } else if (__value__ == (7557490i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7557511 = (_n + (_v_7557071 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7557511 < _n : Bool) || (_n1_7557511 > _maxVal_7556389 : Bool) : Bool)) {
                        _gotoNext = 7557558i32;
                    } else {
                        _gotoNext = 7557643i32;
                    };
                } else if (__value__ == (7557558i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7557670i32;
                } else if (__value__ == (7557643i32)) {
                    _n = _n1_7557511;
                    _i_7557039++;
                    _gotoNext = 7557035i32;
                } else if (__value__ == (7557655i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7557670i32;
                } else if (__value__ == (7557670i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7556461 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
