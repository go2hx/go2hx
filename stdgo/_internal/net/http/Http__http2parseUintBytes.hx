package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7938745:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7938167:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7938095:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7938087:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7939217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7938786:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7938777:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7938127i32;
                    } else {
                        _gotoNext = 7938167i32;
                    };
                } else if (__value__ == (7938127i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7938167i32;
                } else if (__value__ == (7938167i32)) {
                    _s0_7938167 = _s;
                    _gotoNext = 7938176i32;
                } else if (__value__ == (7938176i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7938186i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7938244i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7938307i32;
                    } else {
                        _gotoNext = 7938588i32;
                    };
                } else if (__value__ == (7938186i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7939376i32;
                } else if (__value__ == (7938244i32)) {
                    _gotoNext = 7938672i32;
                } else if (__value__ == (7938307i32)) {
                    _gotoNext = 7938358i32;
                } else if (__value__ == (7938358i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7938369i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7938528i32;
                    } else {
                        _gotoNext = 7938560i32;
                    };
                } else if (__value__ == (7938369i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7938476i32;
                    } else {
                        _gotoNext = 7938672i32;
                    };
                } else if (__value__ == (7938476i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7939376i32;
                } else if (__value__ == (7938528i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7938672i32;
                } else if (__value__ == (7938560i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7938672i32;
                } else if (__value__ == (7938588i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7939376i32;
                } else if (__value__ == (7938672i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7938087 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7938095 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7938745 = (0 : stdgo.GoInt);
                    _gotoNext = 7938741i32;
                } else if (__value__ == (7938741i32)) {
                    if ((_i_7938745 < (_s.length) : Bool)) {
                        _gotoNext = 7938769i32;
                    } else {
                        _gotoNext = 7939361i32;
                    };
                } else if (__value__ == (7938769i32)) {
                    _d_7938786 = _s[(_i_7938745 : stdgo.GoInt)];
                    _gotoNext = 7938798i32;
                } else if (__value__ == (7938798i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7938786 : Bool) && (_d_7938786 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7938809i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7938786 : Bool) && (_d_7938786 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7938853i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7938786 : Bool) && (_d_7938786 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7938902i32;
                    } else {
                        _gotoNext = 7938951i32;
                    };
                } else if (__value__ == (7938809i32)) {
                    _v_7938777 = (_d_7938786 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7939016i32;
                } else if (__value__ == (7938853i32)) {
                    _v_7938777 = ((_d_7938786 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7939016i32;
                } else if (__value__ == (7938902i32)) {
                    _v_7938777 = ((_d_7938786 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7939016i32;
                } else if (__value__ == (7938951i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7939376i32;
                } else if (__value__ == (7939016i32)) {
                    if (((_v_7938777 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7939034i32;
                    } else {
                        _gotoNext = 7939093i32;
                    };
                } else if (__value__ == (7939034i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7939376i32;
                } else if (__value__ == (7939093i32)) {
                    if ((_n >= _cutoff_7938087 : Bool)) {
                        _gotoNext = 7939108i32;
                    } else {
                        _gotoNext = 7939196i32;
                    };
                } else if (__value__ == (7939108i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7939376i32;
                } else if (__value__ == (7939196i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7939217 = (_n + (_v_7938777 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7939217 < _n : Bool) || (_n1_7939217 > _maxVal_7938095 : Bool) : Bool)) {
                        _gotoNext = 7939264i32;
                    } else {
                        _gotoNext = 7939349i32;
                    };
                } else if (__value__ == (7939264i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7939376i32;
                } else if (__value__ == (7939349i32)) {
                    _n = _n1_7939217;
                    _i_7938745++;
                    _gotoNext = 7938741i32;
                } else if (__value__ == (7939361i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7939376i32;
                } else if (__value__ == (7939376i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7938167 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
