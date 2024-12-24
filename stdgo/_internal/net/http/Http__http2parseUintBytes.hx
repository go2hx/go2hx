package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7628194:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7628162:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7627584:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7627512:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7627504:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7628634:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7628203:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7627544i32;
                    } else {
                        _gotoNext = 7627584i32;
                    };
                } else if (__value__ == (7627544i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7627584i32;
                } else if (__value__ == (7627584i32)) {
                    _s0_7627584 = _s;
                    _gotoNext = 7627593i32;
                } else if (__value__ == (7627593i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7627603i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7627661i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7627724i32;
                    } else {
                        _gotoNext = 7628005i32;
                    };
                } else if (__value__ == (7627603i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7628793i32;
                } else if (__value__ == (7627661i32)) {
                    _gotoNext = 7628089i32;
                } else if (__value__ == (7627724i32)) {
                    _gotoNext = 7627775i32;
                } else if (__value__ == (7627775i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7627786i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7627945i32;
                    } else {
                        _gotoNext = 7627977i32;
                    };
                } else if (__value__ == (7627786i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7627893i32;
                    } else {
                        _gotoNext = 7628089i32;
                    };
                } else if (__value__ == (7627893i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7628793i32;
                } else if (__value__ == (7627945i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7628089i32;
                } else if (__value__ == (7627977i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7628089i32;
                } else if (__value__ == (7628005i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7628793i32;
                } else if (__value__ == (7628089i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7627504 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7627512 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7628162 = (0 : stdgo.GoInt);
                    _gotoNext = 7628158i32;
                } else if (__value__ == (7628158i32)) {
                    if ((_i_7628162 < (_s.length) : Bool)) {
                        _gotoNext = 7628186i32;
                    } else {
                        _gotoNext = 7628778i32;
                    };
                } else if (__value__ == (7628186i32)) {
                    _d_7628203 = _s[(_i_7628162 : stdgo.GoInt)];
                    _gotoNext = 7628215i32;
                } else if (__value__ == (7628215i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7628203 : Bool) && (_d_7628203 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7628226i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7628203 : Bool) && (_d_7628203 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7628270i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7628203 : Bool) && (_d_7628203 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7628319i32;
                    } else {
                        _gotoNext = 7628368i32;
                    };
                } else if (__value__ == (7628226i32)) {
                    _v_7628194 = (_d_7628203 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7628433i32;
                } else if (__value__ == (7628270i32)) {
                    _v_7628194 = ((_d_7628203 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7628433i32;
                } else if (__value__ == (7628319i32)) {
                    _v_7628194 = ((_d_7628203 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7628433i32;
                } else if (__value__ == (7628368i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7628793i32;
                } else if (__value__ == (7628433i32)) {
                    if (((_v_7628194 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7628451i32;
                    } else {
                        _gotoNext = 7628510i32;
                    };
                } else if (__value__ == (7628451i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7628793i32;
                } else if (__value__ == (7628510i32)) {
                    if ((_n >= _cutoff_7627504 : Bool)) {
                        _gotoNext = 7628525i32;
                    } else {
                        _gotoNext = 7628613i32;
                    };
                } else if (__value__ == (7628525i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7628793i32;
                } else if (__value__ == (7628613i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7628634 = (_n + (_v_7628194 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7628634 < _n : Bool) || (_n1_7628634 > _maxVal_7627512 : Bool) : Bool)) {
                        _gotoNext = 7628681i32;
                    } else {
                        _gotoNext = 7628766i32;
                    };
                } else if (__value__ == (7628681i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7628793i32;
                } else if (__value__ == (7628766i32)) {
                    _n = _n1_7628634;
                    _i_7628162++;
                    _gotoNext = 7628158i32;
                } else if (__value__ == (7628778i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7628793i32;
                } else if (__value__ == (7628793i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7627584 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
