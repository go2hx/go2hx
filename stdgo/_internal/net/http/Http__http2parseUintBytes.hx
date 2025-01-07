package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7641747:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7641316:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7641307:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7641275:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7640697:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7640625:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7640617:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7640657i32;
                    } else {
                        _gotoNext = 7640697i32;
                    };
                } else if (__value__ == (7640657i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7640697i32;
                } else if (__value__ == (7640697i32)) {
                    _s0_7640697 = _s;
                    _gotoNext = 7640706i32;
                } else if (__value__ == (7640706i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7640716i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7640774i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7640837i32;
                    } else {
                        _gotoNext = 7641118i32;
                    };
                } else if (__value__ == (7640716i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7641906i32;
                } else if (__value__ == (7640774i32)) {
                    _gotoNext = 7641202i32;
                } else if (__value__ == (7640837i32)) {
                    _gotoNext = 7640888i32;
                } else if (__value__ == (7640888i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7640899i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7641058i32;
                    } else {
                        _gotoNext = 7641090i32;
                    };
                } else if (__value__ == (7640899i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7641006i32;
                    } else {
                        _gotoNext = 7641202i32;
                    };
                } else if (__value__ == (7641006i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7641906i32;
                } else if (__value__ == (7641058i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7641202i32;
                } else if (__value__ == (7641090i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7641202i32;
                } else if (__value__ == (7641118i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7641906i32;
                } else if (__value__ == (7641202i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7640617 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7640625 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7641275 = (0 : stdgo.GoInt);
                    _gotoNext = 7641271i32;
                } else if (__value__ == (7641271i32)) {
                    if ((_i_7641275 < (_s.length) : Bool)) {
                        _gotoNext = 7641299i32;
                    } else {
                        _gotoNext = 7641891i32;
                    };
                } else if (__value__ == (7641299i32)) {
                    _d_7641316 = _s[(_i_7641275 : stdgo.GoInt)];
                    _gotoNext = 7641328i32;
                } else if (__value__ == (7641328i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7641316 : Bool) && (_d_7641316 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7641339i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7641316 : Bool) && (_d_7641316 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7641383i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7641316 : Bool) && (_d_7641316 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7641432i32;
                    } else {
                        _gotoNext = 7641481i32;
                    };
                } else if (__value__ == (7641339i32)) {
                    _v_7641307 = (_d_7641316 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7641546i32;
                } else if (__value__ == (7641383i32)) {
                    _v_7641307 = ((_d_7641316 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7641546i32;
                } else if (__value__ == (7641432i32)) {
                    _v_7641307 = ((_d_7641316 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7641546i32;
                } else if (__value__ == (7641481i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7641906i32;
                } else if (__value__ == (7641546i32)) {
                    if (((_v_7641307 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7641564i32;
                    } else {
                        _gotoNext = 7641623i32;
                    };
                } else if (__value__ == (7641564i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7641906i32;
                } else if (__value__ == (7641623i32)) {
                    if ((_n >= _cutoff_7640617 : Bool)) {
                        _gotoNext = 7641638i32;
                    } else {
                        _gotoNext = 7641726i32;
                    };
                } else if (__value__ == (7641638i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7641906i32;
                } else if (__value__ == (7641726i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7641747 = (_n + (_v_7641307 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7641747 < _n : Bool) || (_n1_7641747 > _maxVal_7640625 : Bool) : Bool)) {
                        _gotoNext = 7641794i32;
                    } else {
                        _gotoNext = 7641879i32;
                    };
                } else if (__value__ == (7641794i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7641906i32;
                } else if (__value__ == (7641879i32)) {
                    _n = _n1_7641747;
                    _i_7641275++;
                    _gotoNext = 7641271i32;
                } else if (__value__ == (7641891i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7641906i32;
                } else if (__value__ == (7641906i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7640697 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
