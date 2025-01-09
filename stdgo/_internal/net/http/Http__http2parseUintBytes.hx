package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7816217:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7815639:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7815567:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7815559:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7816689:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7816258:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7816249:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7815599i32;
                    } else {
                        _gotoNext = 7815639i32;
                    };
                } else if (__value__ == (7815599i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7815639i32;
                } else if (__value__ == (7815639i32)) {
                    _s0_7815639 = _s;
                    _gotoNext = 7815648i32;
                } else if (__value__ == (7815648i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7815658i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7815716i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7815779i32;
                    } else {
                        _gotoNext = 7816060i32;
                    };
                } else if (__value__ == (7815658i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7816848i32;
                } else if (__value__ == (7815716i32)) {
                    _gotoNext = 7816144i32;
                } else if (__value__ == (7815779i32)) {
                    _gotoNext = 7815830i32;
                } else if (__value__ == (7815830i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7815841i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7816000i32;
                    } else {
                        _gotoNext = 7816032i32;
                    };
                } else if (__value__ == (7815841i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7815948i32;
                    } else {
                        _gotoNext = 7816144i32;
                    };
                } else if (__value__ == (7815948i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7816848i32;
                } else if (__value__ == (7816000i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7816144i32;
                } else if (__value__ == (7816032i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7816144i32;
                } else if (__value__ == (7816060i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7816848i32;
                } else if (__value__ == (7816144i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7815559 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7815567 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7816217 = (0 : stdgo.GoInt);
                    _gotoNext = 7816213i32;
                } else if (__value__ == (7816213i32)) {
                    if ((_i_7816217 < (_s.length) : Bool)) {
                        _gotoNext = 7816241i32;
                    } else {
                        _gotoNext = 7816833i32;
                    };
                } else if (__value__ == (7816241i32)) {
                    _d_7816258 = _s[(_i_7816217 : stdgo.GoInt)];
                    _gotoNext = 7816270i32;
                } else if (__value__ == (7816270i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7816258 : Bool) && (_d_7816258 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7816281i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7816258 : Bool) && (_d_7816258 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7816325i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7816258 : Bool) && (_d_7816258 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7816374i32;
                    } else {
                        _gotoNext = 7816423i32;
                    };
                } else if (__value__ == (7816281i32)) {
                    _v_7816249 = (_d_7816258 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7816488i32;
                } else if (__value__ == (7816325i32)) {
                    _v_7816249 = ((_d_7816258 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7816488i32;
                } else if (__value__ == (7816374i32)) {
                    _v_7816249 = ((_d_7816258 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7816488i32;
                } else if (__value__ == (7816423i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7816848i32;
                } else if (__value__ == (7816488i32)) {
                    if (((_v_7816249 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7816506i32;
                    } else {
                        _gotoNext = 7816565i32;
                    };
                } else if (__value__ == (7816506i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7816848i32;
                } else if (__value__ == (7816565i32)) {
                    if ((_n >= _cutoff_7815559 : Bool)) {
                        _gotoNext = 7816580i32;
                    } else {
                        _gotoNext = 7816668i32;
                    };
                } else if (__value__ == (7816580i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7816848i32;
                } else if (__value__ == (7816668i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7816689 = (_n + (_v_7816249 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7816689 < _n : Bool) || (_n1_7816689 > _maxVal_7815567 : Bool) : Bool)) {
                        _gotoNext = 7816736i32;
                    } else {
                        _gotoNext = 7816821i32;
                    };
                } else if (__value__ == (7816736i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7816848i32;
                } else if (__value__ == (7816821i32)) {
                    _n = _n1_7816689;
                    _i_7816217++;
                    _gotoNext = 7816213i32;
                } else if (__value__ == (7816833i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7816848i32;
                } else if (__value__ == (7816848i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7815639 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
