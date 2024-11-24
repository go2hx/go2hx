package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _i_7676064:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7675486:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7675414:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7675406:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7676536:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7676105:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7676096:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7675446i32;
                    } else {
                        _gotoNext = 7675486i32;
                    };
                } else if (__value__ == (7675446i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7675486i32;
                } else if (__value__ == (7675486i32)) {
                    _s0_7675486 = _s;
                    _gotoNext = 7675495i32;
                } else if (__value__ == (7675495i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7675505i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7675563i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7675626i32;
                    } else {
                        _gotoNext = 7675907i32;
                    };
                } else if (__value__ == (7675505i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7676695i32;
                } else if (__value__ == (7675563i32)) {
                    _gotoNext = 7675991i32;
                } else if (__value__ == (7675626i32)) {
                    _gotoNext = 7675677i32;
                } else if (__value__ == (7675677i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7675688i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7675847i32;
                    } else {
                        _gotoNext = 7675879i32;
                    };
                } else if (__value__ == (7675688i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7675795i32;
                    } else {
                        _gotoNext = 7675991i32;
                    };
                } else if (__value__ == (7675795i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7676695i32;
                } else if (__value__ == (7675847i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7675991i32;
                } else if (__value__ == (7675879i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7675991i32;
                } else if (__value__ == (7675907i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7676695i32;
                } else if (__value__ == (7675991i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7675406 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7675414 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7676064 = (0 : stdgo.GoInt);
                    _gotoNext = 7676060i32;
                } else if (__value__ == (7676060i32)) {
                    if ((_i_7676064 < (_s.length) : Bool)) {
                        _gotoNext = 7676088i32;
                    } else {
                        _gotoNext = 7676680i32;
                    };
                } else if (__value__ == (7676088i32)) {
                    _d_7676105 = _s[(_i_7676064 : stdgo.GoInt)];
                    _gotoNext = 7676117i32;
                } else if (__value__ == (7676117i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7676105 : Bool) && (_d_7676105 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7676128i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7676105 : Bool) && (_d_7676105 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7676172i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7676105 : Bool) && (_d_7676105 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7676221i32;
                    } else {
                        _gotoNext = 7676270i32;
                    };
                } else if (__value__ == (7676128i32)) {
                    _v_7676096 = (_d_7676105 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7676335i32;
                } else if (__value__ == (7676172i32)) {
                    _v_7676096 = ((_d_7676105 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7676335i32;
                } else if (__value__ == (7676221i32)) {
                    _v_7676096 = ((_d_7676105 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7676335i32;
                } else if (__value__ == (7676270i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7676695i32;
                } else if (__value__ == (7676335i32)) {
                    if (((_v_7676096 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7676353i32;
                    } else {
                        _gotoNext = 7676412i32;
                    };
                } else if (__value__ == (7676353i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7676695i32;
                } else if (__value__ == (7676412i32)) {
                    if ((_n >= _cutoff_7675406 : Bool)) {
                        _gotoNext = 7676427i32;
                    } else {
                        _gotoNext = 7676515i32;
                    };
                } else if (__value__ == (7676427i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7676695i32;
                } else if (__value__ == (7676515i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7676536 = (_n + (_v_7676096 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7676536 < _n : Bool) || (_n1_7676536 > _maxVal_7675414 : Bool) : Bool)) {
                        _gotoNext = 7676583i32;
                    } else {
                        _gotoNext = 7676668i32;
                    };
                } else if (__value__ == (7676583i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7676695i32;
                } else if (__value__ == (7676668i32)) {
                    _n = _n1_7676536;
                    _i_7676064++;
                    _gotoNext = 7676060i32;
                } else if (__value__ == (7676680i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7676695i32;
                } else if (__value__ == (7676695i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7675486 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
