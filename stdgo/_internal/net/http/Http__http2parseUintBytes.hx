package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7594245:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7595375:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7594944:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7594935:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7594903:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7594325:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7594253:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7594285i32;
                    } else {
                        _gotoNext = 7594325i32;
                    };
                } else if (__value__ == (7594285i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7594325i32;
                } else if (__value__ == (7594325i32)) {
                    _s0_7594325 = _s;
                    _gotoNext = 7594334i32;
                } else if (__value__ == (7594334i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7594344i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7594402i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7594465i32;
                    } else {
                        _gotoNext = 7594746i32;
                    };
                } else if (__value__ == (7594344i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7595534i32;
                } else if (__value__ == (7594402i32)) {
                    _gotoNext = 7594830i32;
                } else if (__value__ == (7594465i32)) {
                    _gotoNext = 7594516i32;
                } else if (__value__ == (7594516i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7594527i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7594686i32;
                    } else {
                        _gotoNext = 7594718i32;
                    };
                } else if (__value__ == (7594527i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7594634i32;
                    } else {
                        _gotoNext = 7594830i32;
                    };
                } else if (__value__ == (7594634i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7595534i32;
                } else if (__value__ == (7594686i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7594830i32;
                } else if (__value__ == (7594718i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7594830i32;
                } else if (__value__ == (7594746i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7595534i32;
                } else if (__value__ == (7594830i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7594245 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7594253 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7594903 = (0 : stdgo.GoInt);
                    _gotoNext = 7594899i32;
                } else if (__value__ == (7594899i32)) {
                    if ((_i_7594903 < (_s.length) : Bool)) {
                        _gotoNext = 7594927i32;
                    } else {
                        _gotoNext = 7595519i32;
                    };
                } else if (__value__ == (7594927i32)) {
                    _d_7594944 = _s[(_i_7594903 : stdgo.GoInt)];
                    _gotoNext = 7594956i32;
                } else if (__value__ == (7594956i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7594944 : Bool) && (_d_7594944 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7594967i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7594944 : Bool) && (_d_7594944 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7595011i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7594944 : Bool) && (_d_7594944 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7595060i32;
                    } else {
                        _gotoNext = 7595109i32;
                    };
                } else if (__value__ == (7594967i32)) {
                    _v_7594935 = (_d_7594944 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7595174i32;
                } else if (__value__ == (7595011i32)) {
                    _v_7594935 = ((_d_7594944 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7595174i32;
                } else if (__value__ == (7595060i32)) {
                    _v_7594935 = ((_d_7594944 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7595174i32;
                } else if (__value__ == (7595109i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7595534i32;
                } else if (__value__ == (7595174i32)) {
                    if (((_v_7594935 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7595192i32;
                    } else {
                        _gotoNext = 7595251i32;
                    };
                } else if (__value__ == (7595192i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7595534i32;
                } else if (__value__ == (7595251i32)) {
                    if ((_n >= _cutoff_7594245 : Bool)) {
                        _gotoNext = 7595266i32;
                    } else {
                        _gotoNext = 7595354i32;
                    };
                } else if (__value__ == (7595266i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7595534i32;
                } else if (__value__ == (7595354i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7595375 = (_n + (_v_7594935 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7595375 < _n : Bool) || (_n1_7595375 > _maxVal_7594253 : Bool) : Bool)) {
                        _gotoNext = 7595422i32;
                    } else {
                        _gotoNext = 7595507i32;
                    };
                } else if (__value__ == (7595422i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7595534i32;
                } else if (__value__ == (7595507i32)) {
                    _n = _n1_7595375;
                    _i_7594903++;
                    _gotoNext = 7594899i32;
                } else if (__value__ == (7595519i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7595534i32;
                } else if (__value__ == (7595534i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7594325 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
