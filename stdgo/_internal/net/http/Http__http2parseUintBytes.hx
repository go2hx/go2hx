package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7950205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7949774:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7949765:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7949733:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7949155:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7949083:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7949075:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7949115i32;
                    } else {
                        _gotoNext = 7949155i32;
                    };
                } else if (__value__ == (7949115i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7949155i32;
                } else if (__value__ == (7949155i32)) {
                    _s0_7949155 = _s;
                    _gotoNext = 7949164i32;
                } else if (__value__ == (7949164i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7949174i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7949232i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7949295i32;
                    } else {
                        _gotoNext = 7949576i32;
                    };
                } else if (__value__ == (7949174i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7950364i32;
                } else if (__value__ == (7949232i32)) {
                    _gotoNext = 7949660i32;
                } else if (__value__ == (7949295i32)) {
                    _gotoNext = 7949346i32;
                } else if (__value__ == (7949346i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7949357i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7949516i32;
                    } else {
                        _gotoNext = 7949548i32;
                    };
                } else if (__value__ == (7949357i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7949464i32;
                    } else {
                        _gotoNext = 7949660i32;
                    };
                } else if (__value__ == (7949464i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7950364i32;
                } else if (__value__ == (7949516i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7949660i32;
                } else if (__value__ == (7949548i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7949660i32;
                } else if (__value__ == (7949576i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7950364i32;
                } else if (__value__ == (7949660i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7949075 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7949083 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7949733 = (0 : stdgo.GoInt);
                    _gotoNext = 7949729i32;
                } else if (__value__ == (7949729i32)) {
                    if ((_i_7949733 < (_s.length) : Bool)) {
                        _gotoNext = 7949757i32;
                    } else {
                        _gotoNext = 7950349i32;
                    };
                } else if (__value__ == (7949757i32)) {
                    _d_7949774 = _s[(_i_7949733 : stdgo.GoInt)];
                    _gotoNext = 7949786i32;
                } else if (__value__ == (7949786i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7949774 : Bool) && (_d_7949774 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7949797i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7949774 : Bool) && (_d_7949774 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7949841i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7949774 : Bool) && (_d_7949774 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7949890i32;
                    } else {
                        _gotoNext = 7949939i32;
                    };
                } else if (__value__ == (7949797i32)) {
                    _v_7949765 = (_d_7949774 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7950004i32;
                } else if (__value__ == (7949841i32)) {
                    _v_7949765 = ((_d_7949774 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7950004i32;
                } else if (__value__ == (7949890i32)) {
                    _v_7949765 = ((_d_7949774 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7950004i32;
                } else if (__value__ == (7949939i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7950364i32;
                } else if (__value__ == (7950004i32)) {
                    if (((_v_7949765 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7950022i32;
                    } else {
                        _gotoNext = 7950081i32;
                    };
                } else if (__value__ == (7950022i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7950364i32;
                } else if (__value__ == (7950081i32)) {
                    if ((_n >= _cutoff_7949075 : Bool)) {
                        _gotoNext = 7950096i32;
                    } else {
                        _gotoNext = 7950184i32;
                    };
                } else if (__value__ == (7950096i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7950364i32;
                } else if (__value__ == (7950184i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7950205 = (_n + (_v_7949765 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7950205 < _n : Bool) || (_n1_7950205 > _maxVal_7949083 : Bool) : Bool)) {
                        _gotoNext = 7950252i32;
                    } else {
                        _gotoNext = 7950337i32;
                    };
                } else if (__value__ == (7950252i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7950364i32;
                } else if (__value__ == (7950337i32)) {
                    _n = _n1_7950205;
                    _i_7949733++;
                    _gotoNext = 7949729i32;
                } else if (__value__ == (7950349i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7950364i32;
                } else if (__value__ == (7950364i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7949155 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
