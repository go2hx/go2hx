package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7966936:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7966358:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7966286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7966278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7967408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7966977:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7966968:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7966318i32;
                    } else {
                        _gotoNext = 7966358i32;
                    };
                } else if (__value__ == (7966318i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7966358i32;
                } else if (__value__ == (7966358i32)) {
                    _s0_7966358 = _s;
                    _gotoNext = 7966367i32;
                } else if (__value__ == (7966367i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7966377i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7966435i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7966498i32;
                    } else {
                        _gotoNext = 7966779i32;
                    };
                } else if (__value__ == (7966377i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7967567i32;
                } else if (__value__ == (7966435i32)) {
                    _gotoNext = 7966863i32;
                } else if (__value__ == (7966498i32)) {
                    _gotoNext = 7966549i32;
                } else if (__value__ == (7966549i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7966560i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7966719i32;
                    } else {
                        _gotoNext = 7966751i32;
                    };
                } else if (__value__ == (7966560i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7966667i32;
                    } else {
                        _gotoNext = 7966863i32;
                    };
                } else if (__value__ == (7966667i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7967567i32;
                } else if (__value__ == (7966719i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7966863i32;
                } else if (__value__ == (7966751i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7966863i32;
                } else if (__value__ == (7966779i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7967567i32;
                } else if (__value__ == (7966863i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7966278 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7966286 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7966936 = (0 : stdgo.GoInt);
                    _gotoNext = 7966932i32;
                } else if (__value__ == (7966932i32)) {
                    if ((_i_7966936 < (_s.length) : Bool)) {
                        _gotoNext = 7966960i32;
                    } else {
                        _gotoNext = 7967552i32;
                    };
                } else if (__value__ == (7966960i32)) {
                    _d_7966977 = _s[(_i_7966936 : stdgo.GoInt)];
                    _gotoNext = 7966989i32;
                } else if (__value__ == (7966989i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7966977 : Bool) && (_d_7966977 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7967000i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7966977 : Bool) && (_d_7966977 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7967044i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7966977 : Bool) && (_d_7966977 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7967093i32;
                    } else {
                        _gotoNext = 7967142i32;
                    };
                } else if (__value__ == (7967000i32)) {
                    _v_7966968 = (_d_7966977 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7967207i32;
                } else if (__value__ == (7967044i32)) {
                    _v_7966968 = ((_d_7966977 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7967207i32;
                } else if (__value__ == (7967093i32)) {
                    _v_7966968 = ((_d_7966977 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7967207i32;
                } else if (__value__ == (7967142i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7967567i32;
                } else if (__value__ == (7967207i32)) {
                    if (((_v_7966968 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7967225i32;
                    } else {
                        _gotoNext = 7967284i32;
                    };
                } else if (__value__ == (7967225i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7967567i32;
                } else if (__value__ == (7967284i32)) {
                    if ((_n >= _cutoff_7966278 : Bool)) {
                        _gotoNext = 7967299i32;
                    } else {
                        _gotoNext = 7967387i32;
                    };
                } else if (__value__ == (7967299i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7967567i32;
                } else if (__value__ == (7967387i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7967408 = (_n + (_v_7966968 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7967408 < _n : Bool) || (_n1_7967408 > _maxVal_7966286 : Bool) : Bool)) {
                        _gotoNext = 7967455i32;
                    } else {
                        _gotoNext = 7967540i32;
                    };
                } else if (__value__ == (7967455i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7967567i32;
                } else if (__value__ == (7967540i32)) {
                    _n = _n1_7967408;
                    _i_7966936++;
                    _gotoNext = 7966932i32;
                } else if (__value__ == (7967552i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7967567i32;
                } else if (__value__ == (7967567i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7966358 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
