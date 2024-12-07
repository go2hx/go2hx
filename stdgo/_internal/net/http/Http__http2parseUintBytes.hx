package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7973225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7972794:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7972785:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7972753:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7972175:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7972103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7972095:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7972135i32;
                    } else {
                        _gotoNext = 7972175i32;
                    };
                } else if (__value__ == (7972135i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7972175i32;
                } else if (__value__ == (7972175i32)) {
                    _s0_7972175 = _s;
                    _gotoNext = 7972184i32;
                } else if (__value__ == (7972184i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7972194i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7972252i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7972315i32;
                    } else {
                        _gotoNext = 7972596i32;
                    };
                } else if (__value__ == (7972194i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7973384i32;
                } else if (__value__ == (7972252i32)) {
                    _gotoNext = 7972680i32;
                } else if (__value__ == (7972315i32)) {
                    _gotoNext = 7972366i32;
                } else if (__value__ == (7972366i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7972377i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7972536i32;
                    } else {
                        _gotoNext = 7972568i32;
                    };
                } else if (__value__ == (7972377i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7972484i32;
                    } else {
                        _gotoNext = 7972680i32;
                    };
                } else if (__value__ == (7972484i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7973384i32;
                } else if (__value__ == (7972536i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7972680i32;
                } else if (__value__ == (7972568i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7972680i32;
                } else if (__value__ == (7972596i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7973384i32;
                } else if (__value__ == (7972680i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7972095 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7972103 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7972753 = (0 : stdgo.GoInt);
                    _gotoNext = 7972749i32;
                } else if (__value__ == (7972749i32)) {
                    if ((_i_7972753 < (_s.length) : Bool)) {
                        _gotoNext = 7972777i32;
                    } else {
                        _gotoNext = 7973369i32;
                    };
                } else if (__value__ == (7972777i32)) {
                    _d_7972794 = _s[(_i_7972753 : stdgo.GoInt)];
                    _gotoNext = 7972806i32;
                } else if (__value__ == (7972806i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7972794 : Bool) && (_d_7972794 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7972817i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7972794 : Bool) && (_d_7972794 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7972861i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7972794 : Bool) && (_d_7972794 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7972910i32;
                    } else {
                        _gotoNext = 7972959i32;
                    };
                } else if (__value__ == (7972817i32)) {
                    _v_7972785 = (_d_7972794 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7973024i32;
                } else if (__value__ == (7972861i32)) {
                    _v_7972785 = ((_d_7972794 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7973024i32;
                } else if (__value__ == (7972910i32)) {
                    _v_7972785 = ((_d_7972794 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7973024i32;
                } else if (__value__ == (7972959i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7973384i32;
                } else if (__value__ == (7973024i32)) {
                    if (((_v_7972785 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7973042i32;
                    } else {
                        _gotoNext = 7973101i32;
                    };
                } else if (__value__ == (7973042i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7973384i32;
                } else if (__value__ == (7973101i32)) {
                    if ((_n >= _cutoff_7972095 : Bool)) {
                        _gotoNext = 7973116i32;
                    } else {
                        _gotoNext = 7973204i32;
                    };
                } else if (__value__ == (7973116i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7973384i32;
                } else if (__value__ == (7973204i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7973225 = (_n + (_v_7972785 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7973225 < _n : Bool) || (_n1_7973225 > _maxVal_7972103 : Bool) : Bool)) {
                        _gotoNext = 7973272i32;
                    } else {
                        _gotoNext = 7973357i32;
                    };
                } else if (__value__ == (7973272i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7973384i32;
                } else if (__value__ == (7973357i32)) {
                    _n = _n1_7973225;
                    _i_7972753++;
                    _gotoNext = 7972749i32;
                } else if (__value__ == (7973369i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7973384i32;
                } else if (__value__ == (7973384i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7972175 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
