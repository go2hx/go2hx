package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _s0_7660220:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7660148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7660140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7661270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7660839:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7660830:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7660798:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7660180i32;
                    } else {
                        _gotoNext = 7660220i32;
                    };
                } else if (__value__ == (7660180i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7660220i32;
                } else if (__value__ == (7660220i32)) {
                    _s0_7660220 = _s;
                    _gotoNext = 7660229i32;
                } else if (__value__ == (7660229i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7660239i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7660297i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7660360i32;
                    } else {
                        _gotoNext = 7660641i32;
                    };
                } else if (__value__ == (7660239i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7661429i32;
                } else if (__value__ == (7660297i32)) {
                    _gotoNext = 7660725i32;
                } else if (__value__ == (7660360i32)) {
                    _gotoNext = 7660411i32;
                } else if (__value__ == (7660411i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7660422i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7660581i32;
                    } else {
                        _gotoNext = 7660613i32;
                    };
                } else if (__value__ == (7660422i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7660529i32;
                    } else {
                        _gotoNext = 7660725i32;
                    };
                } else if (__value__ == (7660529i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7661429i32;
                } else if (__value__ == (7660581i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7660725i32;
                } else if (__value__ == (7660613i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7660725i32;
                } else if (__value__ == (7660641i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7661429i32;
                } else if (__value__ == (7660725i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7660140 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7660148 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7660798 = (0 : stdgo.GoInt);
                    _gotoNext = 7660794i32;
                } else if (__value__ == (7660794i32)) {
                    if ((_i_7660798 < (_s.length) : Bool)) {
                        _gotoNext = 7660822i32;
                    } else {
                        _gotoNext = 7661414i32;
                    };
                } else if (__value__ == (7660822i32)) {
                    _d_7660839 = _s[(_i_7660798 : stdgo.GoInt)];
                    _gotoNext = 7660851i32;
                } else if (__value__ == (7660851i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7660839 : Bool) && (_d_7660839 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7660862i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7660839 : Bool) && (_d_7660839 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7660906i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7660839 : Bool) && (_d_7660839 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7660955i32;
                    } else {
                        _gotoNext = 7661004i32;
                    };
                } else if (__value__ == (7660862i32)) {
                    _v_7660830 = (_d_7660839 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7661069i32;
                } else if (__value__ == (7660906i32)) {
                    _v_7660830 = ((_d_7660839 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7661069i32;
                } else if (__value__ == (7660955i32)) {
                    _v_7660830 = ((_d_7660839 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7661069i32;
                } else if (__value__ == (7661004i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7661429i32;
                } else if (__value__ == (7661069i32)) {
                    if (((_v_7660830 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7661087i32;
                    } else {
                        _gotoNext = 7661146i32;
                    };
                } else if (__value__ == (7661087i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7661429i32;
                } else if (__value__ == (7661146i32)) {
                    if ((_n >= _cutoff_7660140 : Bool)) {
                        _gotoNext = 7661161i32;
                    } else {
                        _gotoNext = 7661249i32;
                    };
                } else if (__value__ == (7661161i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7661429i32;
                } else if (__value__ == (7661249i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7661270 = (_n + (_v_7660830 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7661270 < _n : Bool) || (_n1_7661270 > _maxVal_7660148 : Bool) : Bool)) {
                        _gotoNext = 7661317i32;
                    } else {
                        _gotoNext = 7661402i32;
                    };
                } else if (__value__ == (7661317i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7661429i32;
                } else if (__value__ == (7661402i32)) {
                    _n = _n1_7661270;
                    _i_7660798++;
                    _gotoNext = 7660794i32;
                } else if (__value__ == (7661414i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7661429i32;
                } else if (__value__ == (7661429i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7660220 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
