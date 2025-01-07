package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7749255:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7749223:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7748645:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7748573:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7748565:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7749695:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7749264:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7748605i32;
                    } else {
                        _gotoNext = 7748645i32;
                    };
                } else if (__value__ == (7748605i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7748645i32;
                } else if (__value__ == (7748645i32)) {
                    _s0_7748645 = _s;
                    _gotoNext = 7748654i32;
                } else if (__value__ == (7748654i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7748664i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7748722i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7748785i32;
                    } else {
                        _gotoNext = 7749066i32;
                    };
                } else if (__value__ == (7748664i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7749854i32;
                } else if (__value__ == (7748722i32)) {
                    _gotoNext = 7749150i32;
                } else if (__value__ == (7748785i32)) {
                    _gotoNext = 7748836i32;
                } else if (__value__ == (7748836i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7748847i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7749006i32;
                    } else {
                        _gotoNext = 7749038i32;
                    };
                } else if (__value__ == (7748847i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7748954i32;
                    } else {
                        _gotoNext = 7749150i32;
                    };
                } else if (__value__ == (7748954i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7749854i32;
                } else if (__value__ == (7749006i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7749150i32;
                } else if (__value__ == (7749038i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7749150i32;
                } else if (__value__ == (7749066i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7749854i32;
                } else if (__value__ == (7749150i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7748565 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7748573 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7749223 = (0 : stdgo.GoInt);
                    _gotoNext = 7749219i32;
                } else if (__value__ == (7749219i32)) {
                    if ((_i_7749223 < (_s.length) : Bool)) {
                        _gotoNext = 7749247i32;
                    } else {
                        _gotoNext = 7749839i32;
                    };
                } else if (__value__ == (7749247i32)) {
                    _d_7749264 = _s[(_i_7749223 : stdgo.GoInt)];
                    _gotoNext = 7749276i32;
                } else if (__value__ == (7749276i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7749264 : Bool) && (_d_7749264 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7749287i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7749264 : Bool) && (_d_7749264 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7749331i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7749264 : Bool) && (_d_7749264 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7749380i32;
                    } else {
                        _gotoNext = 7749429i32;
                    };
                } else if (__value__ == (7749287i32)) {
                    _v_7749255 = (_d_7749264 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7749494i32;
                } else if (__value__ == (7749331i32)) {
                    _v_7749255 = ((_d_7749264 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7749494i32;
                } else if (__value__ == (7749380i32)) {
                    _v_7749255 = ((_d_7749264 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7749494i32;
                } else if (__value__ == (7749429i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7749854i32;
                } else if (__value__ == (7749494i32)) {
                    if (((_v_7749255 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7749512i32;
                    } else {
                        _gotoNext = 7749571i32;
                    };
                } else if (__value__ == (7749512i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7749854i32;
                } else if (__value__ == (7749571i32)) {
                    if ((_n >= _cutoff_7748565 : Bool)) {
                        _gotoNext = 7749586i32;
                    } else {
                        _gotoNext = 7749674i32;
                    };
                } else if (__value__ == (7749586i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7749854i32;
                } else if (__value__ == (7749674i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7749695 = (_n + (_v_7749255 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7749695 < _n : Bool) || (_n1_7749695 > _maxVal_7748573 : Bool) : Bool)) {
                        _gotoNext = 7749742i32;
                    } else {
                        _gotoNext = 7749827i32;
                    };
                } else if (__value__ == (7749742i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7749854i32;
                } else if (__value__ == (7749827i32)) {
                    _n = _n1_7749695;
                    _i_7749223++;
                    _gotoNext = 7749219i32;
                } else if (__value__ == (7749839i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7749854i32;
                } else if (__value__ == (7749854i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7748645 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
