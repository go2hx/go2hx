package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7579627:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7579595:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7579017:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7578945:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7578937:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7580067:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7579636:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7578977i32;
                    } else {
                        _gotoNext = 7579017i32;
                    };
                } else if (__value__ == (7578977i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7579017i32;
                } else if (__value__ == (7579017i32)) {
                    _s0_7579017 = _s;
                    _gotoNext = 7579026i32;
                } else if (__value__ == (7579026i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7579036i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7579094i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7579157i32;
                    } else {
                        _gotoNext = 7579438i32;
                    };
                } else if (__value__ == (7579036i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7580226i32;
                } else if (__value__ == (7579094i32)) {
                    _gotoNext = 7579522i32;
                } else if (__value__ == (7579157i32)) {
                    _gotoNext = 7579208i32;
                } else if (__value__ == (7579208i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7579219i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7579378i32;
                    } else {
                        _gotoNext = 7579410i32;
                    };
                } else if (__value__ == (7579219i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7579326i32;
                    } else {
                        _gotoNext = 7579522i32;
                    };
                } else if (__value__ == (7579326i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7580226i32;
                } else if (__value__ == (7579378i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7579522i32;
                } else if (__value__ == (7579410i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7579522i32;
                } else if (__value__ == (7579438i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7580226i32;
                } else if (__value__ == (7579522i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7578937 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7578945 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7579595 = (0 : stdgo.GoInt);
                    _gotoNext = 7579591i32;
                } else if (__value__ == (7579591i32)) {
                    if ((_i_7579595 < (_s.length) : Bool)) {
                        _gotoNext = 7579619i32;
                    } else {
                        _gotoNext = 7580211i32;
                    };
                } else if (__value__ == (7579619i32)) {
                    _d_7579636 = _s[(_i_7579595 : stdgo.GoInt)];
                    _gotoNext = 7579648i32;
                } else if (__value__ == (7579648i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7579636 : Bool) && (_d_7579636 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7579659i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7579636 : Bool) && (_d_7579636 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7579703i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7579636 : Bool) && (_d_7579636 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7579752i32;
                    } else {
                        _gotoNext = 7579801i32;
                    };
                } else if (__value__ == (7579659i32)) {
                    _v_7579627 = (_d_7579636 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7579866i32;
                } else if (__value__ == (7579703i32)) {
                    _v_7579627 = ((_d_7579636 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7579866i32;
                } else if (__value__ == (7579752i32)) {
                    _v_7579627 = ((_d_7579636 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7579866i32;
                } else if (__value__ == (7579801i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7580226i32;
                } else if (__value__ == (7579866i32)) {
                    if (((_v_7579627 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7579884i32;
                    } else {
                        _gotoNext = 7579943i32;
                    };
                } else if (__value__ == (7579884i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7580226i32;
                } else if (__value__ == (7579943i32)) {
                    if ((_n >= _cutoff_7578937 : Bool)) {
                        _gotoNext = 7579958i32;
                    } else {
                        _gotoNext = 7580046i32;
                    };
                } else if (__value__ == (7579958i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7580226i32;
                } else if (__value__ == (7580046i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7580067 = (_n + (_v_7579627 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7580067 < _n : Bool) || (_n1_7580067 > _maxVal_7578945 : Bool) : Bool)) {
                        _gotoNext = 7580114i32;
                    } else {
                        _gotoNext = 7580199i32;
                    };
                } else if (__value__ == (7580114i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7580226i32;
                } else if (__value__ == (7580199i32)) {
                    _n = _n1_7580067;
                    _i_7579595++;
                    _gotoNext = 7579591i32;
                } else if (__value__ == (7580211i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7580226i32;
                } else if (__value__ == (7580226i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7579017 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
