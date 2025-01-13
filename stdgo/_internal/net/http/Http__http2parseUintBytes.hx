package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7883576:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7882998:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7882926:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7882918:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7884048:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7883617:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7883608:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7882958i32;
                    } else {
                        _gotoNext = 7882998i32;
                    };
                } else if (__value__ == (7882958i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7882998i32;
                } else if (__value__ == (7882998i32)) {
                    _s0_7882998 = _s;
                    _gotoNext = 7883007i32;
                } else if (__value__ == (7883007i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7883017i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7883075i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7883138i32;
                    } else {
                        _gotoNext = 7883419i32;
                    };
                } else if (__value__ == (7883017i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7884207i32;
                } else if (__value__ == (7883075i32)) {
                    _gotoNext = 7883503i32;
                } else if (__value__ == (7883138i32)) {
                    _gotoNext = 7883189i32;
                } else if (__value__ == (7883189i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7883200i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7883359i32;
                    } else {
                        _gotoNext = 7883391i32;
                    };
                } else if (__value__ == (7883200i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7883307i32;
                    } else {
                        _gotoNext = 7883503i32;
                    };
                } else if (__value__ == (7883307i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7884207i32;
                } else if (__value__ == (7883359i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7883503i32;
                } else if (__value__ == (7883391i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7883503i32;
                } else if (__value__ == (7883419i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7884207i32;
                } else if (__value__ == (7883503i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7882918 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7882926 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7883576 = (0 : stdgo.GoInt);
                    _gotoNext = 7883572i32;
                } else if (__value__ == (7883572i32)) {
                    if ((_i_7883576 < (_s.length) : Bool)) {
                        _gotoNext = 7883600i32;
                    } else {
                        _gotoNext = 7884192i32;
                    };
                } else if (__value__ == (7883600i32)) {
                    _d_7883617 = _s[(_i_7883576 : stdgo.GoInt)];
                    _gotoNext = 7883629i32;
                } else if (__value__ == (7883629i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7883617 : Bool) && (_d_7883617 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7883640i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7883617 : Bool) && (_d_7883617 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7883684i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7883617 : Bool) && (_d_7883617 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7883733i32;
                    } else {
                        _gotoNext = 7883782i32;
                    };
                } else if (__value__ == (7883640i32)) {
                    _v_7883608 = (_d_7883617 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7883847i32;
                } else if (__value__ == (7883684i32)) {
                    _v_7883608 = ((_d_7883617 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7883847i32;
                } else if (__value__ == (7883733i32)) {
                    _v_7883608 = ((_d_7883617 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7883847i32;
                } else if (__value__ == (7883782i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7884207i32;
                } else if (__value__ == (7883847i32)) {
                    if (((_v_7883608 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7883865i32;
                    } else {
                        _gotoNext = 7883924i32;
                    };
                } else if (__value__ == (7883865i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7884207i32;
                } else if (__value__ == (7883924i32)) {
                    if ((_n >= _cutoff_7882918 : Bool)) {
                        _gotoNext = 7883939i32;
                    } else {
                        _gotoNext = 7884027i32;
                    };
                } else if (__value__ == (7883939i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7884207i32;
                } else if (__value__ == (7884027i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7884048 = (_n + (_v_7883608 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7884048 < _n : Bool) || (_n1_7884048 > _maxVal_7882926 : Bool) : Bool)) {
                        _gotoNext = 7884095i32;
                    } else {
                        _gotoNext = 7884180i32;
                    };
                } else if (__value__ == (7884095i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7884207i32;
                } else if (__value__ == (7884180i32)) {
                    _n = _n1_7884048;
                    _i_7883576++;
                    _gotoNext = 7883572i32;
                } else if (__value__ == (7884192i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7884207i32;
                } else if (__value__ == (7884207i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7882998 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
