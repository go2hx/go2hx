package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7789966:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7791096:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7790665:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7790656:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7790624:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7790046:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7789974:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7790006i32;
                    } else {
                        _gotoNext = 7790046i32;
                    };
                } else if (__value__ == (7790006i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7790046i32;
                } else if (__value__ == (7790046i32)) {
                    _s0_7790046 = _s;
                    _gotoNext = 7790055i32;
                } else if (__value__ == (7790055i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7790065i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7790123i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7790186i32;
                    } else {
                        _gotoNext = 7790467i32;
                    };
                } else if (__value__ == (7790065i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7791255i32;
                } else if (__value__ == (7790123i32)) {
                    _gotoNext = 7790551i32;
                } else if (__value__ == (7790186i32)) {
                    _gotoNext = 7790237i32;
                } else if (__value__ == (7790237i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7790248i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7790407i32;
                    } else {
                        _gotoNext = 7790439i32;
                    };
                } else if (__value__ == (7790248i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7790355i32;
                    } else {
                        _gotoNext = 7790551i32;
                    };
                } else if (__value__ == (7790355i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7791255i32;
                } else if (__value__ == (7790407i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7790551i32;
                } else if (__value__ == (7790439i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7790551i32;
                } else if (__value__ == (7790467i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7791255i32;
                } else if (__value__ == (7790551i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7789966 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7789974 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7790624 = (0 : stdgo.GoInt);
                    _gotoNext = 7790620i32;
                } else if (__value__ == (7790620i32)) {
                    if ((_i_7790624 < (_s.length) : Bool)) {
                        _gotoNext = 7790648i32;
                    } else {
                        _gotoNext = 7791240i32;
                    };
                } else if (__value__ == (7790648i32)) {
                    _d_7790665 = _s[(_i_7790624 : stdgo.GoInt)];
                    _gotoNext = 7790677i32;
                } else if (__value__ == (7790677i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7790665 : Bool) && (_d_7790665 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7790688i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7790665 : Bool) && (_d_7790665 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7790732i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7790665 : Bool) && (_d_7790665 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7790781i32;
                    } else {
                        _gotoNext = 7790830i32;
                    };
                } else if (__value__ == (7790688i32)) {
                    _v_7790656 = (_d_7790665 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7790895i32;
                } else if (__value__ == (7790732i32)) {
                    _v_7790656 = ((_d_7790665 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7790895i32;
                } else if (__value__ == (7790781i32)) {
                    _v_7790656 = ((_d_7790665 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7790895i32;
                } else if (__value__ == (7790830i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7791255i32;
                } else if (__value__ == (7790895i32)) {
                    if (((_v_7790656 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7790913i32;
                    } else {
                        _gotoNext = 7790972i32;
                    };
                } else if (__value__ == (7790913i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7791255i32;
                } else if (__value__ == (7790972i32)) {
                    if ((_n >= _cutoff_7789966 : Bool)) {
                        _gotoNext = 7790987i32;
                    } else {
                        _gotoNext = 7791075i32;
                    };
                } else if (__value__ == (7790987i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7791255i32;
                } else if (__value__ == (7791075i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7791096 = (_n + (_v_7790656 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7791096 < _n : Bool) || (_n1_7791096 > _maxVal_7789974 : Bool) : Bool)) {
                        _gotoNext = 7791143i32;
                    } else {
                        _gotoNext = 7791228i32;
                    };
                } else if (__value__ == (7791143i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7791255i32;
                } else if (__value__ == (7791228i32)) {
                    _n = _n1_7791096;
                    _i_7790624++;
                    _gotoNext = 7790620i32;
                } else if (__value__ == (7791240i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7791255i32;
                } else if (__value__ == (7791255i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7790046 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
