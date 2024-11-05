package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7698245:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7697814:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7697805:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7697773:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7697195:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7697123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7697115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7697155i32;
                    } else {
                        _gotoNext = 7697195i32;
                    };
                } else if (__value__ == (7697155i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7697195i32;
                } else if (__value__ == (7697195i32)) {
                    _s0_7697195 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7697204i32;
                } else if (__value__ == (7697204i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7697214i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7697272i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7697335i32;
                    } else {
                        _gotoNext = 7697616i32;
                    };
                } else if (__value__ == (7697214i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7698404i32;
                } else if (__value__ == (7697272i32)) {
                    _gotoNext = 7697700i32;
                } else if (__value__ == (7697335i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7697386i32;
                } else if (__value__ == (7697386i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7697397i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7697556i32;
                    } else {
                        _gotoNext = 7697588i32;
                    };
                } else if (__value__ == (7697397i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7697504i32;
                    } else {
                        _gotoNext = 7697700i32;
                    };
                } else if (__value__ == (7697504i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7698404i32;
                } else if (__value__ == (7697556i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7697700i32;
                } else if (__value__ == (7697588i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7697700i32;
                } else if (__value__ == (7697616i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7698404i32;
                } else if (__value__ == (7697700i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7697115 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7697123 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7697773 = (0 : stdgo.GoInt);
                    _gotoNext = 7697769i32;
                } else if (__value__ == (7697769i32)) {
                    if ((_i_7697773 < (_s.length) : Bool)) {
                        _gotoNext = 7697797i32;
                    } else {
                        _gotoNext = 7698389i32;
                    };
                } else if (__value__ == (7697797i32)) {
                    _d_7697814 = _s[(_i_7697773 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7697826i32;
                } else if (__value__ == (7697826i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7697814 : Bool) && (_d_7697814 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7697837i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7697814 : Bool) && (_d_7697814 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7697881i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7697814 : Bool) && (_d_7697814 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7697930i32;
                    } else {
                        _gotoNext = 7697979i32;
                    };
                } else if (__value__ == (7697837i32)) {
                    _v_7697805 = (_d_7697814 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7698044i32;
                } else if (__value__ == (7697881i32)) {
                    _v_7697805 = ((_d_7697814 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7698044i32;
                } else if (__value__ == (7697930i32)) {
                    _v_7697805 = ((_d_7697814 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7698044i32;
                } else if (__value__ == (7697979i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7698404i32;
                } else if (__value__ == (7698044i32)) {
                    if (((_v_7697805 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7698062i32;
                    } else {
                        _gotoNext = 7698121i32;
                    };
                } else if (__value__ == (7698062i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7698404i32;
                } else if (__value__ == (7698121i32)) {
                    if ((_n >= _cutoff_7697115 : Bool)) {
                        _gotoNext = 7698136i32;
                    } else {
                        _gotoNext = 7698224i32;
                    };
                } else if (__value__ == (7698136i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7698404i32;
                } else if (__value__ == (7698224i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7698245 = (_n + (_v_7697805 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7698245 < _n : Bool) || (_n1_7698245 > _maxVal_7697123 : Bool) : Bool)) {
                        _gotoNext = 7698292i32;
                    } else {
                        _gotoNext = 7698377i32;
                    };
                } else if (__value__ == (7698292i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7698404i32;
                } else if (__value__ == (7698377i32)) {
                    _n = _n1_7698245;
                    _i_7697773++;
                    _gotoNext = 7697769i32;
                } else if (__value__ == (7698389i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7698404i32;
                } else if (__value__ == (7698404i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7697195 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
