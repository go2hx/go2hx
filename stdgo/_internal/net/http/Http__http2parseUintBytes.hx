package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7593572:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7593563:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7593531:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7592953:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7592881:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7592873:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7594003:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7592913i32;
                    } else {
                        _gotoNext = 7592953i32;
                    };
                } else if (__value__ == (7592913i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7592953i32;
                } else if (__value__ == (7592953i32)) {
                    _s0_7592953 = _s;
                    _gotoNext = 7592962i32;
                } else if (__value__ == (7592962i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7592972i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7593030i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7593093i32;
                    } else {
                        _gotoNext = 7593374i32;
                    };
                } else if (__value__ == (7592972i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594162i32;
                } else if (__value__ == (7593030i32)) {
                    _gotoNext = 7593458i32;
                } else if (__value__ == (7593093i32)) {
                    _gotoNext = 7593144i32;
                } else if (__value__ == (7593144i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7593155i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7593314i32;
                    } else {
                        _gotoNext = 7593346i32;
                    };
                } else if (__value__ == (7593155i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7593262i32;
                    } else {
                        _gotoNext = 7593458i32;
                    };
                } else if (__value__ == (7593262i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594162i32;
                } else if (__value__ == (7593314i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7593458i32;
                } else if (__value__ == (7593346i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7593458i32;
                } else if (__value__ == (7593374i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7594162i32;
                } else if (__value__ == (7593458i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7592873 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7592881 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7593531 = (0 : stdgo.GoInt);
                    _gotoNext = 7593527i32;
                } else if (__value__ == (7593527i32)) {
                    if ((_i_7593531 < (_s.length) : Bool)) {
                        _gotoNext = 7593555i32;
                    } else {
                        _gotoNext = 7594147i32;
                    };
                } else if (__value__ == (7593555i32)) {
                    _d_7593572 = _s[(_i_7593531 : stdgo.GoInt)];
                    _gotoNext = 7593584i32;
                } else if (__value__ == (7593584i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7593572 : Bool) && (_d_7593572 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593595i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7593572 : Bool) && (_d_7593572 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593639i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7593572 : Bool) && (_d_7593572 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593688i32;
                    } else {
                        _gotoNext = 7593737i32;
                    };
                } else if (__value__ == (7593595i32)) {
                    _v_7593563 = (_d_7593572 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7593802i32;
                } else if (__value__ == (7593639i32)) {
                    _v_7593563 = ((_d_7593572 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7593802i32;
                } else if (__value__ == (7593688i32)) {
                    _v_7593563 = ((_d_7593572 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7593802i32;
                } else if (__value__ == (7593737i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594162i32;
                } else if (__value__ == (7593802i32)) {
                    if (((_v_7593563 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7593820i32;
                    } else {
                        _gotoNext = 7593879i32;
                    };
                } else if (__value__ == (7593820i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594162i32;
                } else if (__value__ == (7593879i32)) {
                    if ((_n >= _cutoff_7592873 : Bool)) {
                        _gotoNext = 7593894i32;
                    } else {
                        _gotoNext = 7593982i32;
                    };
                } else if (__value__ == (7593894i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7594162i32;
                } else if (__value__ == (7593982i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7594003 = (_n + (_v_7593563 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7594003 < _n : Bool) || (_n1_7594003 > _maxVal_7592881 : Bool) : Bool)) {
                        _gotoNext = 7594050i32;
                    } else {
                        _gotoNext = 7594135i32;
                    };
                } else if (__value__ == (7594050i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7594162i32;
                } else if (__value__ == (7594135i32)) {
                    _n = _n1_7594003;
                    _i_7593531++;
                    _gotoNext = 7593527i32;
                } else if (__value__ == (7594147i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7594162i32;
                } else if (__value__ == (7594162i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7592953 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
