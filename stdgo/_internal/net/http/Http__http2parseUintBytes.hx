package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7720667:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7721797:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7721366:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7721357:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7721325:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7720747:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7720675:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7720707i32;
                    } else {
                        _gotoNext = 7720747i32;
                    };
                } else if (__value__ == (7720707i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7720747i32;
                } else if (__value__ == (7720747i32)) {
                    _s0_7720747 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7720756i32;
                } else if (__value__ == (7720756i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7720766i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7720824i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7720887i32;
                    } else {
                        _gotoNext = 7721168i32;
                    };
                } else if (__value__ == (7720766i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7721956i32;
                } else if (__value__ == (7720824i32)) {
                    _gotoNext = 7721252i32;
                } else if (__value__ == (7720887i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7720938i32;
                } else if (__value__ == (7720938i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7720949i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7721108i32;
                    } else {
                        _gotoNext = 7721140i32;
                    };
                } else if (__value__ == (7720949i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7721056i32;
                    } else {
                        _gotoNext = 7721252i32;
                    };
                } else if (__value__ == (7721056i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7721956i32;
                } else if (__value__ == (7721108i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7721252i32;
                } else if (__value__ == (7721140i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7721252i32;
                } else if (__value__ == (7721168i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7721956i32;
                } else if (__value__ == (7721252i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7720667 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7720675 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7721325 = (0 : stdgo.GoInt);
                    _gotoNext = 7721321i32;
                } else if (__value__ == (7721321i32)) {
                    if ((_i_7721325 < (_s.length) : Bool)) {
                        _gotoNext = 7721349i32;
                    } else {
                        _gotoNext = 7721941i32;
                    };
                } else if (__value__ == (7721349i32)) {
                    _d_7721366 = _s[(_i_7721325 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7721378i32;
                } else if (__value__ == (7721378i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7721366 : Bool) && (_d_7721366 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7721389i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7721366 : Bool) && (_d_7721366 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7721433i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7721366 : Bool) && (_d_7721366 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7721482i32;
                    } else {
                        _gotoNext = 7721531i32;
                    };
                } else if (__value__ == (7721389i32)) {
                    _v_7721357 = (_d_7721366 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7721596i32;
                } else if (__value__ == (7721433i32)) {
                    _v_7721357 = ((_d_7721366 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7721596i32;
                } else if (__value__ == (7721482i32)) {
                    _v_7721357 = ((_d_7721366 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7721596i32;
                } else if (__value__ == (7721531i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7721956i32;
                } else if (__value__ == (7721596i32)) {
                    if (((_v_7721357 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7721614i32;
                    } else {
                        _gotoNext = 7721673i32;
                    };
                } else if (__value__ == (7721614i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7721956i32;
                } else if (__value__ == (7721673i32)) {
                    if ((_n >= _cutoff_7720667 : Bool)) {
                        _gotoNext = 7721688i32;
                    } else {
                        _gotoNext = 7721776i32;
                    };
                } else if (__value__ == (7721688i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7721956i32;
                } else if (__value__ == (7721776i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7721797 = (_n + (_v_7721357 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7721797 < _n : Bool) || (_n1_7721797 > _maxVal_7720675 : Bool) : Bool)) {
                        _gotoNext = 7721844i32;
                    } else {
                        _gotoNext = 7721929i32;
                    };
                } else if (__value__ == (7721844i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7721956i32;
                } else if (__value__ == (7721929i32)) {
                    _n = _n1_7721797;
                    _i_7721325++;
                    _gotoNext = 7721321i32;
                } else if (__value__ == (7721941i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7721956i32;
                } else if (__value__ == (7721956i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7720747 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
