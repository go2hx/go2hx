package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _maxVal_7751867:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7751859:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7752989:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7752558:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7752549:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7752517:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7751939:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7751899i32;
                    } else {
                        _gotoNext = 7751939i32;
                    };
                } else if (__value__ == (7751899i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7751939i32;
                } else if (__value__ == (7751939i32)) {
                    _s0_7751939 = _s;
                    _gotoNext = 7751948i32;
                } else if (__value__ == (7751948i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7751958i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7752016i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7752079i32;
                    } else {
                        _gotoNext = 7752360i32;
                    };
                } else if (__value__ == (7751958i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7753148i32;
                } else if (__value__ == (7752016i32)) {
                    _gotoNext = 7752444i32;
                } else if (__value__ == (7752079i32)) {
                    _gotoNext = 7752130i32;
                } else if (__value__ == (7752130i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7752141i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7752300i32;
                    } else {
                        _gotoNext = 7752332i32;
                    };
                } else if (__value__ == (7752141i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7752248i32;
                    } else {
                        _gotoNext = 7752444i32;
                    };
                } else if (__value__ == (7752248i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7753148i32;
                } else if (__value__ == (7752300i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7752444i32;
                } else if (__value__ == (7752332i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7752444i32;
                } else if (__value__ == (7752360i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7753148i32;
                } else if (__value__ == (7752444i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7751859 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7751867 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7752517 = (0 : stdgo.GoInt);
                    _gotoNext = 7752513i32;
                } else if (__value__ == (7752513i32)) {
                    if ((_i_7752517 < (_s.length) : Bool)) {
                        _gotoNext = 7752541i32;
                    } else {
                        _gotoNext = 7753133i32;
                    };
                } else if (__value__ == (7752541i32)) {
                    _d_7752558 = _s[(_i_7752517 : stdgo.GoInt)];
                    _gotoNext = 7752570i32;
                } else if (__value__ == (7752570i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7752558 : Bool) && (_d_7752558 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7752581i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7752558 : Bool) && (_d_7752558 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7752625i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7752558 : Bool) && (_d_7752558 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7752674i32;
                    } else {
                        _gotoNext = 7752723i32;
                    };
                } else if (__value__ == (7752581i32)) {
                    _v_7752549 = (_d_7752558 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7752788i32;
                } else if (__value__ == (7752625i32)) {
                    _v_7752549 = ((_d_7752558 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7752788i32;
                } else if (__value__ == (7752674i32)) {
                    _v_7752549 = ((_d_7752558 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7752788i32;
                } else if (__value__ == (7752723i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7753148i32;
                } else if (__value__ == (7752788i32)) {
                    if (((_v_7752549 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7752806i32;
                    } else {
                        _gotoNext = 7752865i32;
                    };
                } else if (__value__ == (7752806i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7753148i32;
                } else if (__value__ == (7752865i32)) {
                    if ((_n >= _cutoff_7751859 : Bool)) {
                        _gotoNext = 7752880i32;
                    } else {
                        _gotoNext = 7752968i32;
                    };
                } else if (__value__ == (7752880i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7753148i32;
                } else if (__value__ == (7752968i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7752989 = (_n + (_v_7752549 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7752989 < _n : Bool) || (_n1_7752989 > _maxVal_7751867 : Bool) : Bool)) {
                        _gotoNext = 7753036i32;
                    } else {
                        _gotoNext = 7753121i32;
                    };
                } else if (__value__ == (7753036i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7753148i32;
                } else if (__value__ == (7753121i32)) {
                    _n = _n1_7752989;
                    _i_7752517++;
                    _gotoNext = 7752513i32;
                } else if (__value__ == (7753133i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7753148i32;
                } else if (__value__ == (7753148i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7751939 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
