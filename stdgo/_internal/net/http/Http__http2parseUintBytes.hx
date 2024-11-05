package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7976474:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7976043:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7976034:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7976002:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7975424:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7975352:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7975344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7975384i32;
                    } else {
                        _gotoNext = 7975424i32;
                    };
                } else if (__value__ == (7975384i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7975424i32;
                } else if (__value__ == (7975424i32)) {
                    _s0_7975424 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7975433i32;
                } else if (__value__ == (7975433i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7975443i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7975501i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7975564i32;
                    } else {
                        _gotoNext = 7975845i32;
                    };
                } else if (__value__ == (7975443i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7976633i32;
                } else if (__value__ == (7975501i32)) {
                    _gotoNext = 7975929i32;
                } else if (__value__ == (7975564i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7975615i32;
                } else if (__value__ == (7975615i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7975626i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7975785i32;
                    } else {
                        _gotoNext = 7975817i32;
                    };
                } else if (__value__ == (7975626i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7975733i32;
                    } else {
                        _gotoNext = 7975929i32;
                    };
                } else if (__value__ == (7975733i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7976633i32;
                } else if (__value__ == (7975785i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7975929i32;
                } else if (__value__ == (7975817i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7975929i32;
                } else if (__value__ == (7975845i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7976633i32;
                } else if (__value__ == (7975929i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7975344 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7975352 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7976002 = (0 : stdgo.GoInt);
                    _gotoNext = 7975998i32;
                } else if (__value__ == (7975998i32)) {
                    if ((_i_7976002 < (_s.length) : Bool)) {
                        _gotoNext = 7976026i32;
                    } else {
                        _gotoNext = 7976618i32;
                    };
                } else if (__value__ == (7976026i32)) {
                    _d_7976043 = _s[(_i_7976002 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7976055i32;
                } else if (__value__ == (7976055i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7976043 : Bool) && (_d_7976043 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7976066i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7976043 : Bool) && (_d_7976043 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7976110i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7976043 : Bool) && (_d_7976043 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7976159i32;
                    } else {
                        _gotoNext = 7976208i32;
                    };
                } else if (__value__ == (7976066i32)) {
                    _v_7976034 = (_d_7976043 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7976273i32;
                } else if (__value__ == (7976110i32)) {
                    _v_7976034 = ((_d_7976043 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7976273i32;
                } else if (__value__ == (7976159i32)) {
                    _v_7976034 = ((_d_7976043 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7976273i32;
                } else if (__value__ == (7976208i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7976633i32;
                } else if (__value__ == (7976273i32)) {
                    if (((_v_7976034 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7976291i32;
                    } else {
                        _gotoNext = 7976350i32;
                    };
                } else if (__value__ == (7976291i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7976633i32;
                } else if (__value__ == (7976350i32)) {
                    if ((_n >= _cutoff_7975344 : Bool)) {
                        _gotoNext = 7976365i32;
                    } else {
                        _gotoNext = 7976453i32;
                    };
                } else if (__value__ == (7976365i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7976633i32;
                } else if (__value__ == (7976453i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7976474 = (_n + (_v_7976034 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7976474 < _n : Bool) || (_n1_7976474 > _maxVal_7975352 : Bool) : Bool)) {
                        _gotoNext = 7976521i32;
                    } else {
                        _gotoNext = 7976606i32;
                    };
                } else if (__value__ == (7976521i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7976633i32;
                } else if (__value__ == (7976606i32)) {
                    _n = _n1_7976474;
                    _i_7976002++;
                    _gotoNext = 7975998i32;
                } else if (__value__ == (7976618i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7976633i32;
                } else if (__value__ == (7976633i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7975424 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
