package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _s0_7635789:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7635717:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7635709:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7636839:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7636408:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7636399:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7636367:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7635749i32;
                    } else {
                        _gotoNext = 7635789i32;
                    };
                } else if (__value__ == (7635749i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7635789i32;
                } else if (__value__ == (7635789i32)) {
                    _s0_7635789 = _s;
                    _gotoNext = 7635798i32;
                } else if (__value__ == (7635798i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7635808i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7635866i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7635929i32;
                    } else {
                        _gotoNext = 7636210i32;
                    };
                } else if (__value__ == (7635808i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7636998i32;
                } else if (__value__ == (7635866i32)) {
                    _gotoNext = 7636294i32;
                } else if (__value__ == (7635929i32)) {
                    _gotoNext = 7635980i32;
                } else if (__value__ == (7635980i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7635991i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7636150i32;
                    } else {
                        _gotoNext = 7636182i32;
                    };
                } else if (__value__ == (7635991i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7636098i32;
                    } else {
                        _gotoNext = 7636294i32;
                    };
                } else if (__value__ == (7636098i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7636998i32;
                } else if (__value__ == (7636150i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7636294i32;
                } else if (__value__ == (7636182i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7636294i32;
                } else if (__value__ == (7636210i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7636998i32;
                } else if (__value__ == (7636294i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7635709 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7635717 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7636367 = (0 : stdgo.GoInt);
                    _gotoNext = 7636363i32;
                } else if (__value__ == (7636363i32)) {
                    if ((_i_7636367 < (_s.length) : Bool)) {
                        _gotoNext = 7636391i32;
                    } else {
                        _gotoNext = 7636983i32;
                    };
                } else if (__value__ == (7636391i32)) {
                    _d_7636408 = _s[(_i_7636367 : stdgo.GoInt)];
                    _gotoNext = 7636420i32;
                } else if (__value__ == (7636420i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7636408 : Bool) && (_d_7636408 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7636431i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7636408 : Bool) && (_d_7636408 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7636475i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7636408 : Bool) && (_d_7636408 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7636524i32;
                    } else {
                        _gotoNext = 7636573i32;
                    };
                } else if (__value__ == (7636431i32)) {
                    _v_7636399 = (_d_7636408 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7636638i32;
                } else if (__value__ == (7636475i32)) {
                    _v_7636399 = ((_d_7636408 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7636638i32;
                } else if (__value__ == (7636524i32)) {
                    _v_7636399 = ((_d_7636408 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7636638i32;
                } else if (__value__ == (7636573i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7636998i32;
                } else if (__value__ == (7636638i32)) {
                    if (((_v_7636399 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7636656i32;
                    } else {
                        _gotoNext = 7636715i32;
                    };
                } else if (__value__ == (7636656i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7636998i32;
                } else if (__value__ == (7636715i32)) {
                    if ((_n >= _cutoff_7635709 : Bool)) {
                        _gotoNext = 7636730i32;
                    } else {
                        _gotoNext = 7636818i32;
                    };
                } else if (__value__ == (7636730i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7636998i32;
                } else if (__value__ == (7636818i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7636839 = (_n + (_v_7636399 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7636839 < _n : Bool) || (_n1_7636839 > _maxVal_7635717 : Bool) : Bool)) {
                        _gotoNext = 7636886i32;
                    } else {
                        _gotoNext = 7636971i32;
                    };
                } else if (__value__ == (7636886i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7636998i32;
                } else if (__value__ == (7636971i32)) {
                    _n = _n1_7636839;
                    _i_7636367++;
                    _gotoNext = 7636363i32;
                } else if (__value__ == (7636983i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7636998i32;
                } else if (__value__ == (7636998i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7635789 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
