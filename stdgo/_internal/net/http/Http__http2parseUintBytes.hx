package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7557522:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7557513:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7557481:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7556903:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7556831:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7556823:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7557953:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7556863i32;
                    } else {
                        _gotoNext = 7556903i32;
                    };
                } else if (__value__ == (7556863i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7556903i32;
                } else if (__value__ == (7556903i32)) {
                    _s0_7556903 = _s;
                    _gotoNext = 7556912i32;
                } else if (__value__ == (7556912i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7556922i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7556980i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7557043i32;
                    } else {
                        _gotoNext = 7557324i32;
                    };
                } else if (__value__ == (7556922i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7558112i32;
                } else if (__value__ == (7556980i32)) {
                    _gotoNext = 7557408i32;
                } else if (__value__ == (7557043i32)) {
                    _gotoNext = 7557094i32;
                } else if (__value__ == (7557094i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7557105i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7557264i32;
                    } else {
                        _gotoNext = 7557296i32;
                    };
                } else if (__value__ == (7557105i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7557212i32;
                    } else {
                        _gotoNext = 7557408i32;
                    };
                } else if (__value__ == (7557212i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7558112i32;
                } else if (__value__ == (7557264i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7557408i32;
                } else if (__value__ == (7557296i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7557408i32;
                } else if (__value__ == (7557324i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7558112i32;
                } else if (__value__ == (7557408i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7556823 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7556831 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7557481 = (0 : stdgo.GoInt);
                    _gotoNext = 7557477i32;
                } else if (__value__ == (7557477i32)) {
                    if ((_i_7557481 < (_s.length) : Bool)) {
                        _gotoNext = 7557505i32;
                    } else {
                        _gotoNext = 7558097i32;
                    };
                } else if (__value__ == (7557505i32)) {
                    _d_7557522 = _s[(_i_7557481 : stdgo.GoInt)];
                    _gotoNext = 7557534i32;
                } else if (__value__ == (7557534i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7557522 : Bool) && (_d_7557522 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7557545i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7557522 : Bool) && (_d_7557522 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7557589i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7557522 : Bool) && (_d_7557522 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7557638i32;
                    } else {
                        _gotoNext = 7557687i32;
                    };
                } else if (__value__ == (7557545i32)) {
                    _v_7557513 = (_d_7557522 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7557752i32;
                } else if (__value__ == (7557589i32)) {
                    _v_7557513 = ((_d_7557522 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7557752i32;
                } else if (__value__ == (7557638i32)) {
                    _v_7557513 = ((_d_7557522 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7557752i32;
                } else if (__value__ == (7557687i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7558112i32;
                } else if (__value__ == (7557752i32)) {
                    if (((_v_7557513 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7557770i32;
                    } else {
                        _gotoNext = 7557829i32;
                    };
                } else if (__value__ == (7557770i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7558112i32;
                } else if (__value__ == (7557829i32)) {
                    if ((_n >= _cutoff_7556823 : Bool)) {
                        _gotoNext = 7557844i32;
                    } else {
                        _gotoNext = 7557932i32;
                    };
                } else if (__value__ == (7557844i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7558112i32;
                } else if (__value__ == (7557932i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7557953 = (_n + (_v_7557513 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7557953 < _n : Bool) || (_n1_7557953 > _maxVal_7556831 : Bool) : Bool)) {
                        _gotoNext = 7558000i32;
                    } else {
                        _gotoNext = 7558085i32;
                    };
                } else if (__value__ == (7558000i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7558112i32;
                } else if (__value__ == (7558085i32)) {
                    _n = _n1_7557953;
                    _i_7557481++;
                    _gotoNext = 7557477i32;
                } else if (__value__ == (7558097i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7558112i32;
                } else if (__value__ == (7558112i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7556903 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
