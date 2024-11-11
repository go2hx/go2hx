package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_7846715:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7846683:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7846105:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7846033:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7846025:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7847155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7846724:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7846065i32;
                    } else {
                        _gotoNext = 7846105i32;
                    };
                } else if (__value__ == (7846065i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7846105i32;
                } else if (__value__ == (7846105i32)) {
                    _s0_7846105 = _s;
                    _gotoNext = 7846114i32;
                } else if (__value__ == (7846114i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7846124i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7846182i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7846245i32;
                    } else {
                        _gotoNext = 7846526i32;
                    };
                } else if (__value__ == (7846124i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7847314i32;
                } else if (__value__ == (7846182i32)) {
                    _gotoNext = 7846610i32;
                } else if (__value__ == (7846245i32)) {
                    _gotoNext = 7846296i32;
                } else if (__value__ == (7846296i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7846307i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7846466i32;
                    } else {
                        _gotoNext = 7846498i32;
                    };
                } else if (__value__ == (7846307i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7846414i32;
                    } else {
                        _gotoNext = 7846610i32;
                    };
                } else if (__value__ == (7846414i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7847314i32;
                } else if (__value__ == (7846466i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7846610i32;
                } else if (__value__ == (7846498i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7846610i32;
                } else if (__value__ == (7846526i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7847314i32;
                } else if (__value__ == (7846610i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7846025 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7846033 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7846683 = (0 : stdgo.GoInt);
                    _gotoNext = 7846679i32;
                } else if (__value__ == (7846679i32)) {
                    if ((_i_7846683 < (_s.length) : Bool)) {
                        _gotoNext = 7846707i32;
                    } else {
                        _gotoNext = 7847299i32;
                    };
                } else if (__value__ == (7846707i32)) {
                    _d_7846724 = _s[(_i_7846683 : stdgo.GoInt)];
                    _gotoNext = 7846736i32;
                } else if (__value__ == (7846736i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7846724 : Bool) && (_d_7846724 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7846747i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7846724 : Bool) && (_d_7846724 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7846791i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7846724 : Bool) && (_d_7846724 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7846840i32;
                    } else {
                        _gotoNext = 7846889i32;
                    };
                } else if (__value__ == (7846747i32)) {
                    _v_7846715 = (_d_7846724 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7846954i32;
                } else if (__value__ == (7846791i32)) {
                    _v_7846715 = ((_d_7846724 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7846954i32;
                } else if (__value__ == (7846840i32)) {
                    _v_7846715 = ((_d_7846724 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7846954i32;
                } else if (__value__ == (7846889i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7847314i32;
                } else if (__value__ == (7846954i32)) {
                    if (((_v_7846715 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7846972i32;
                    } else {
                        _gotoNext = 7847031i32;
                    };
                } else if (__value__ == (7846972i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7847314i32;
                } else if (__value__ == (7847031i32)) {
                    if ((_n >= _cutoff_7846025 : Bool)) {
                        _gotoNext = 7847046i32;
                    } else {
                        _gotoNext = 7847134i32;
                    };
                } else if (__value__ == (7847046i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7847314i32;
                } else if (__value__ == (7847134i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7847155 = (_n + (_v_7846715 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7847155 < _n : Bool) || (_n1_7847155 > _maxVal_7846033 : Bool) : Bool)) {
                        _gotoNext = 7847202i32;
                    } else {
                        _gotoNext = 7847287i32;
                    };
                } else if (__value__ == (7847202i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7847314i32;
                } else if (__value__ == (7847287i32)) {
                    _n = _n1_7847155;
                    _i_7846683++;
                    _gotoNext = 7846679i32;
                } else if (__value__ == (7847299i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7847314i32;
                } else if (__value__ == (7847314i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7846105 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
