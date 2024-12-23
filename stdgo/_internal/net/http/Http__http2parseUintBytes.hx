package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7816366:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7815935:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7815926:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7815894:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7815316:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7815244:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7815236:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7815276i32;
                    } else {
                        _gotoNext = 7815316i32;
                    };
                } else if (__value__ == (7815276i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7815316i32;
                } else if (__value__ == (7815316i32)) {
                    _s0_7815316 = _s;
                    _gotoNext = 7815325i32;
                } else if (__value__ == (7815325i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7815335i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7815393i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7815456i32;
                    } else {
                        _gotoNext = 7815737i32;
                    };
                } else if (__value__ == (7815335i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7816525i32;
                } else if (__value__ == (7815393i32)) {
                    _gotoNext = 7815821i32;
                } else if (__value__ == (7815456i32)) {
                    _gotoNext = 7815507i32;
                } else if (__value__ == (7815507i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7815518i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7815677i32;
                    } else {
                        _gotoNext = 7815709i32;
                    };
                } else if (__value__ == (7815518i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7815625i32;
                    } else {
                        _gotoNext = 7815821i32;
                    };
                } else if (__value__ == (7815625i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7816525i32;
                } else if (__value__ == (7815677i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7815821i32;
                } else if (__value__ == (7815709i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7815821i32;
                } else if (__value__ == (7815737i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7816525i32;
                } else if (__value__ == (7815821i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7815236 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7815244 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7815894 = (0 : stdgo.GoInt);
                    _gotoNext = 7815890i32;
                } else if (__value__ == (7815890i32)) {
                    if ((_i_7815894 < (_s.length) : Bool)) {
                        _gotoNext = 7815918i32;
                    } else {
                        _gotoNext = 7816510i32;
                    };
                } else if (__value__ == (7815918i32)) {
                    _d_7815935 = _s[(_i_7815894 : stdgo.GoInt)];
                    _gotoNext = 7815947i32;
                } else if (__value__ == (7815947i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7815935 : Bool) && (_d_7815935 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7815958i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7815935 : Bool) && (_d_7815935 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7816002i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7815935 : Bool) && (_d_7815935 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7816051i32;
                    } else {
                        _gotoNext = 7816100i32;
                    };
                } else if (__value__ == (7815958i32)) {
                    _v_7815926 = (_d_7815935 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7816165i32;
                } else if (__value__ == (7816002i32)) {
                    _v_7815926 = ((_d_7815935 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7816165i32;
                } else if (__value__ == (7816051i32)) {
                    _v_7815926 = ((_d_7815935 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7816165i32;
                } else if (__value__ == (7816100i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7816525i32;
                } else if (__value__ == (7816165i32)) {
                    if (((_v_7815926 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7816183i32;
                    } else {
                        _gotoNext = 7816242i32;
                    };
                } else if (__value__ == (7816183i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7816525i32;
                } else if (__value__ == (7816242i32)) {
                    if ((_n >= _cutoff_7815236 : Bool)) {
                        _gotoNext = 7816257i32;
                    } else {
                        _gotoNext = 7816345i32;
                    };
                } else if (__value__ == (7816257i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7816525i32;
                } else if (__value__ == (7816345i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7816366 = (_n + (_v_7815926 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7816366 < _n : Bool) || (_n1_7816366 > _maxVal_7815244 : Bool) : Bool)) {
                        _gotoNext = 7816413i32;
                    } else {
                        _gotoNext = 7816498i32;
                    };
                } else if (__value__ == (7816413i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7816525i32;
                } else if (__value__ == (7816498i32)) {
                    _n = _n1_7816366;
                    _i_7815894++;
                    _gotoNext = 7815890i32;
                } else if (__value__ == (7816510i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7816525i32;
                } else if (__value__ == (7816525i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7815316 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
