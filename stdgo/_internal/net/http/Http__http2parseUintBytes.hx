package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _maxVal_7592865:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7592857:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7593987:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7593556:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7593547:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7593515:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7592937:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7592897i32;
                    } else {
                        _gotoNext = 7592937i32;
                    };
                } else if (__value__ == (7592897i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7592937i32;
                } else if (__value__ == (7592937i32)) {
                    _s0_7592937 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7592946i32;
                } else if (__value__ == (7592946i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7592956i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7593014i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7593077i32;
                    } else {
                        _gotoNext = 7593358i32;
                    };
                } else if (__value__ == (7592956i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594146i32;
                } else if (__value__ == (7593014i32)) {
                    _gotoNext = 7593442i32;
                } else if (__value__ == (7593077i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7593128i32;
                } else if (__value__ == (7593128i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7593139i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7593298i32;
                    } else {
                        _gotoNext = 7593330i32;
                    };
                } else if (__value__ == (7593139i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7593246i32;
                    } else {
                        _gotoNext = 7593442i32;
                    };
                } else if (__value__ == (7593246i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594146i32;
                } else if (__value__ == (7593298i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7593442i32;
                } else if (__value__ == (7593330i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7593442i32;
                } else if (__value__ == (7593358i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7594146i32;
                } else if (__value__ == (7593442i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7592857 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7592865 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7593515 = (0 : stdgo.GoInt);
                    _gotoNext = 7593511i32;
                } else if (__value__ == (7593511i32)) {
                    if ((_i_7593515 < (_s.length) : Bool)) {
                        _gotoNext = 7593539i32;
                    } else {
                        _gotoNext = 7594131i32;
                    };
                } else if (__value__ == (7593539i32)) {
                    _d_7593556 = _s[(_i_7593515 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7593568i32;
                } else if (__value__ == (7593568i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7593556 : Bool) && (_d_7593556 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593579i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7593556 : Bool) && (_d_7593556 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593623i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7593556 : Bool) && (_d_7593556 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593672i32;
                    } else {
                        _gotoNext = 7593721i32;
                    };
                } else if (__value__ == (7593579i32)) {
                    _v_7593547 = (_d_7593556 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7593786i32;
                } else if (__value__ == (7593623i32)) {
                    _v_7593547 = ((_d_7593556 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7593786i32;
                } else if (__value__ == (7593672i32)) {
                    _v_7593547 = ((_d_7593556 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7593786i32;
                } else if (__value__ == (7593721i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594146i32;
                } else if (__value__ == (7593786i32)) {
                    if (((_v_7593547 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7593804i32;
                    } else {
                        _gotoNext = 7593863i32;
                    };
                } else if (__value__ == (7593804i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594146i32;
                } else if (__value__ == (7593863i32)) {
                    if ((_n >= _cutoff_7592857 : Bool)) {
                        _gotoNext = 7593878i32;
                    } else {
                        _gotoNext = 7593966i32;
                    };
                } else if (__value__ == (7593878i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7594146i32;
                } else if (__value__ == (7593966i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7593987 = (_n + (_v_7593547 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7593987 < _n : Bool) || (_n1_7593987 > _maxVal_7592865 : Bool) : Bool)) {
                        _gotoNext = 7594034i32;
                    } else {
                        _gotoNext = 7594119i32;
                    };
                } else if (__value__ == (7594034i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7594146i32;
                } else if (__value__ == (7594119i32)) {
                    _n = _n1_7593987;
                    _i_7593515++;
                    _gotoNext = 7593511i32;
                } else if (__value__ == (7594131i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7594146i32;
                } else if (__value__ == (7594146i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7592937 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
