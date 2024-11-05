package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7833810:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7834940:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7834509:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7834500:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7834468:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7833890:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7833818:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7833850i32;
                    } else {
                        _gotoNext = 7833890i32;
                    };
                } else if (__value__ == (7833850i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7833890i32;
                } else if (__value__ == (7833890i32)) {
                    _s0_7833890 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7833899i32;
                } else if (__value__ == (7833899i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7833909i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7833967i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7834030i32;
                    } else {
                        _gotoNext = 7834311i32;
                    };
                } else if (__value__ == (7833909i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7835099i32;
                } else if (__value__ == (7833967i32)) {
                    _gotoNext = 7834395i32;
                } else if (__value__ == (7834030i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7834081i32;
                } else if (__value__ == (7834081i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7834092i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7834251i32;
                    } else {
                        _gotoNext = 7834283i32;
                    };
                } else if (__value__ == (7834092i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7834199i32;
                    } else {
                        _gotoNext = 7834395i32;
                    };
                } else if (__value__ == (7834199i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7835099i32;
                } else if (__value__ == (7834251i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7834395i32;
                } else if (__value__ == (7834283i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7834395i32;
                } else if (__value__ == (7834311i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7835099i32;
                } else if (__value__ == (7834395i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7833810 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7833818 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7834468 = (0 : stdgo.GoInt);
                    _gotoNext = 7834464i32;
                } else if (__value__ == (7834464i32)) {
                    if ((_i_7834468 < (_s.length) : Bool)) {
                        _gotoNext = 7834492i32;
                    } else {
                        _gotoNext = 7835084i32;
                    };
                } else if (__value__ == (7834492i32)) {
                    _d_7834509 = _s[(_i_7834468 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7834521i32;
                } else if (__value__ == (7834521i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7834509 : Bool) && (_d_7834509 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7834532i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7834509 : Bool) && (_d_7834509 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7834576i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7834509 : Bool) && (_d_7834509 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7834625i32;
                    } else {
                        _gotoNext = 7834674i32;
                    };
                } else if (__value__ == (7834532i32)) {
                    _v_7834500 = (_d_7834509 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7834739i32;
                } else if (__value__ == (7834576i32)) {
                    _v_7834500 = ((_d_7834509 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7834739i32;
                } else if (__value__ == (7834625i32)) {
                    _v_7834500 = ((_d_7834509 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7834739i32;
                } else if (__value__ == (7834674i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7835099i32;
                } else if (__value__ == (7834739i32)) {
                    if (((_v_7834500 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7834757i32;
                    } else {
                        _gotoNext = 7834816i32;
                    };
                } else if (__value__ == (7834757i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7835099i32;
                } else if (__value__ == (7834816i32)) {
                    if ((_n >= _cutoff_7833810 : Bool)) {
                        _gotoNext = 7834831i32;
                    } else {
                        _gotoNext = 7834919i32;
                    };
                } else if (__value__ == (7834831i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7835099i32;
                } else if (__value__ == (7834919i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7834940 = (_n + (_v_7834500 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7834940 < _n : Bool) || (_n1_7834940 > _maxVal_7833818 : Bool) : Bool)) {
                        _gotoNext = 7834987i32;
                    } else {
                        _gotoNext = 7835072i32;
                    };
                } else if (__value__ == (7834987i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7835099i32;
                } else if (__value__ == (7835072i32)) {
                    _n = _n1_7834940;
                    _i_7834468++;
                    _gotoNext = 7834464i32;
                } else if (__value__ == (7835084i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7835099i32;
                } else if (__value__ == (7835099i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7833890 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
