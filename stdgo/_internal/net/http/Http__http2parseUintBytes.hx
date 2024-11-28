package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7630484:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7630452:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7629874:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7629802:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7629794:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7630924:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7630493:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7629834i32;
                    } else {
                        _gotoNext = 7629874i32;
                    };
                } else if (__value__ == (7629834i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7629874i32;
                } else if (__value__ == (7629874i32)) {
                    _s0_7629874 = _s;
                    _gotoNext = 7629883i32;
                } else if (__value__ == (7629883i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7629893i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7629951i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7630014i32;
                    } else {
                        _gotoNext = 7630295i32;
                    };
                } else if (__value__ == (7629893i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7631083i32;
                } else if (__value__ == (7629951i32)) {
                    _gotoNext = 7630379i32;
                } else if (__value__ == (7630014i32)) {
                    _gotoNext = 7630065i32;
                } else if (__value__ == (7630065i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7630076i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7630235i32;
                    } else {
                        _gotoNext = 7630267i32;
                    };
                } else if (__value__ == (7630076i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7630183i32;
                    } else {
                        _gotoNext = 7630379i32;
                    };
                } else if (__value__ == (7630183i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7631083i32;
                } else if (__value__ == (7630235i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7630379i32;
                } else if (__value__ == (7630267i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7630379i32;
                } else if (__value__ == (7630295i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7631083i32;
                } else if (__value__ == (7630379i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7629794 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7629802 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7630452 = (0 : stdgo.GoInt);
                    _gotoNext = 7630448i32;
                } else if (__value__ == (7630448i32)) {
                    if ((_i_7630452 < (_s.length) : Bool)) {
                        _gotoNext = 7630476i32;
                    } else {
                        _gotoNext = 7631068i32;
                    };
                } else if (__value__ == (7630476i32)) {
                    _d_7630493 = _s[(_i_7630452 : stdgo.GoInt)];
                    _gotoNext = 7630505i32;
                } else if (__value__ == (7630505i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7630493 : Bool) && (_d_7630493 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7630516i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7630493 : Bool) && (_d_7630493 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7630560i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7630493 : Bool) && (_d_7630493 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7630609i32;
                    } else {
                        _gotoNext = 7630658i32;
                    };
                } else if (__value__ == (7630516i32)) {
                    _v_7630484 = (_d_7630493 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7630723i32;
                } else if (__value__ == (7630560i32)) {
                    _v_7630484 = ((_d_7630493 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7630723i32;
                } else if (__value__ == (7630609i32)) {
                    _v_7630484 = ((_d_7630493 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7630723i32;
                } else if (__value__ == (7630658i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7631083i32;
                } else if (__value__ == (7630723i32)) {
                    if (((_v_7630484 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7630741i32;
                    } else {
                        _gotoNext = 7630800i32;
                    };
                } else if (__value__ == (7630741i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7631083i32;
                } else if (__value__ == (7630800i32)) {
                    if ((_n >= _cutoff_7629794 : Bool)) {
                        _gotoNext = 7630815i32;
                    } else {
                        _gotoNext = 7630903i32;
                    };
                } else if (__value__ == (7630815i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7631083i32;
                } else if (__value__ == (7630903i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7630924 = (_n + (_v_7630484 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7630924 < _n : Bool) || (_n1_7630924 > _maxVal_7629802 : Bool) : Bool)) {
                        _gotoNext = 7630971i32;
                    } else {
                        _gotoNext = 7631056i32;
                    };
                } else if (__value__ == (7630971i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7631083i32;
                } else if (__value__ == (7631056i32)) {
                    _n = _n1_7630924;
                    _i_7630452++;
                    _gotoNext = 7630448i32;
                } else if (__value__ == (7631068i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7631083i32;
                } else if (__value__ == (7631083i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7629874 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
