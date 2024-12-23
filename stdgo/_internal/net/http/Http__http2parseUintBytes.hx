package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7833563:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7833132:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7833123:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7833091:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7832513:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7832441:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7832433:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7832473i32;
                    } else {
                        _gotoNext = 7832513i32;
                    };
                } else if (__value__ == (7832473i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7832513i32;
                } else if (__value__ == (7832513i32)) {
                    _s0_7832513 = _s;
                    _gotoNext = 7832522i32;
                } else if (__value__ == (7832522i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7832532i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7832590i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7832653i32;
                    } else {
                        _gotoNext = 7832934i32;
                    };
                } else if (__value__ == (7832532i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7833722i32;
                } else if (__value__ == (7832590i32)) {
                    _gotoNext = 7833018i32;
                } else if (__value__ == (7832653i32)) {
                    _gotoNext = 7832704i32;
                } else if (__value__ == (7832704i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7832715i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7832874i32;
                    } else {
                        _gotoNext = 7832906i32;
                    };
                } else if (__value__ == (7832715i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7832822i32;
                    } else {
                        _gotoNext = 7833018i32;
                    };
                } else if (__value__ == (7832822i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7833722i32;
                } else if (__value__ == (7832874i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7833018i32;
                } else if (__value__ == (7832906i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7833018i32;
                } else if (__value__ == (7832934i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7833722i32;
                } else if (__value__ == (7833018i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7832433 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7832441 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7833091 = (0 : stdgo.GoInt);
                    _gotoNext = 7833087i32;
                } else if (__value__ == (7833087i32)) {
                    if ((_i_7833091 < (_s.length) : Bool)) {
                        _gotoNext = 7833115i32;
                    } else {
                        _gotoNext = 7833707i32;
                    };
                } else if (__value__ == (7833115i32)) {
                    _d_7833132 = _s[(_i_7833091 : stdgo.GoInt)];
                    _gotoNext = 7833144i32;
                } else if (__value__ == (7833144i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7833132 : Bool) && (_d_7833132 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7833155i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7833132 : Bool) && (_d_7833132 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7833199i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7833132 : Bool) && (_d_7833132 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7833248i32;
                    } else {
                        _gotoNext = 7833297i32;
                    };
                } else if (__value__ == (7833155i32)) {
                    _v_7833123 = (_d_7833132 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7833362i32;
                } else if (__value__ == (7833199i32)) {
                    _v_7833123 = ((_d_7833132 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7833362i32;
                } else if (__value__ == (7833248i32)) {
                    _v_7833123 = ((_d_7833132 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7833362i32;
                } else if (__value__ == (7833297i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7833722i32;
                } else if (__value__ == (7833362i32)) {
                    if (((_v_7833123 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7833380i32;
                    } else {
                        _gotoNext = 7833439i32;
                    };
                } else if (__value__ == (7833380i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7833722i32;
                } else if (__value__ == (7833439i32)) {
                    if ((_n >= _cutoff_7832433 : Bool)) {
                        _gotoNext = 7833454i32;
                    } else {
                        _gotoNext = 7833542i32;
                    };
                } else if (__value__ == (7833454i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7833722i32;
                } else if (__value__ == (7833542i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7833563 = (_n + (_v_7833123 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7833563 < _n : Bool) || (_n1_7833563 > _maxVal_7832441 : Bool) : Bool)) {
                        _gotoNext = 7833610i32;
                    } else {
                        _gotoNext = 7833695i32;
                    };
                } else if (__value__ == (7833610i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7833722i32;
                } else if (__value__ == (7833695i32)) {
                    _n = _n1_7833563;
                    _i_7833091++;
                    _gotoNext = 7833087i32;
                } else if (__value__ == (7833707i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7833722i32;
                } else if (__value__ == (7833722i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7832513 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
