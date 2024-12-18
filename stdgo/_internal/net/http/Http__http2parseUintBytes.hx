package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7683295:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7683286:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7683254:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7682676:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7682604:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7682596:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7683726:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7682636i32;
                    } else {
                        _gotoNext = 7682676i32;
                    };
                } else if (__value__ == (7682636i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7682676i32;
                } else if (__value__ == (7682676i32)) {
                    _s0_7682676 = _s;
                    _gotoNext = 7682685i32;
                } else if (__value__ == (7682685i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7682695i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7682753i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7682816i32;
                    } else {
                        _gotoNext = 7683097i32;
                    };
                } else if (__value__ == (7682695i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7683885i32;
                } else if (__value__ == (7682753i32)) {
                    _gotoNext = 7683181i32;
                } else if (__value__ == (7682816i32)) {
                    _gotoNext = 7682867i32;
                } else if (__value__ == (7682867i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7682878i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7683037i32;
                    } else {
                        _gotoNext = 7683069i32;
                    };
                } else if (__value__ == (7682878i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7682985i32;
                    } else {
                        _gotoNext = 7683181i32;
                    };
                } else if (__value__ == (7682985i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7683885i32;
                } else if (__value__ == (7683037i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7683181i32;
                } else if (__value__ == (7683069i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7683181i32;
                } else if (__value__ == (7683097i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7683885i32;
                } else if (__value__ == (7683181i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7682596 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7682604 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7683254 = (0 : stdgo.GoInt);
                    _gotoNext = 7683250i32;
                } else if (__value__ == (7683250i32)) {
                    if ((_i_7683254 < (_s.length) : Bool)) {
                        _gotoNext = 7683278i32;
                    } else {
                        _gotoNext = 7683870i32;
                    };
                } else if (__value__ == (7683278i32)) {
                    _d_7683295 = _s[(_i_7683254 : stdgo.GoInt)];
                    _gotoNext = 7683307i32;
                } else if (__value__ == (7683307i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7683295 : Bool) && (_d_7683295 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7683318i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7683295 : Bool) && (_d_7683295 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7683362i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7683295 : Bool) && (_d_7683295 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7683411i32;
                    } else {
                        _gotoNext = 7683460i32;
                    };
                } else if (__value__ == (7683318i32)) {
                    _v_7683286 = (_d_7683295 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7683525i32;
                } else if (__value__ == (7683362i32)) {
                    _v_7683286 = ((_d_7683295 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7683525i32;
                } else if (__value__ == (7683411i32)) {
                    _v_7683286 = ((_d_7683295 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7683525i32;
                } else if (__value__ == (7683460i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7683885i32;
                } else if (__value__ == (7683525i32)) {
                    if (((_v_7683286 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7683543i32;
                    } else {
                        _gotoNext = 7683602i32;
                    };
                } else if (__value__ == (7683543i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7683885i32;
                } else if (__value__ == (7683602i32)) {
                    if ((_n >= _cutoff_7682596 : Bool)) {
                        _gotoNext = 7683617i32;
                    } else {
                        _gotoNext = 7683705i32;
                    };
                } else if (__value__ == (7683617i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7683885i32;
                } else if (__value__ == (7683705i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7683726 = (_n + (_v_7683286 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7683726 < _n : Bool) || (_n1_7683726 > _maxVal_7682604 : Bool) : Bool)) {
                        _gotoNext = 7683773i32;
                    } else {
                        _gotoNext = 7683858i32;
                    };
                } else if (__value__ == (7683773i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7683885i32;
                } else if (__value__ == (7683858i32)) {
                    _n = _n1_7683726;
                    _i_7683254++;
                    _gotoNext = 7683250i32;
                } else if (__value__ == (7683870i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7683885i32;
                } else if (__value__ == (7683885i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7682676 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
