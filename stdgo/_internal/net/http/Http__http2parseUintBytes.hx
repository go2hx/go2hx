package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _s0_7686488:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7686416:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7686408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7687538:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7687107:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7687098:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7687066:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7686448i32;
                    } else {
                        _gotoNext = 7686488i32;
                    };
                } else if (__value__ == (7686448i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7686488i32;
                } else if (__value__ == (7686488i32)) {
                    _s0_7686488 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7686497i32;
                } else if (__value__ == (7686497i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7686507i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7686565i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7686628i32;
                    } else {
                        _gotoNext = 7686909i32;
                    };
                } else if (__value__ == (7686507i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7687697i32;
                } else if (__value__ == (7686565i32)) {
                    _gotoNext = 7686993i32;
                } else if (__value__ == (7686628i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7686679i32;
                } else if (__value__ == (7686679i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7686690i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7686849i32;
                    } else {
                        _gotoNext = 7686881i32;
                    };
                } else if (__value__ == (7686690i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7686797i32;
                    } else {
                        _gotoNext = 7686993i32;
                    };
                } else if (__value__ == (7686797i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7687697i32;
                } else if (__value__ == (7686849i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7686993i32;
                } else if (__value__ == (7686881i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7686993i32;
                } else if (__value__ == (7686909i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7687697i32;
                } else if (__value__ == (7686993i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7686408 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7686416 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7687066 = (0 : stdgo.GoInt);
                    _gotoNext = 7687062i32;
                } else if (__value__ == (7687062i32)) {
                    if ((_i_7687066 < (_s.length) : Bool)) {
                        _gotoNext = 7687090i32;
                    } else {
                        _gotoNext = 7687682i32;
                    };
                } else if (__value__ == (7687090i32)) {
                    _d_7687107 = _s[(_i_7687066 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7687119i32;
                } else if (__value__ == (7687119i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7687107 : Bool) && (_d_7687107 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7687130i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7687107 : Bool) && (_d_7687107 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7687174i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7687107 : Bool) && (_d_7687107 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7687223i32;
                    } else {
                        _gotoNext = 7687272i32;
                    };
                } else if (__value__ == (7687130i32)) {
                    _v_7687098 = (_d_7687107 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7687337i32;
                } else if (__value__ == (7687174i32)) {
                    _v_7687098 = ((_d_7687107 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7687337i32;
                } else if (__value__ == (7687223i32)) {
                    _v_7687098 = ((_d_7687107 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7687337i32;
                } else if (__value__ == (7687272i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7687697i32;
                } else if (__value__ == (7687337i32)) {
                    if (((_v_7687098 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7687355i32;
                    } else {
                        _gotoNext = 7687414i32;
                    };
                } else if (__value__ == (7687355i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7687697i32;
                } else if (__value__ == (7687414i32)) {
                    if ((_n >= _cutoff_7686408 : Bool)) {
                        _gotoNext = 7687429i32;
                    } else {
                        _gotoNext = 7687517i32;
                    };
                } else if (__value__ == (7687429i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7687697i32;
                } else if (__value__ == (7687517i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7687538 = (_n + (_v_7687098 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7687538 < _n : Bool) || (_n1_7687538 > _maxVal_7686416 : Bool) : Bool)) {
                        _gotoNext = 7687585i32;
                    } else {
                        _gotoNext = 7687670i32;
                    };
                } else if (__value__ == (7687585i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7687697i32;
                } else if (__value__ == (7687670i32)) {
                    _n = _n1_7687538;
                    _i_7687066++;
                    _gotoNext = 7687062i32;
                } else if (__value__ == (7687682i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7687697i32;
                } else if (__value__ == (7687697i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7686488 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
