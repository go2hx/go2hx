package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7585175:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7584597:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7584525:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7584517:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7585647:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7585216:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7585207:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7584557i32;
                    } else {
                        _gotoNext = 7584597i32;
                    };
                } else if (__value__ == (7584557i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7584597i32;
                } else if (__value__ == (7584597i32)) {
                    _s0_7584597 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7584606i32;
                } else if (__value__ == (7584606i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7584616i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7584674i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7584737i32;
                    } else {
                        _gotoNext = 7585018i32;
                    };
                } else if (__value__ == (7584616i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7585806i32;
                } else if (__value__ == (7584674i32)) {
                    _gotoNext = 7585102i32;
                } else if (__value__ == (7584737i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7584788i32;
                } else if (__value__ == (7584788i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7584799i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7584958i32;
                    } else {
                        _gotoNext = 7584990i32;
                    };
                } else if (__value__ == (7584799i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7584906i32;
                    } else {
                        _gotoNext = 7585102i32;
                    };
                } else if (__value__ == (7584906i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7585806i32;
                } else if (__value__ == (7584958i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7585102i32;
                } else if (__value__ == (7584990i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7585102i32;
                } else if (__value__ == (7585018i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7585806i32;
                } else if (__value__ == (7585102i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7584517 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7584525 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7585175 = (0 : stdgo.GoInt);
                    _gotoNext = 7585171i32;
                } else if (__value__ == (7585171i32)) {
                    if ((_i_7585175 < (_s.length) : Bool)) {
                        _gotoNext = 7585199i32;
                    } else {
                        _gotoNext = 7585791i32;
                    };
                } else if (__value__ == (7585199i32)) {
                    _d_7585216 = _s[(_i_7585175 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7585228i32;
                } else if (__value__ == (7585228i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7585216 : Bool) && (_d_7585216 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7585239i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7585216 : Bool) && (_d_7585216 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7585283i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7585216 : Bool) && (_d_7585216 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7585332i32;
                    } else {
                        _gotoNext = 7585381i32;
                    };
                } else if (__value__ == (7585239i32)) {
                    _v_7585207 = (_d_7585216 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7585446i32;
                } else if (__value__ == (7585283i32)) {
                    _v_7585207 = ((_d_7585216 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7585446i32;
                } else if (__value__ == (7585332i32)) {
                    _v_7585207 = ((_d_7585216 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7585446i32;
                } else if (__value__ == (7585381i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7585806i32;
                } else if (__value__ == (7585446i32)) {
                    if (((_v_7585207 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7585464i32;
                    } else {
                        _gotoNext = 7585523i32;
                    };
                } else if (__value__ == (7585464i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7585806i32;
                } else if (__value__ == (7585523i32)) {
                    if ((_n >= _cutoff_7584517 : Bool)) {
                        _gotoNext = 7585538i32;
                    } else {
                        _gotoNext = 7585626i32;
                    };
                } else if (__value__ == (7585538i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7585806i32;
                } else if (__value__ == (7585626i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7585647 = (_n + (_v_7585207 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7585647 < _n : Bool) || (_n1_7585647 > _maxVal_7584525 : Bool) : Bool)) {
                        _gotoNext = 7585694i32;
                    } else {
                        _gotoNext = 7585779i32;
                    };
                } else if (__value__ == (7585694i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7585806i32;
                } else if (__value__ == (7585779i32)) {
                    _n = _n1_7585647;
                    _i_7585175++;
                    _gotoNext = 7585171i32;
                } else if (__value__ == (7585791i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7585806i32;
                } else if (__value__ == (7585806i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7584597 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
