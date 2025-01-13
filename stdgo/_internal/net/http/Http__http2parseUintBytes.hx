package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7778202:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7778193:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7778161:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7777583:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7777511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7777503:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7778633:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7777543i32;
                    } else {
                        _gotoNext = 7777583i32;
                    };
                } else if (__value__ == (7777543i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7777583i32;
                } else if (__value__ == (7777583i32)) {
                    _s0_7777583 = _s;
                    _gotoNext = 7777592i32;
                } else if (__value__ == (7777592i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7777602i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7777660i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7777723i32;
                    } else {
                        _gotoNext = 7778004i32;
                    };
                } else if (__value__ == (7777602i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7778792i32;
                } else if (__value__ == (7777660i32)) {
                    _gotoNext = 7778088i32;
                } else if (__value__ == (7777723i32)) {
                    _gotoNext = 7777774i32;
                } else if (__value__ == (7777774i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7777785i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7777944i32;
                    } else {
                        _gotoNext = 7777976i32;
                    };
                } else if (__value__ == (7777785i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7777892i32;
                    } else {
                        _gotoNext = 7778088i32;
                    };
                } else if (__value__ == (7777892i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7778792i32;
                } else if (__value__ == (7777944i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7778088i32;
                } else if (__value__ == (7777976i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7778088i32;
                } else if (__value__ == (7778004i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7778792i32;
                } else if (__value__ == (7778088i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7777503 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7777511 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7778161 = (0 : stdgo.GoInt);
                    _gotoNext = 7778157i32;
                } else if (__value__ == (7778157i32)) {
                    if ((_i_7778161 < (_s.length) : Bool)) {
                        _gotoNext = 7778185i32;
                    } else {
                        _gotoNext = 7778777i32;
                    };
                } else if (__value__ == (7778185i32)) {
                    _d_7778202 = _s[(_i_7778161 : stdgo.GoInt)];
                    _gotoNext = 7778214i32;
                } else if (__value__ == (7778214i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7778202 : Bool) && (_d_7778202 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7778225i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7778202 : Bool) && (_d_7778202 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7778269i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7778202 : Bool) && (_d_7778202 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7778318i32;
                    } else {
                        _gotoNext = 7778367i32;
                    };
                } else if (__value__ == (7778225i32)) {
                    _v_7778193 = (_d_7778202 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7778432i32;
                } else if (__value__ == (7778269i32)) {
                    _v_7778193 = ((_d_7778202 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7778432i32;
                } else if (__value__ == (7778318i32)) {
                    _v_7778193 = ((_d_7778202 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7778432i32;
                } else if (__value__ == (7778367i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7778792i32;
                } else if (__value__ == (7778432i32)) {
                    if (((_v_7778193 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7778450i32;
                    } else {
                        _gotoNext = 7778509i32;
                    };
                } else if (__value__ == (7778450i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7778792i32;
                } else if (__value__ == (7778509i32)) {
                    if ((_n >= _cutoff_7777503 : Bool)) {
                        _gotoNext = 7778524i32;
                    } else {
                        _gotoNext = 7778612i32;
                    };
                } else if (__value__ == (7778524i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7778792i32;
                } else if (__value__ == (7778612i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7778633 = (_n + (_v_7778193 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7778633 < _n : Bool) || (_n1_7778633 > _maxVal_7777511 : Bool) : Bool)) {
                        _gotoNext = 7778680i32;
                    } else {
                        _gotoNext = 7778765i32;
                    };
                } else if (__value__ == (7778680i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7778792i32;
                } else if (__value__ == (7778765i32)) {
                    _n = _n1_7778633;
                    _i_7778161++;
                    _gotoNext = 7778157i32;
                } else if (__value__ == (7778777i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7778792i32;
                } else if (__value__ == (7778792i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7777583 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
