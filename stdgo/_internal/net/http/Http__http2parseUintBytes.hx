package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _maxVal_7741355:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7741347:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7742477:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7742046:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7742037:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7742005:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7741427:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7741387i32;
                    } else {
                        _gotoNext = 7741427i32;
                    };
                } else if (__value__ == (7741387i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7741427i32;
                } else if (__value__ == (7741427i32)) {
                    _s0_7741427 = _s;
                    _gotoNext = 7741436i32;
                } else if (__value__ == (7741436i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7741446i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7741504i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7741567i32;
                    } else {
                        _gotoNext = 7741848i32;
                    };
                } else if (__value__ == (7741446i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7742636i32;
                } else if (__value__ == (7741504i32)) {
                    _gotoNext = 7741932i32;
                } else if (__value__ == (7741567i32)) {
                    _gotoNext = 7741618i32;
                } else if (__value__ == (7741618i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7741629i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7741788i32;
                    } else {
                        _gotoNext = 7741820i32;
                    };
                } else if (__value__ == (7741629i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7741736i32;
                    } else {
                        _gotoNext = 7741932i32;
                    };
                } else if (__value__ == (7741736i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7742636i32;
                } else if (__value__ == (7741788i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7741932i32;
                } else if (__value__ == (7741820i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7741932i32;
                } else if (__value__ == (7741848i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7742636i32;
                } else if (__value__ == (7741932i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7741347 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7741355 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7742005 = (0 : stdgo.GoInt);
                    _gotoNext = 7742001i32;
                } else if (__value__ == (7742001i32)) {
                    if ((_i_7742005 < (_s.length) : Bool)) {
                        _gotoNext = 7742029i32;
                    } else {
                        _gotoNext = 7742621i32;
                    };
                } else if (__value__ == (7742029i32)) {
                    _d_7742046 = _s[(_i_7742005 : stdgo.GoInt)];
                    _gotoNext = 7742058i32;
                } else if (__value__ == (7742058i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7742046 : Bool) && (_d_7742046 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7742069i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7742046 : Bool) && (_d_7742046 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7742113i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7742046 : Bool) && (_d_7742046 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7742162i32;
                    } else {
                        _gotoNext = 7742211i32;
                    };
                } else if (__value__ == (7742069i32)) {
                    _v_7742037 = (_d_7742046 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7742276i32;
                } else if (__value__ == (7742113i32)) {
                    _v_7742037 = ((_d_7742046 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7742276i32;
                } else if (__value__ == (7742162i32)) {
                    _v_7742037 = ((_d_7742046 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7742276i32;
                } else if (__value__ == (7742211i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7742636i32;
                } else if (__value__ == (7742276i32)) {
                    if (((_v_7742037 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7742294i32;
                    } else {
                        _gotoNext = 7742353i32;
                    };
                } else if (__value__ == (7742294i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7742636i32;
                } else if (__value__ == (7742353i32)) {
                    if ((_n >= _cutoff_7741347 : Bool)) {
                        _gotoNext = 7742368i32;
                    } else {
                        _gotoNext = 7742456i32;
                    };
                } else if (__value__ == (7742368i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7742636i32;
                } else if (__value__ == (7742456i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7742477 = (_n + (_v_7742037 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7742477 < _n : Bool) || (_n1_7742477 > _maxVal_7741355 : Bool) : Bool)) {
                        _gotoNext = 7742524i32;
                    } else {
                        _gotoNext = 7742609i32;
                    };
                } else if (__value__ == (7742524i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7742636i32;
                } else if (__value__ == (7742609i32)) {
                    _n = _n1_7742477;
                    _i_7742005++;
                    _gotoNext = 7742001i32;
                } else if (__value__ == (7742621i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7742636i32;
                } else if (__value__ == (7742636i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7741427 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
