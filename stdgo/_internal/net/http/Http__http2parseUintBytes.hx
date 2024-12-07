package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7611763:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7611185:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7611113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7611105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7612235:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7611804:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7611795:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7611145i32;
                    } else {
                        _gotoNext = 7611185i32;
                    };
                } else if (__value__ == (7611145i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7611185i32;
                } else if (__value__ == (7611185i32)) {
                    _s0_7611185 = _s;
                    _gotoNext = 7611194i32;
                } else if (__value__ == (7611194i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7611204i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7611262i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7611325i32;
                    } else {
                        _gotoNext = 7611606i32;
                    };
                } else if (__value__ == (7611204i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7612394i32;
                } else if (__value__ == (7611262i32)) {
                    _gotoNext = 7611690i32;
                } else if (__value__ == (7611325i32)) {
                    _gotoNext = 7611376i32;
                } else if (__value__ == (7611376i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7611387i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7611546i32;
                    } else {
                        _gotoNext = 7611578i32;
                    };
                } else if (__value__ == (7611387i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7611494i32;
                    } else {
                        _gotoNext = 7611690i32;
                    };
                } else if (__value__ == (7611494i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7612394i32;
                } else if (__value__ == (7611546i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7611690i32;
                } else if (__value__ == (7611578i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7611690i32;
                } else if (__value__ == (7611606i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7612394i32;
                } else if (__value__ == (7611690i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7611105 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7611113 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7611763 = (0 : stdgo.GoInt);
                    _gotoNext = 7611759i32;
                } else if (__value__ == (7611759i32)) {
                    if ((_i_7611763 < (_s.length) : Bool)) {
                        _gotoNext = 7611787i32;
                    } else {
                        _gotoNext = 7612379i32;
                    };
                } else if (__value__ == (7611787i32)) {
                    _d_7611804 = _s[(_i_7611763 : stdgo.GoInt)];
                    _gotoNext = 7611816i32;
                } else if (__value__ == (7611816i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7611804 : Bool) && (_d_7611804 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7611827i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7611804 : Bool) && (_d_7611804 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7611871i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7611804 : Bool) && (_d_7611804 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7611920i32;
                    } else {
                        _gotoNext = 7611969i32;
                    };
                } else if (__value__ == (7611827i32)) {
                    _v_7611795 = (_d_7611804 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7612034i32;
                } else if (__value__ == (7611871i32)) {
                    _v_7611795 = ((_d_7611804 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7612034i32;
                } else if (__value__ == (7611920i32)) {
                    _v_7611795 = ((_d_7611804 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7612034i32;
                } else if (__value__ == (7611969i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7612394i32;
                } else if (__value__ == (7612034i32)) {
                    if (((_v_7611795 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7612052i32;
                    } else {
                        _gotoNext = 7612111i32;
                    };
                } else if (__value__ == (7612052i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7612394i32;
                } else if (__value__ == (7612111i32)) {
                    if ((_n >= _cutoff_7611105 : Bool)) {
                        _gotoNext = 7612126i32;
                    } else {
                        _gotoNext = 7612214i32;
                    };
                } else if (__value__ == (7612126i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7612394i32;
                } else if (__value__ == (7612214i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7612235 = (_n + (_v_7611795 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7612235 < _n : Bool) || (_n1_7612235 > _maxVal_7611113 : Bool) : Bool)) {
                        _gotoNext = 7612282i32;
                    } else {
                        _gotoNext = 7612367i32;
                    };
                } else if (__value__ == (7612282i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7612394i32;
                } else if (__value__ == (7612367i32)) {
                    _n = _n1_7612235;
                    _i_7611763++;
                    _gotoNext = 7611759i32;
                } else if (__value__ == (7612379i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7612394i32;
                } else if (__value__ == (7612394i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7611185 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
