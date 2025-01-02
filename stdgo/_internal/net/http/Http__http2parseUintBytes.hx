package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7824784:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7824353:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7824344:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7824312:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7823734:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7823662:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7823654:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7823694i32;
                    } else {
                        _gotoNext = 7823734i32;
                    };
                } else if (__value__ == (7823694i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7823734i32;
                } else if (__value__ == (7823734i32)) {
                    _s0_7823734 = _s;
                    _gotoNext = 7823743i32;
                } else if (__value__ == (7823743i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7823753i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7823811i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7823874i32;
                    } else {
                        _gotoNext = 7824155i32;
                    };
                } else if (__value__ == (7823753i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7824943i32;
                } else if (__value__ == (7823811i32)) {
                    _gotoNext = 7824239i32;
                } else if (__value__ == (7823874i32)) {
                    _gotoNext = 7823925i32;
                } else if (__value__ == (7823925i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7823936i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7824095i32;
                    } else {
                        _gotoNext = 7824127i32;
                    };
                } else if (__value__ == (7823936i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7824043i32;
                    } else {
                        _gotoNext = 7824239i32;
                    };
                } else if (__value__ == (7824043i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7824943i32;
                } else if (__value__ == (7824095i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7824239i32;
                } else if (__value__ == (7824127i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7824239i32;
                } else if (__value__ == (7824155i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7824943i32;
                } else if (__value__ == (7824239i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7823654 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7823662 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7824312 = (0 : stdgo.GoInt);
                    _gotoNext = 7824308i32;
                } else if (__value__ == (7824308i32)) {
                    if ((_i_7824312 < (_s.length) : Bool)) {
                        _gotoNext = 7824336i32;
                    } else {
                        _gotoNext = 7824928i32;
                    };
                } else if (__value__ == (7824336i32)) {
                    _d_7824353 = _s[(_i_7824312 : stdgo.GoInt)];
                    _gotoNext = 7824365i32;
                } else if (__value__ == (7824365i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7824353 : Bool) && (_d_7824353 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7824376i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7824353 : Bool) && (_d_7824353 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7824420i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7824353 : Bool) && (_d_7824353 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7824469i32;
                    } else {
                        _gotoNext = 7824518i32;
                    };
                } else if (__value__ == (7824376i32)) {
                    _v_7824344 = (_d_7824353 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7824583i32;
                } else if (__value__ == (7824420i32)) {
                    _v_7824344 = ((_d_7824353 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7824583i32;
                } else if (__value__ == (7824469i32)) {
                    _v_7824344 = ((_d_7824353 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7824583i32;
                } else if (__value__ == (7824518i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7824943i32;
                } else if (__value__ == (7824583i32)) {
                    if (((_v_7824344 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7824601i32;
                    } else {
                        _gotoNext = 7824660i32;
                    };
                } else if (__value__ == (7824601i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7824943i32;
                } else if (__value__ == (7824660i32)) {
                    if ((_n >= _cutoff_7823654 : Bool)) {
                        _gotoNext = 7824675i32;
                    } else {
                        _gotoNext = 7824763i32;
                    };
                } else if (__value__ == (7824675i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7824943i32;
                } else if (__value__ == (7824763i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7824784 = (_n + (_v_7824344 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7824784 < _n : Bool) || (_n1_7824784 > _maxVal_7823662 : Bool) : Bool)) {
                        _gotoNext = 7824831i32;
                    } else {
                        _gotoNext = 7824916i32;
                    };
                } else if (__value__ == (7824831i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7824943i32;
                } else if (__value__ == (7824916i32)) {
                    _n = _n1_7824784;
                    _i_7824312++;
                    _gotoNext = 7824308i32;
                } else if (__value__ == (7824928i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7824943i32;
                } else if (__value__ == (7824943i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7823734 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
