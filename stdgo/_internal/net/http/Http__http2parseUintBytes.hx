package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _s0_7644122:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7644050:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7644042:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7645172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7644741:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7644732:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7644700:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7644082i32;
                    } else {
                        _gotoNext = 7644122i32;
                    };
                } else if (__value__ == (7644082i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7644122i32;
                } else if (__value__ == (7644122i32)) {
                    _s0_7644122 = _s;
                    _gotoNext = 7644131i32;
                } else if (__value__ == (7644131i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7644141i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7644199i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7644262i32;
                    } else {
                        _gotoNext = 7644543i32;
                    };
                } else if (__value__ == (7644141i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7645331i32;
                } else if (__value__ == (7644199i32)) {
                    _gotoNext = 7644627i32;
                } else if (__value__ == (7644262i32)) {
                    _gotoNext = 7644313i32;
                } else if (__value__ == (7644313i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7644324i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7644483i32;
                    } else {
                        _gotoNext = 7644515i32;
                    };
                } else if (__value__ == (7644324i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7644431i32;
                    } else {
                        _gotoNext = 7644627i32;
                    };
                } else if (__value__ == (7644431i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7645331i32;
                } else if (__value__ == (7644483i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7644627i32;
                } else if (__value__ == (7644515i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7644627i32;
                } else if (__value__ == (7644543i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7645331i32;
                } else if (__value__ == (7644627i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7644042 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7644050 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7644700 = (0 : stdgo.GoInt);
                    _gotoNext = 7644696i32;
                } else if (__value__ == (7644696i32)) {
                    if ((_i_7644700 < (_s.length) : Bool)) {
                        _gotoNext = 7644724i32;
                    } else {
                        _gotoNext = 7645316i32;
                    };
                } else if (__value__ == (7644724i32)) {
                    _d_7644741 = _s[(_i_7644700 : stdgo.GoInt)];
                    _gotoNext = 7644753i32;
                } else if (__value__ == (7644753i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7644741 : Bool) && (_d_7644741 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7644764i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7644741 : Bool) && (_d_7644741 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7644808i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7644741 : Bool) && (_d_7644741 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7644857i32;
                    } else {
                        _gotoNext = 7644906i32;
                    };
                } else if (__value__ == (7644764i32)) {
                    _v_7644732 = (_d_7644741 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7644971i32;
                } else if (__value__ == (7644808i32)) {
                    _v_7644732 = ((_d_7644741 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7644971i32;
                } else if (__value__ == (7644857i32)) {
                    _v_7644732 = ((_d_7644741 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7644971i32;
                } else if (__value__ == (7644906i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7645331i32;
                } else if (__value__ == (7644971i32)) {
                    if (((_v_7644732 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7644989i32;
                    } else {
                        _gotoNext = 7645048i32;
                    };
                } else if (__value__ == (7644989i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7645331i32;
                } else if (__value__ == (7645048i32)) {
                    if ((_n >= _cutoff_7644042 : Bool)) {
                        _gotoNext = 7645063i32;
                    } else {
                        _gotoNext = 7645151i32;
                    };
                } else if (__value__ == (7645063i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7645331i32;
                } else if (__value__ == (7645151i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7645172 = (_n + (_v_7644732 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7645172 < _n : Bool) || (_n1_7645172 > _maxVal_7644050 : Bool) : Bool)) {
                        _gotoNext = 7645219i32;
                    } else {
                        _gotoNext = 7645304i32;
                    };
                } else if (__value__ == (7645219i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7645331i32;
                } else if (__value__ == (7645304i32)) {
                    _n = _n1_7645172;
                    _i_7644700++;
                    _gotoNext = 7644696i32;
                } else if (__value__ == (7645316i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7645331i32;
                } else if (__value__ == (7645331i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7644122 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
