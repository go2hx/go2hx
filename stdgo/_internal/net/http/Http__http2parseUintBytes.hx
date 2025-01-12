package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _s0_7956696:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7956624:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7956616:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7957746:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7957315:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7957306:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7957274:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7956656i32;
                    } else {
                        _gotoNext = 7956696i32;
                    };
                } else if (__value__ == (7956656i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7956696i32;
                } else if (__value__ == (7956696i32)) {
                    _s0_7956696 = _s;
                    _gotoNext = 7956705i32;
                } else if (__value__ == (7956705i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7956715i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7956773i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7956836i32;
                    } else {
                        _gotoNext = 7957117i32;
                    };
                } else if (__value__ == (7956715i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7957905i32;
                } else if (__value__ == (7956773i32)) {
                    _gotoNext = 7957201i32;
                } else if (__value__ == (7956836i32)) {
                    _gotoNext = 7956887i32;
                } else if (__value__ == (7956887i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7956898i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7957057i32;
                    } else {
                        _gotoNext = 7957089i32;
                    };
                } else if (__value__ == (7956898i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7957005i32;
                    } else {
                        _gotoNext = 7957201i32;
                    };
                } else if (__value__ == (7957005i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7957905i32;
                } else if (__value__ == (7957057i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7957201i32;
                } else if (__value__ == (7957089i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7957201i32;
                } else if (__value__ == (7957117i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7957905i32;
                } else if (__value__ == (7957201i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7956616 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7956624 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7957274 = (0 : stdgo.GoInt);
                    _gotoNext = 7957270i32;
                } else if (__value__ == (7957270i32)) {
                    if ((_i_7957274 < (_s.length) : Bool)) {
                        _gotoNext = 7957298i32;
                    } else {
                        _gotoNext = 7957890i32;
                    };
                } else if (__value__ == (7957298i32)) {
                    _d_7957315 = _s[(_i_7957274 : stdgo.GoInt)];
                    _gotoNext = 7957327i32;
                } else if (__value__ == (7957327i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7957315 : Bool) && (_d_7957315 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7957338i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7957315 : Bool) && (_d_7957315 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7957382i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7957315 : Bool) && (_d_7957315 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7957431i32;
                    } else {
                        _gotoNext = 7957480i32;
                    };
                } else if (__value__ == (7957338i32)) {
                    _v_7957306 = (_d_7957315 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7957545i32;
                } else if (__value__ == (7957382i32)) {
                    _v_7957306 = ((_d_7957315 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7957545i32;
                } else if (__value__ == (7957431i32)) {
                    _v_7957306 = ((_d_7957315 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7957545i32;
                } else if (__value__ == (7957480i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7957905i32;
                } else if (__value__ == (7957545i32)) {
                    if (((_v_7957306 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7957563i32;
                    } else {
                        _gotoNext = 7957622i32;
                    };
                } else if (__value__ == (7957563i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7957905i32;
                } else if (__value__ == (7957622i32)) {
                    if ((_n >= _cutoff_7956616 : Bool)) {
                        _gotoNext = 7957637i32;
                    } else {
                        _gotoNext = 7957725i32;
                    };
                } else if (__value__ == (7957637i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7957905i32;
                } else if (__value__ == (7957725i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7957746 = (_n + (_v_7957306 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7957746 < _n : Bool) || (_n1_7957746 > _maxVal_7956624 : Bool) : Bool)) {
                        _gotoNext = 7957793i32;
                    } else {
                        _gotoNext = 7957878i32;
                    };
                } else if (__value__ == (7957793i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7957905i32;
                } else if (__value__ == (7957878i32)) {
                    _n = _n1_7957746;
                    _i_7957274++;
                    _gotoNext = 7957270i32;
                } else if (__value__ == (7957890i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7957905i32;
                } else if (__value__ == (7957905i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7956696 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
