package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7692354:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7693484:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7693053:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7693044:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7693012:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7692434:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7692362:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7692394i32;
                    } else {
                        _gotoNext = 7692434i32;
                    };
                } else if (__value__ == (7692394i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7692434i32;
                } else if (__value__ == (7692434i32)) {
                    _s0_7692434 = _s;
                    _gotoNext = 7692443i32;
                } else if (__value__ == (7692443i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7692453i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7692511i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7692574i32;
                    } else {
                        _gotoNext = 7692855i32;
                    };
                } else if (__value__ == (7692453i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7693643i32;
                } else if (__value__ == (7692511i32)) {
                    _gotoNext = 7692939i32;
                } else if (__value__ == (7692574i32)) {
                    _gotoNext = 7692625i32;
                } else if (__value__ == (7692625i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7692636i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7692795i32;
                    } else {
                        _gotoNext = 7692827i32;
                    };
                } else if (__value__ == (7692636i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7692743i32;
                    } else {
                        _gotoNext = 7692939i32;
                    };
                } else if (__value__ == (7692743i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7693643i32;
                } else if (__value__ == (7692795i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7692939i32;
                } else if (__value__ == (7692827i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7692939i32;
                } else if (__value__ == (7692855i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7693643i32;
                } else if (__value__ == (7692939i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7692354 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7692362 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7693012 = (0 : stdgo.GoInt);
                    _gotoNext = 7693008i32;
                } else if (__value__ == (7693008i32)) {
                    if ((_i_7693012 < (_s.length) : Bool)) {
                        _gotoNext = 7693036i32;
                    } else {
                        _gotoNext = 7693628i32;
                    };
                } else if (__value__ == (7693036i32)) {
                    _d_7693053 = _s[(_i_7693012 : stdgo.GoInt)];
                    _gotoNext = 7693065i32;
                } else if (__value__ == (7693065i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7693053 : Bool) && (_d_7693053 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7693076i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7693053 : Bool) && (_d_7693053 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7693120i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7693053 : Bool) && (_d_7693053 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7693169i32;
                    } else {
                        _gotoNext = 7693218i32;
                    };
                } else if (__value__ == (7693076i32)) {
                    _v_7693044 = (_d_7693053 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7693283i32;
                } else if (__value__ == (7693120i32)) {
                    _v_7693044 = ((_d_7693053 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7693283i32;
                } else if (__value__ == (7693169i32)) {
                    _v_7693044 = ((_d_7693053 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7693283i32;
                } else if (__value__ == (7693218i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7693643i32;
                } else if (__value__ == (7693283i32)) {
                    if (((_v_7693044 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7693301i32;
                    } else {
                        _gotoNext = 7693360i32;
                    };
                } else if (__value__ == (7693301i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7693643i32;
                } else if (__value__ == (7693360i32)) {
                    if ((_n >= _cutoff_7692354 : Bool)) {
                        _gotoNext = 7693375i32;
                    } else {
                        _gotoNext = 7693463i32;
                    };
                } else if (__value__ == (7693375i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7693643i32;
                } else if (__value__ == (7693463i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7693484 = (_n + (_v_7693044 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7693484 < _n : Bool) || (_n1_7693484 > _maxVal_7692362 : Bool) : Bool)) {
                        _gotoNext = 7693531i32;
                    } else {
                        _gotoNext = 7693616i32;
                    };
                } else if (__value__ == (7693531i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7693643i32;
                } else if (__value__ == (7693616i32)) {
                    _n = _n1_7693484;
                    _i_7693012++;
                    _gotoNext = 7693008i32;
                } else if (__value__ == (7693628i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7693643i32;
                } else if (__value__ == (7693643i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7692434 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
