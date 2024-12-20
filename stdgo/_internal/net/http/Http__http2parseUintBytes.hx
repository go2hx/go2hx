package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _cutoff_7580167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7581297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7580866:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7580857:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7580825:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7580247:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7580175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7580207i32;
                    } else {
                        _gotoNext = 7580247i32;
                    };
                } else if (__value__ == (7580207i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7580247i32;
                } else if (__value__ == (7580247i32)) {
                    _s0_7580247 = _s;
                    _gotoNext = 7580256i32;
                } else if (__value__ == (7580256i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7580266i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7580324i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7580387i32;
                    } else {
                        _gotoNext = 7580668i32;
                    };
                } else if (__value__ == (7580266i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7581456i32;
                } else if (__value__ == (7580324i32)) {
                    _gotoNext = 7580752i32;
                } else if (__value__ == (7580387i32)) {
                    _gotoNext = 7580438i32;
                } else if (__value__ == (7580438i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7580449i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7580608i32;
                    } else {
                        _gotoNext = 7580640i32;
                    };
                } else if (__value__ == (7580449i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7580556i32;
                    } else {
                        _gotoNext = 7580752i32;
                    };
                } else if (__value__ == (7580556i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7581456i32;
                } else if (__value__ == (7580608i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7580752i32;
                } else if (__value__ == (7580640i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7580752i32;
                } else if (__value__ == (7580668i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7581456i32;
                } else if (__value__ == (7580752i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7580167 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7580175 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7580825 = (0 : stdgo.GoInt);
                    _gotoNext = 7580821i32;
                } else if (__value__ == (7580821i32)) {
                    if ((_i_7580825 < (_s.length) : Bool)) {
                        _gotoNext = 7580849i32;
                    } else {
                        _gotoNext = 7581441i32;
                    };
                } else if (__value__ == (7580849i32)) {
                    _d_7580866 = _s[(_i_7580825 : stdgo.GoInt)];
                    _gotoNext = 7580878i32;
                } else if (__value__ == (7580878i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7580866 : Bool) && (_d_7580866 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7580889i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7580866 : Bool) && (_d_7580866 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7580933i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7580866 : Bool) && (_d_7580866 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7580982i32;
                    } else {
                        _gotoNext = 7581031i32;
                    };
                } else if (__value__ == (7580889i32)) {
                    _v_7580857 = (_d_7580866 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7581096i32;
                } else if (__value__ == (7580933i32)) {
                    _v_7580857 = ((_d_7580866 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7581096i32;
                } else if (__value__ == (7580982i32)) {
                    _v_7580857 = ((_d_7580866 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7581096i32;
                } else if (__value__ == (7581031i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7581456i32;
                } else if (__value__ == (7581096i32)) {
                    if (((_v_7580857 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7581114i32;
                    } else {
                        _gotoNext = 7581173i32;
                    };
                } else if (__value__ == (7581114i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7581456i32;
                } else if (__value__ == (7581173i32)) {
                    if ((_n >= _cutoff_7580167 : Bool)) {
                        _gotoNext = 7581188i32;
                    } else {
                        _gotoNext = 7581276i32;
                    };
                } else if (__value__ == (7581188i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7581456i32;
                } else if (__value__ == (7581276i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7581297 = (_n + (_v_7580857 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7581297 < _n : Bool) || (_n1_7581297 > _maxVal_7580175 : Bool) : Bool)) {
                        _gotoNext = 7581344i32;
                    } else {
                        _gotoNext = 7581429i32;
                    };
                } else if (__value__ == (7581344i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7581456i32;
                } else if (__value__ == (7581429i32)) {
                    _n = _n1_7581297;
                    _i_7580825++;
                    _gotoNext = 7580821i32;
                } else if (__value__ == (7581441i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7581456i32;
                } else if (__value__ == (7581456i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7580247 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
