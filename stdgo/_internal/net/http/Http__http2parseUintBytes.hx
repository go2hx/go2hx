package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7626603:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7627733:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7627302:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7627293:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7627261:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7626683:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7626611:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7626643i32;
                    } else {
                        _gotoNext = 7626683i32;
                    };
                } else if (__value__ == (7626643i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7626683i32;
                } else if (__value__ == (7626683i32)) {
                    _s0_7626683 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7626692i32;
                } else if (__value__ == (7626692i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7626702i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7626760i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7626823i32;
                    } else {
                        _gotoNext = 7627104i32;
                    };
                } else if (__value__ == (7626702i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7627892i32;
                } else if (__value__ == (7626760i32)) {
                    _gotoNext = 7627188i32;
                } else if (__value__ == (7626823i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7626874i32;
                } else if (__value__ == (7626874i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7626885i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7627044i32;
                    } else {
                        _gotoNext = 7627076i32;
                    };
                } else if (__value__ == (7626885i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7626992i32;
                    } else {
                        _gotoNext = 7627188i32;
                    };
                } else if (__value__ == (7626992i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7627892i32;
                } else if (__value__ == (7627044i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7627188i32;
                } else if (__value__ == (7627076i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7627188i32;
                } else if (__value__ == (7627104i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7627892i32;
                } else if (__value__ == (7627188i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7626603 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7626611 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7627261 = (0 : stdgo.GoInt);
                    _gotoNext = 7627257i32;
                } else if (__value__ == (7627257i32)) {
                    if ((_i_7627261 < (_s.length) : Bool)) {
                        _gotoNext = 7627285i32;
                    } else {
                        _gotoNext = 7627877i32;
                    };
                } else if (__value__ == (7627285i32)) {
                    _d_7627302 = _s[(_i_7627261 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7627314i32;
                } else if (__value__ == (7627314i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7627302 : Bool) && (_d_7627302 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7627325i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7627302 : Bool) && (_d_7627302 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7627369i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7627302 : Bool) && (_d_7627302 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7627418i32;
                    } else {
                        _gotoNext = 7627467i32;
                    };
                } else if (__value__ == (7627325i32)) {
                    _v_7627293 = (_d_7627302 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7627532i32;
                } else if (__value__ == (7627369i32)) {
                    _v_7627293 = ((_d_7627302 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7627532i32;
                } else if (__value__ == (7627418i32)) {
                    _v_7627293 = ((_d_7627302 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7627532i32;
                } else if (__value__ == (7627467i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7627892i32;
                } else if (__value__ == (7627532i32)) {
                    if (((_v_7627293 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7627550i32;
                    } else {
                        _gotoNext = 7627609i32;
                    };
                } else if (__value__ == (7627550i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7627892i32;
                } else if (__value__ == (7627609i32)) {
                    if ((_n >= _cutoff_7626603 : Bool)) {
                        _gotoNext = 7627624i32;
                    } else {
                        _gotoNext = 7627712i32;
                    };
                } else if (__value__ == (7627624i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7627892i32;
                } else if (__value__ == (7627712i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7627733 = (_n + (_v_7627293 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7627733 < _n : Bool) || (_n1_7627733 > _maxVal_7626611 : Bool) : Bool)) {
                        _gotoNext = 7627780i32;
                    } else {
                        _gotoNext = 7627865i32;
                    };
                } else if (__value__ == (7627780i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7627892i32;
                } else if (__value__ == (7627865i32)) {
                    _n = _n1_7627733;
                    _i_7627261++;
                    _gotoNext = 7627257i32;
                } else if (__value__ == (7627877i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7627892i32;
                } else if (__value__ == (7627892i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7626683 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
