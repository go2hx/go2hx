package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _maxVal_7593246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7593238:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7594368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7593937:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7593928:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7593896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7593318:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7593278i32;
                    } else {
                        _gotoNext = 7593318i32;
                    };
                } else if (__value__ == (7593278i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7593318i32;
                } else if (__value__ == (7593318i32)) {
                    _s0_7593318 = _s;
                    _gotoNext = 7593327i32;
                } else if (__value__ == (7593327i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7593337i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7593395i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7593458i32;
                    } else {
                        _gotoNext = 7593739i32;
                    };
                } else if (__value__ == (7593337i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594527i32;
                } else if (__value__ == (7593395i32)) {
                    _gotoNext = 7593823i32;
                } else if (__value__ == (7593458i32)) {
                    _gotoNext = 7593509i32;
                } else if (__value__ == (7593509i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7593520i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7593679i32;
                    } else {
                        _gotoNext = 7593711i32;
                    };
                } else if (__value__ == (7593520i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7593627i32;
                    } else {
                        _gotoNext = 7593823i32;
                    };
                } else if (__value__ == (7593627i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594527i32;
                } else if (__value__ == (7593679i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7593823i32;
                } else if (__value__ == (7593711i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7593823i32;
                } else if (__value__ == (7593739i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7594527i32;
                } else if (__value__ == (7593823i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7593238 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7593246 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7593896 = (0 : stdgo.GoInt);
                    _gotoNext = 7593892i32;
                } else if (__value__ == (7593892i32)) {
                    if ((_i_7593896 < (_s.length) : Bool)) {
                        _gotoNext = 7593920i32;
                    } else {
                        _gotoNext = 7594512i32;
                    };
                } else if (__value__ == (7593920i32)) {
                    _d_7593937 = _s[(_i_7593896 : stdgo.GoInt)];
                    _gotoNext = 7593949i32;
                } else if (__value__ == (7593949i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7593937 : Bool) && (_d_7593937 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7593960i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7593937 : Bool) && (_d_7593937 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7594004i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7593937 : Bool) && (_d_7593937 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7594053i32;
                    } else {
                        _gotoNext = 7594102i32;
                    };
                } else if (__value__ == (7593960i32)) {
                    _v_7593928 = (_d_7593937 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7594167i32;
                } else if (__value__ == (7594004i32)) {
                    _v_7593928 = ((_d_7593937 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7594167i32;
                } else if (__value__ == (7594053i32)) {
                    _v_7593928 = ((_d_7593937 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7594167i32;
                } else if (__value__ == (7594102i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594527i32;
                } else if (__value__ == (7594167i32)) {
                    if (((_v_7593928 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7594185i32;
                    } else {
                        _gotoNext = 7594244i32;
                    };
                } else if (__value__ == (7594185i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7594527i32;
                } else if (__value__ == (7594244i32)) {
                    if ((_n >= _cutoff_7593238 : Bool)) {
                        _gotoNext = 7594259i32;
                    } else {
                        _gotoNext = 7594347i32;
                    };
                } else if (__value__ == (7594259i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7594527i32;
                } else if (__value__ == (7594347i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7594368 = (_n + (_v_7593928 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7594368 < _n : Bool) || (_n1_7594368 > _maxVal_7593246 : Bool) : Bool)) {
                        _gotoNext = 7594415i32;
                    } else {
                        _gotoNext = 7594500i32;
                    };
                } else if (__value__ == (7594415i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7594527i32;
                } else if (__value__ == (7594500i32)) {
                    _n = _n1_7594368;
                    _i_7593896++;
                    _gotoNext = 7593892i32;
                } else if (__value__ == (7594512i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7594527i32;
                } else if (__value__ == (7594527i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7593318 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
