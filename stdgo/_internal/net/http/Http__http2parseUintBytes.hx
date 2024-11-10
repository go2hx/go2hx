package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7617086:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7616508:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7616436:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7616428:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7617558:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7617127:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7617118:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7616468i32;
                    } else {
                        _gotoNext = 7616508i32;
                    };
                } else if (__value__ == (7616468i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7616508i32;
                } else if (__value__ == (7616508i32)) {
                    _s0_7616508 = _s;
                    _gotoNext = 7616517i32;
                } else if (__value__ == (7616517i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7616527i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7616585i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7616648i32;
                    } else {
                        _gotoNext = 7616929i32;
                    };
                } else if (__value__ == (7616527i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7617717i32;
                } else if (__value__ == (7616585i32)) {
                    _gotoNext = 7617013i32;
                } else if (__value__ == (7616648i32)) {
                    _gotoNext = 7616699i32;
                } else if (__value__ == (7616699i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7616710i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7616869i32;
                    } else {
                        _gotoNext = 7616901i32;
                    };
                } else if (__value__ == (7616710i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7616817i32;
                    } else {
                        _gotoNext = 7617013i32;
                    };
                } else if (__value__ == (7616817i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7617717i32;
                } else if (__value__ == (7616869i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7617013i32;
                } else if (__value__ == (7616901i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7617013i32;
                } else if (__value__ == (7616929i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7617717i32;
                } else if (__value__ == (7617013i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7616428 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7616436 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7617086 = (0 : stdgo.GoInt);
                    _gotoNext = 7617082i32;
                } else if (__value__ == (7617082i32)) {
                    if ((_i_7617086 < (_s.length) : Bool)) {
                        _gotoNext = 7617110i32;
                    } else {
                        _gotoNext = 7617702i32;
                    };
                } else if (__value__ == (7617110i32)) {
                    _d_7617127 = _s[(_i_7617086 : stdgo.GoInt)];
                    _gotoNext = 7617139i32;
                } else if (__value__ == (7617139i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7617127 : Bool) && (_d_7617127 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7617150i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7617127 : Bool) && (_d_7617127 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7617194i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7617127 : Bool) && (_d_7617127 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7617243i32;
                    } else {
                        _gotoNext = 7617292i32;
                    };
                } else if (__value__ == (7617150i32)) {
                    _v_7617118 = (_d_7617127 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7617357i32;
                } else if (__value__ == (7617194i32)) {
                    _v_7617118 = ((_d_7617127 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7617357i32;
                } else if (__value__ == (7617243i32)) {
                    _v_7617118 = ((_d_7617127 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7617357i32;
                } else if (__value__ == (7617292i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7617717i32;
                } else if (__value__ == (7617357i32)) {
                    if (((_v_7617118 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7617375i32;
                    } else {
                        _gotoNext = 7617434i32;
                    };
                } else if (__value__ == (7617375i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7617717i32;
                } else if (__value__ == (7617434i32)) {
                    if ((_n >= _cutoff_7616428 : Bool)) {
                        _gotoNext = 7617449i32;
                    } else {
                        _gotoNext = 7617537i32;
                    };
                } else if (__value__ == (7617449i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7617717i32;
                } else if (__value__ == (7617537i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7617558 = (_n + (_v_7617118 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7617558 < _n : Bool) || (_n1_7617558 > _maxVal_7616436 : Bool) : Bool)) {
                        _gotoNext = 7617605i32;
                    } else {
                        _gotoNext = 7617690i32;
                    };
                } else if (__value__ == (7617605i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7617717i32;
                } else if (__value__ == (7617690i32)) {
                    _n = _n1_7617558;
                    _i_7617086++;
                    _gotoNext = 7617082i32;
                } else if (__value__ == (7617702i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7617717i32;
                } else if (__value__ == (7617717i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7616508 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
