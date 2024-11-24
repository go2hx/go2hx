package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7693148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7692717:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7692708:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7692676:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7692098:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7692026:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7692018:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7692058i32;
                    } else {
                        _gotoNext = 7692098i32;
                    };
                } else if (__value__ == (7692058i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7692098i32;
                } else if (__value__ == (7692098i32)) {
                    _s0_7692098 = _s;
                    _gotoNext = 7692107i32;
                } else if (__value__ == (7692107i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7692117i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7692175i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7692238i32;
                    } else {
                        _gotoNext = 7692519i32;
                    };
                } else if (__value__ == (7692117i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7693307i32;
                } else if (__value__ == (7692175i32)) {
                    _gotoNext = 7692603i32;
                } else if (__value__ == (7692238i32)) {
                    _gotoNext = 7692289i32;
                } else if (__value__ == (7692289i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7692300i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7692459i32;
                    } else {
                        _gotoNext = 7692491i32;
                    };
                } else if (__value__ == (7692300i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7692407i32;
                    } else {
                        _gotoNext = 7692603i32;
                    };
                } else if (__value__ == (7692407i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7693307i32;
                } else if (__value__ == (7692459i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7692603i32;
                } else if (__value__ == (7692491i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7692603i32;
                } else if (__value__ == (7692519i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7693307i32;
                } else if (__value__ == (7692603i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7692018 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7692026 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7692676 = (0 : stdgo.GoInt);
                    _gotoNext = 7692672i32;
                } else if (__value__ == (7692672i32)) {
                    if ((_i_7692676 < (_s.length) : Bool)) {
                        _gotoNext = 7692700i32;
                    } else {
                        _gotoNext = 7693292i32;
                    };
                } else if (__value__ == (7692700i32)) {
                    _d_7692717 = _s[(_i_7692676 : stdgo.GoInt)];
                    _gotoNext = 7692729i32;
                } else if (__value__ == (7692729i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7692717 : Bool) && (_d_7692717 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7692740i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7692717 : Bool) && (_d_7692717 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7692784i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7692717 : Bool) && (_d_7692717 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7692833i32;
                    } else {
                        _gotoNext = 7692882i32;
                    };
                } else if (__value__ == (7692740i32)) {
                    _v_7692708 = (_d_7692717 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7692947i32;
                } else if (__value__ == (7692784i32)) {
                    _v_7692708 = ((_d_7692717 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7692947i32;
                } else if (__value__ == (7692833i32)) {
                    _v_7692708 = ((_d_7692717 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7692947i32;
                } else if (__value__ == (7692882i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7693307i32;
                } else if (__value__ == (7692947i32)) {
                    if (((_v_7692708 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7692965i32;
                    } else {
                        _gotoNext = 7693024i32;
                    };
                } else if (__value__ == (7692965i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7693307i32;
                } else if (__value__ == (7693024i32)) {
                    if ((_n >= _cutoff_7692018 : Bool)) {
                        _gotoNext = 7693039i32;
                    } else {
                        _gotoNext = 7693127i32;
                    };
                } else if (__value__ == (7693039i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7693307i32;
                } else if (__value__ == (7693127i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7693148 = (_n + (_v_7692708 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7693148 < _n : Bool) || (_n1_7693148 > _maxVal_7692026 : Bool) : Bool)) {
                        _gotoNext = 7693195i32;
                    } else {
                        _gotoNext = 7693280i32;
                    };
                } else if (__value__ == (7693195i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7693307i32;
                } else if (__value__ == (7693280i32)) {
                    _n = _n1_7693148;
                    _i_7692676++;
                    _gotoNext = 7692672i32;
                } else if (__value__ == (7693292i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7693307i32;
                } else if (__value__ == (7693307i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7692098 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
