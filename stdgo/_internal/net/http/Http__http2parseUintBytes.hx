package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7675433:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7675002:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7674993:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7674961:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7674383:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7674311:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7674303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7674343i32;
                    } else {
                        _gotoNext = 7674383i32;
                    };
                } else if (__value__ == (7674343i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7674383i32;
                } else if (__value__ == (7674383i32)) {
                    _s0_7674383 = _s;
                    _gotoNext = 7674392i32;
                } else if (__value__ == (7674392i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7674402i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7674460i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7674523i32;
                    } else {
                        _gotoNext = 7674804i32;
                    };
                } else if (__value__ == (7674402i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7675592i32;
                } else if (__value__ == (7674460i32)) {
                    _gotoNext = 7674888i32;
                } else if (__value__ == (7674523i32)) {
                    _gotoNext = 7674574i32;
                } else if (__value__ == (7674574i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7674585i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7674744i32;
                    } else {
                        _gotoNext = 7674776i32;
                    };
                } else if (__value__ == (7674585i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7674692i32;
                    } else {
                        _gotoNext = 7674888i32;
                    };
                } else if (__value__ == (7674692i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7675592i32;
                } else if (__value__ == (7674744i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7674888i32;
                } else if (__value__ == (7674776i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7674888i32;
                } else if (__value__ == (7674804i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7675592i32;
                } else if (__value__ == (7674888i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7674303 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7674311 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7674961 = (0 : stdgo.GoInt);
                    _gotoNext = 7674957i32;
                } else if (__value__ == (7674957i32)) {
                    if ((_i_7674961 < (_s.length) : Bool)) {
                        _gotoNext = 7674985i32;
                    } else {
                        _gotoNext = 7675577i32;
                    };
                } else if (__value__ == (7674985i32)) {
                    _d_7675002 = _s[(_i_7674961 : stdgo.GoInt)];
                    _gotoNext = 7675014i32;
                } else if (__value__ == (7675014i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7675002 : Bool) && (_d_7675002 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7675025i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7675002 : Bool) && (_d_7675002 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7675069i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7675002 : Bool) && (_d_7675002 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7675118i32;
                    } else {
                        _gotoNext = 7675167i32;
                    };
                } else if (__value__ == (7675025i32)) {
                    _v_7674993 = (_d_7675002 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7675232i32;
                } else if (__value__ == (7675069i32)) {
                    _v_7674993 = ((_d_7675002 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7675232i32;
                } else if (__value__ == (7675118i32)) {
                    _v_7674993 = ((_d_7675002 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7675232i32;
                } else if (__value__ == (7675167i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7675592i32;
                } else if (__value__ == (7675232i32)) {
                    if (((_v_7674993 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7675250i32;
                    } else {
                        _gotoNext = 7675309i32;
                    };
                } else if (__value__ == (7675250i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7675592i32;
                } else if (__value__ == (7675309i32)) {
                    if ((_n >= _cutoff_7674303 : Bool)) {
                        _gotoNext = 7675324i32;
                    } else {
                        _gotoNext = 7675412i32;
                    };
                } else if (__value__ == (7675324i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7675592i32;
                } else if (__value__ == (7675412i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7675433 = (_n + (_v_7674993 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7675433 < _n : Bool) || (_n1_7675433 > _maxVal_7674311 : Bool) : Bool)) {
                        _gotoNext = 7675480i32;
                    } else {
                        _gotoNext = 7675565i32;
                    };
                } else if (__value__ == (7675480i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7675592i32;
                } else if (__value__ == (7675565i32)) {
                    _n = _n1_7675433;
                    _i_7674961++;
                    _gotoNext = 7674957i32;
                } else if (__value__ == (7675577i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7675592i32;
                } else if (__value__ == (7675592i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7674383 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
