package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7822138:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7822106:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7821528:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7821456:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7821448:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7822578:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7822147:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7821488i32;
                    } else {
                        _gotoNext = 7821528i32;
                    };
                } else if (__value__ == (7821488i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7821528i32;
                } else if (__value__ == (7821528i32)) {
                    _s0_7821528 = _s;
                    _gotoNext = 7821537i32;
                } else if (__value__ == (7821537i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7821547i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7821605i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7821668i32;
                    } else {
                        _gotoNext = 7821949i32;
                    };
                } else if (__value__ == (7821547i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7822737i32;
                } else if (__value__ == (7821605i32)) {
                    _gotoNext = 7822033i32;
                } else if (__value__ == (7821668i32)) {
                    _gotoNext = 7821719i32;
                } else if (__value__ == (7821719i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7821730i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7821889i32;
                    } else {
                        _gotoNext = 7821921i32;
                    };
                } else if (__value__ == (7821730i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7821837i32;
                    } else {
                        _gotoNext = 7822033i32;
                    };
                } else if (__value__ == (7821837i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7822737i32;
                } else if (__value__ == (7821889i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7822033i32;
                } else if (__value__ == (7821921i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7822033i32;
                } else if (__value__ == (7821949i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7822737i32;
                } else if (__value__ == (7822033i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7821448 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7821456 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7822106 = (0 : stdgo.GoInt);
                    _gotoNext = 7822102i32;
                } else if (__value__ == (7822102i32)) {
                    if ((_i_7822106 < (_s.length) : Bool)) {
                        _gotoNext = 7822130i32;
                    } else {
                        _gotoNext = 7822722i32;
                    };
                } else if (__value__ == (7822130i32)) {
                    _d_7822147 = _s[(_i_7822106 : stdgo.GoInt)];
                    _gotoNext = 7822159i32;
                } else if (__value__ == (7822159i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7822147 : Bool) && (_d_7822147 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7822170i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7822147 : Bool) && (_d_7822147 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7822214i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7822147 : Bool) && (_d_7822147 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7822263i32;
                    } else {
                        _gotoNext = 7822312i32;
                    };
                } else if (__value__ == (7822170i32)) {
                    _v_7822138 = (_d_7822147 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7822377i32;
                } else if (__value__ == (7822214i32)) {
                    _v_7822138 = ((_d_7822147 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7822377i32;
                } else if (__value__ == (7822263i32)) {
                    _v_7822138 = ((_d_7822147 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7822377i32;
                } else if (__value__ == (7822312i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7822737i32;
                } else if (__value__ == (7822377i32)) {
                    if (((_v_7822138 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7822395i32;
                    } else {
                        _gotoNext = 7822454i32;
                    };
                } else if (__value__ == (7822395i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7822737i32;
                } else if (__value__ == (7822454i32)) {
                    if ((_n >= _cutoff_7821448 : Bool)) {
                        _gotoNext = 7822469i32;
                    } else {
                        _gotoNext = 7822557i32;
                    };
                } else if (__value__ == (7822469i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7822737i32;
                } else if (__value__ == (7822557i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7822578 = (_n + (_v_7822138 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7822578 < _n : Bool) || (_n1_7822578 > _maxVal_7821456 : Bool) : Bool)) {
                        _gotoNext = 7822625i32;
                    } else {
                        _gotoNext = 7822710i32;
                    };
                } else if (__value__ == (7822625i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7822737i32;
                } else if (__value__ == (7822710i32)) {
                    _n = _n1_7822578;
                    _i_7822106++;
                    _gotoNext = 7822102i32;
                } else if (__value__ == (7822722i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7822737i32;
                } else if (__value__ == (7822737i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7821528 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
