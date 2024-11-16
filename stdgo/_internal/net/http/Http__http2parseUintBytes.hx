package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7637491:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7637060:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7637051:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7637019:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7636441:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7636369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7636361:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7636401i32;
                    } else {
                        _gotoNext = 7636441i32;
                    };
                } else if (__value__ == (7636401i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7636441i32;
                } else if (__value__ == (7636441i32)) {
                    _s0_7636441 = _s;
                    _gotoNext = 7636450i32;
                } else if (__value__ == (7636450i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7636460i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7636518i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7636581i32;
                    } else {
                        _gotoNext = 7636862i32;
                    };
                } else if (__value__ == (7636460i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7637650i32;
                } else if (__value__ == (7636518i32)) {
                    _gotoNext = 7636946i32;
                } else if (__value__ == (7636581i32)) {
                    _gotoNext = 7636632i32;
                } else if (__value__ == (7636632i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7636643i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7636802i32;
                    } else {
                        _gotoNext = 7636834i32;
                    };
                } else if (__value__ == (7636643i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7636750i32;
                    } else {
                        _gotoNext = 7636946i32;
                    };
                } else if (__value__ == (7636750i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7637650i32;
                } else if (__value__ == (7636802i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7636946i32;
                } else if (__value__ == (7636834i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7636946i32;
                } else if (__value__ == (7636862i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7637650i32;
                } else if (__value__ == (7636946i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7636361 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7636369 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7637019 = (0 : stdgo.GoInt);
                    _gotoNext = 7637015i32;
                } else if (__value__ == (7637015i32)) {
                    if ((_i_7637019 < (_s.length) : Bool)) {
                        _gotoNext = 7637043i32;
                    } else {
                        _gotoNext = 7637635i32;
                    };
                } else if (__value__ == (7637043i32)) {
                    _d_7637060 = _s[(_i_7637019 : stdgo.GoInt)];
                    _gotoNext = 7637072i32;
                } else if (__value__ == (7637072i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7637060 : Bool) && (_d_7637060 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7637083i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7637060 : Bool) && (_d_7637060 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7637127i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7637060 : Bool) && (_d_7637060 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7637176i32;
                    } else {
                        _gotoNext = 7637225i32;
                    };
                } else if (__value__ == (7637083i32)) {
                    _v_7637051 = (_d_7637060 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7637290i32;
                } else if (__value__ == (7637127i32)) {
                    _v_7637051 = ((_d_7637060 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7637290i32;
                } else if (__value__ == (7637176i32)) {
                    _v_7637051 = ((_d_7637060 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7637290i32;
                } else if (__value__ == (7637225i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7637650i32;
                } else if (__value__ == (7637290i32)) {
                    if (((_v_7637051 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7637308i32;
                    } else {
                        _gotoNext = 7637367i32;
                    };
                } else if (__value__ == (7637308i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7637650i32;
                } else if (__value__ == (7637367i32)) {
                    if ((_n >= _cutoff_7636361 : Bool)) {
                        _gotoNext = 7637382i32;
                    } else {
                        _gotoNext = 7637470i32;
                    };
                } else if (__value__ == (7637382i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7637650i32;
                } else if (__value__ == (7637470i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7637491 = (_n + (_v_7637051 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7637491 < _n : Bool) || (_n1_7637491 > _maxVal_7636369 : Bool) : Bool)) {
                        _gotoNext = 7637538i32;
                    } else {
                        _gotoNext = 7637623i32;
                    };
                } else if (__value__ == (7637538i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7637650i32;
                } else if (__value__ == (7637623i32)) {
                    _n = _n1_7637491;
                    _i_7637019++;
                    _gotoNext = 7637015i32;
                } else if (__value__ == (7637635i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7637650i32;
                } else if (__value__ == (7637650i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7636441 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
