package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7628269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7627838:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7627829:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7627797:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7627219:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7627147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7627139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7627179i32;
                    } else {
                        _gotoNext = 7627219i32;
                    };
                } else if (__value__ == (7627179i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7627219i32;
                } else if (__value__ == (7627219i32)) {
                    _s0_7627219 = _s;
                    _gotoNext = 7627228i32;
                } else if (__value__ == (7627228i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7627238i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7627296i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7627359i32;
                    } else {
                        _gotoNext = 7627640i32;
                    };
                } else if (__value__ == (7627238i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7628428i32;
                } else if (__value__ == (7627296i32)) {
                    _gotoNext = 7627724i32;
                } else if (__value__ == (7627359i32)) {
                    _gotoNext = 7627410i32;
                } else if (__value__ == (7627410i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7627421i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7627580i32;
                    } else {
                        _gotoNext = 7627612i32;
                    };
                } else if (__value__ == (7627421i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7627528i32;
                    } else {
                        _gotoNext = 7627724i32;
                    };
                } else if (__value__ == (7627528i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7628428i32;
                } else if (__value__ == (7627580i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7627724i32;
                } else if (__value__ == (7627612i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7627724i32;
                } else if (__value__ == (7627640i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7628428i32;
                } else if (__value__ == (7627724i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7627139 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7627147 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7627797 = (0 : stdgo.GoInt);
                    _gotoNext = 7627793i32;
                } else if (__value__ == (7627793i32)) {
                    if ((_i_7627797 < (_s.length) : Bool)) {
                        _gotoNext = 7627821i32;
                    } else {
                        _gotoNext = 7628413i32;
                    };
                } else if (__value__ == (7627821i32)) {
                    _d_7627838 = _s[(_i_7627797 : stdgo.GoInt)];
                    _gotoNext = 7627850i32;
                } else if (__value__ == (7627850i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7627838 : Bool) && (_d_7627838 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7627861i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7627838 : Bool) && (_d_7627838 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7627905i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7627838 : Bool) && (_d_7627838 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7627954i32;
                    } else {
                        _gotoNext = 7628003i32;
                    };
                } else if (__value__ == (7627861i32)) {
                    _v_7627829 = (_d_7627838 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7628068i32;
                } else if (__value__ == (7627905i32)) {
                    _v_7627829 = ((_d_7627838 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7628068i32;
                } else if (__value__ == (7627954i32)) {
                    _v_7627829 = ((_d_7627838 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7628068i32;
                } else if (__value__ == (7628003i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7628428i32;
                } else if (__value__ == (7628068i32)) {
                    if (((_v_7627829 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7628086i32;
                    } else {
                        _gotoNext = 7628145i32;
                    };
                } else if (__value__ == (7628086i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7628428i32;
                } else if (__value__ == (7628145i32)) {
                    if ((_n >= _cutoff_7627139 : Bool)) {
                        _gotoNext = 7628160i32;
                    } else {
                        _gotoNext = 7628248i32;
                    };
                } else if (__value__ == (7628160i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7628428i32;
                } else if (__value__ == (7628248i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7628269 = (_n + (_v_7627829 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7628269 < _n : Bool) || (_n1_7628269 > _maxVal_7627147 : Bool) : Bool)) {
                        _gotoNext = 7628316i32;
                    } else {
                        _gotoNext = 7628401i32;
                    };
                } else if (__value__ == (7628316i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7628428i32;
                } else if (__value__ == (7628401i32)) {
                    _n = _n1_7628269;
                    _i_7627797++;
                    _gotoNext = 7627793i32;
                } else if (__value__ == (7628413i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7628428i32;
                } else if (__value__ == (7628428i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7627219 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
