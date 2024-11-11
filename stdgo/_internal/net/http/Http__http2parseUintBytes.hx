package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _maxVal_7979608:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7979600:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7980730:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7980299:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7980290:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7980258:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7979680:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7979640i32;
                    } else {
                        _gotoNext = 7979680i32;
                    };
                } else if (__value__ == (7979640i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7979680i32;
                } else if (__value__ == (7979680i32)) {
                    _s0_7979680 = _s;
                    _gotoNext = 7979689i32;
                } else if (__value__ == (7979689i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7979699i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7979757i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7979820i32;
                    } else {
                        _gotoNext = 7980101i32;
                    };
                } else if (__value__ == (7979699i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7980889i32;
                } else if (__value__ == (7979757i32)) {
                    _gotoNext = 7980185i32;
                } else if (__value__ == (7979820i32)) {
                    _gotoNext = 7979871i32;
                } else if (__value__ == (7979871i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7979882i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7980041i32;
                    } else {
                        _gotoNext = 7980073i32;
                    };
                } else if (__value__ == (7979882i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7979989i32;
                    } else {
                        _gotoNext = 7980185i32;
                    };
                } else if (__value__ == (7979989i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7980889i32;
                } else if (__value__ == (7980041i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7980185i32;
                } else if (__value__ == (7980073i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7980185i32;
                } else if (__value__ == (7980101i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7980889i32;
                } else if (__value__ == (7980185i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7979600 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7979608 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7980258 = (0 : stdgo.GoInt);
                    _gotoNext = 7980254i32;
                } else if (__value__ == (7980254i32)) {
                    if ((_i_7980258 < (_s.length) : Bool)) {
                        _gotoNext = 7980282i32;
                    } else {
                        _gotoNext = 7980874i32;
                    };
                } else if (__value__ == (7980282i32)) {
                    _d_7980299 = _s[(_i_7980258 : stdgo.GoInt)];
                    _gotoNext = 7980311i32;
                } else if (__value__ == (7980311i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7980299 : Bool) && (_d_7980299 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7980322i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7980299 : Bool) && (_d_7980299 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7980366i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7980299 : Bool) && (_d_7980299 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7980415i32;
                    } else {
                        _gotoNext = 7980464i32;
                    };
                } else if (__value__ == (7980322i32)) {
                    _v_7980290 = (_d_7980299 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7980529i32;
                } else if (__value__ == (7980366i32)) {
                    _v_7980290 = ((_d_7980299 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7980529i32;
                } else if (__value__ == (7980415i32)) {
                    _v_7980290 = ((_d_7980299 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7980529i32;
                } else if (__value__ == (7980464i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7980889i32;
                } else if (__value__ == (7980529i32)) {
                    if (((_v_7980290 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7980547i32;
                    } else {
                        _gotoNext = 7980606i32;
                    };
                } else if (__value__ == (7980547i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7980889i32;
                } else if (__value__ == (7980606i32)) {
                    if ((_n >= _cutoff_7979600 : Bool)) {
                        _gotoNext = 7980621i32;
                    } else {
                        _gotoNext = 7980709i32;
                    };
                } else if (__value__ == (7980621i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7980889i32;
                } else if (__value__ == (7980709i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7980730 = (_n + (_v_7980290 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7980730 < _n : Bool) || (_n1_7980730 > _maxVal_7979608 : Bool) : Bool)) {
                        _gotoNext = 7980777i32;
                    } else {
                        _gotoNext = 7980862i32;
                    };
                } else if (__value__ == (7980777i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7980889i32;
                } else if (__value__ == (7980862i32)) {
                    _n = _n1_7980730;
                    _i_7980258++;
                    _gotoNext = 7980254i32;
                } else if (__value__ == (7980874i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7980889i32;
                } else if (__value__ == (7980889i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7979680 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
