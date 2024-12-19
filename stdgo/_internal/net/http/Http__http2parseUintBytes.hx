package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7635139:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7634561:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7634489:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7634481:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7635611:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7635180:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7635171:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7634521i32;
                    } else {
                        _gotoNext = 7634561i32;
                    };
                } else if (__value__ == (7634521i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7634561i32;
                } else if (__value__ == (7634561i32)) {
                    _s0_7634561 = _s;
                    _gotoNext = 7634570i32;
                } else if (__value__ == (7634570i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7634580i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7634638i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7634701i32;
                    } else {
                        _gotoNext = 7634982i32;
                    };
                } else if (__value__ == (7634580i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7635770i32;
                } else if (__value__ == (7634638i32)) {
                    _gotoNext = 7635066i32;
                } else if (__value__ == (7634701i32)) {
                    _gotoNext = 7634752i32;
                } else if (__value__ == (7634752i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7634763i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7634922i32;
                    } else {
                        _gotoNext = 7634954i32;
                    };
                } else if (__value__ == (7634763i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7634870i32;
                    } else {
                        _gotoNext = 7635066i32;
                    };
                } else if (__value__ == (7634870i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7635770i32;
                } else if (__value__ == (7634922i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7635066i32;
                } else if (__value__ == (7634954i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7635066i32;
                } else if (__value__ == (7634982i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7635770i32;
                } else if (__value__ == (7635066i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7634481 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7634489 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7635139 = (0 : stdgo.GoInt);
                    _gotoNext = 7635135i32;
                } else if (__value__ == (7635135i32)) {
                    if ((_i_7635139 < (_s.length) : Bool)) {
                        _gotoNext = 7635163i32;
                    } else {
                        _gotoNext = 7635755i32;
                    };
                } else if (__value__ == (7635163i32)) {
                    _d_7635180 = _s[(_i_7635139 : stdgo.GoInt)];
                    _gotoNext = 7635192i32;
                } else if (__value__ == (7635192i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7635180 : Bool) && (_d_7635180 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7635203i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7635180 : Bool) && (_d_7635180 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7635247i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7635180 : Bool) && (_d_7635180 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7635296i32;
                    } else {
                        _gotoNext = 7635345i32;
                    };
                } else if (__value__ == (7635203i32)) {
                    _v_7635171 = (_d_7635180 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7635410i32;
                } else if (__value__ == (7635247i32)) {
                    _v_7635171 = ((_d_7635180 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7635410i32;
                } else if (__value__ == (7635296i32)) {
                    _v_7635171 = ((_d_7635180 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7635410i32;
                } else if (__value__ == (7635345i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7635770i32;
                } else if (__value__ == (7635410i32)) {
                    if (((_v_7635171 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7635428i32;
                    } else {
                        _gotoNext = 7635487i32;
                    };
                } else if (__value__ == (7635428i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7635770i32;
                } else if (__value__ == (7635487i32)) {
                    if ((_n >= _cutoff_7634481 : Bool)) {
                        _gotoNext = 7635502i32;
                    } else {
                        _gotoNext = 7635590i32;
                    };
                } else if (__value__ == (7635502i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7635770i32;
                } else if (__value__ == (7635590i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7635611 = (_n + (_v_7635171 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7635611 < _n : Bool) || (_n1_7635611 > _maxVal_7634489 : Bool) : Bool)) {
                        _gotoNext = 7635658i32;
                    } else {
                        _gotoNext = 7635743i32;
                    };
                } else if (__value__ == (7635658i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7635770i32;
                } else if (__value__ == (7635743i32)) {
                    _n = _n1_7635611;
                    _i_7635139++;
                    _gotoNext = 7635135i32;
                } else if (__value__ == (7635755i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7635770i32;
                } else if (__value__ == (7635770i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7634561 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
