package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7923057:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7922626:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7922617:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7922585:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7922007:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7921935:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7921927:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7921967i32;
                    } else {
                        _gotoNext = 7922007i32;
                    };
                } else if (__value__ == (7921967i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7922007i32;
                } else if (__value__ == (7922007i32)) {
                    _s0_7922007 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7922016i32;
                } else if (__value__ == (7922016i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7922026i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7922084i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7922147i32;
                    } else {
                        _gotoNext = 7922428i32;
                    };
                } else if (__value__ == (7922026i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7923216i32;
                } else if (__value__ == (7922084i32)) {
                    _gotoNext = 7922512i32;
                } else if (__value__ == (7922147i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7922198i32;
                } else if (__value__ == (7922198i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7922209i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7922368i32;
                    } else {
                        _gotoNext = 7922400i32;
                    };
                } else if (__value__ == (7922209i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7922316i32;
                    } else {
                        _gotoNext = 7922512i32;
                    };
                } else if (__value__ == (7922316i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7923216i32;
                } else if (__value__ == (7922368i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7922512i32;
                } else if (__value__ == (7922400i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7922512i32;
                } else if (__value__ == (7922428i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7923216i32;
                } else if (__value__ == (7922512i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7921927 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7921935 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7922585 = (0 : stdgo.GoInt);
                    _gotoNext = 7922581i32;
                } else if (__value__ == (7922581i32)) {
                    if ((_i_7922585 < (_s.length) : Bool)) {
                        _gotoNext = 7922609i32;
                    } else {
                        _gotoNext = 7923201i32;
                    };
                } else if (__value__ == (7922609i32)) {
                    _d_7922626 = _s[(_i_7922585 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7922638i32;
                } else if (__value__ == (7922638i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7922626 : Bool) && (_d_7922626 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7922649i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7922626 : Bool) && (_d_7922626 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7922693i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7922626 : Bool) && (_d_7922626 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7922742i32;
                    } else {
                        _gotoNext = 7922791i32;
                    };
                } else if (__value__ == (7922649i32)) {
                    _v_7922617 = (_d_7922626 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7922856i32;
                } else if (__value__ == (7922693i32)) {
                    _v_7922617 = ((_d_7922626 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7922856i32;
                } else if (__value__ == (7922742i32)) {
                    _v_7922617 = ((_d_7922626 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7922856i32;
                } else if (__value__ == (7922791i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7923216i32;
                } else if (__value__ == (7922856i32)) {
                    if (((_v_7922617 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7922874i32;
                    } else {
                        _gotoNext = 7922933i32;
                    };
                } else if (__value__ == (7922874i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7923216i32;
                } else if (__value__ == (7922933i32)) {
                    if ((_n >= _cutoff_7921927 : Bool)) {
                        _gotoNext = 7922948i32;
                    } else {
                        _gotoNext = 7923036i32;
                    };
                } else if (__value__ == (7922948i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7923216i32;
                } else if (__value__ == (7923036i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7923057 = (_n + (_v_7922617 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7923057 < _n : Bool) || (_n1_7923057 > _maxVal_7921935 : Bool) : Bool)) {
                        _gotoNext = 7923104i32;
                    } else {
                        _gotoNext = 7923189i32;
                    };
                } else if (__value__ == (7923104i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7923216i32;
                } else if (__value__ == (7923189i32)) {
                    _n = _n1_7923057;
                    _i_7922585++;
                    _gotoNext = 7922581i32;
                } else if (__value__ == (7923201i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7923216i32;
                } else if (__value__ == (7923216i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7922007 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
