package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7608364:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7608355:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7608323:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7607745:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7607673:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7607665:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7608795:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7607705i32;
                    } else {
                        _gotoNext = 7607745i32;
                    };
                } else if (__value__ == (7607705i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7607745i32;
                } else if (__value__ == (7607745i32)) {
                    _s0_7607745 = _s;
                    var __blank__ = 0i32;
                    _gotoNext = 7607754i32;
                } else if (__value__ == (7607754i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7607764i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7607822i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7607885i32;
                    } else {
                        _gotoNext = 7608166i32;
                    };
                } else if (__value__ == (7607764i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7608954i32;
                } else if (__value__ == (7607822i32)) {
                    _gotoNext = 7608250i32;
                } else if (__value__ == (7607885i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 7607936i32;
                } else if (__value__ == (7607936i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7607947i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7608106i32;
                    } else {
                        _gotoNext = 7608138i32;
                    };
                } else if (__value__ == (7607947i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7608054i32;
                    } else {
                        _gotoNext = 7608250i32;
                    };
                } else if (__value__ == (7608054i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7608954i32;
                } else if (__value__ == (7608106i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7608250i32;
                } else if (__value__ == (7608138i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7608250i32;
                } else if (__value__ == (7608166i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7608954i32;
                } else if (__value__ == (7608250i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7607665 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7607673 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7608323 = (0 : stdgo.GoInt);
                    _gotoNext = 7608319i32;
                } else if (__value__ == (7608319i32)) {
                    if ((_i_7608323 < (_s.length) : Bool)) {
                        _gotoNext = 7608347i32;
                    } else {
                        _gotoNext = 7608939i32;
                    };
                } else if (__value__ == (7608347i32)) {
                    _d_7608364 = _s[(_i_7608323 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 7608376i32;
                } else if (__value__ == (7608376i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7608364 : Bool) && (_d_7608364 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7608387i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7608364 : Bool) && (_d_7608364 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7608431i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7608364 : Bool) && (_d_7608364 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7608480i32;
                    } else {
                        _gotoNext = 7608529i32;
                    };
                } else if (__value__ == (7608387i32)) {
                    _v_7608355 = (_d_7608364 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7608594i32;
                } else if (__value__ == (7608431i32)) {
                    _v_7608355 = ((_d_7608364 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7608594i32;
                } else if (__value__ == (7608480i32)) {
                    _v_7608355 = ((_d_7608364 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7608594i32;
                } else if (__value__ == (7608529i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7608954i32;
                } else if (__value__ == (7608594i32)) {
                    if (((_v_7608355 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7608612i32;
                    } else {
                        _gotoNext = 7608671i32;
                    };
                } else if (__value__ == (7608612i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7608954i32;
                } else if (__value__ == (7608671i32)) {
                    if ((_n >= _cutoff_7607665 : Bool)) {
                        _gotoNext = 7608686i32;
                    } else {
                        _gotoNext = 7608774i32;
                    };
                } else if (__value__ == (7608686i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7608954i32;
                } else if (__value__ == (7608774i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7608795 = (_n + (_v_7608355 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7608795 < _n : Bool) || (_n1_7608795 > _maxVal_7607673 : Bool) : Bool)) {
                        _gotoNext = 7608842i32;
                    } else {
                        _gotoNext = 7608927i32;
                    };
                } else if (__value__ == (7608842i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7608954i32;
                } else if (__value__ == (7608927i32)) {
                    _n = _n1_7608795;
                    _i_7608323++;
                    _gotoNext = 7608319i32;
                } else if (__value__ == (7608939i32)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                    _gotoNext = 7608954i32;
                } else if (__value__ == (7608954i32)) {
                    return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7607745 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
