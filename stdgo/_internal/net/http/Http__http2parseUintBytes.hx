package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _d_7607981:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7607972:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7607940:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7607362:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7607290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7607282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_7608412:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7607322i32;
                    } else {
                        _gotoNext = 7607362i32;
                    };
                } else if (__value__ == (7607322i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7607362i32;
                } else if (__value__ == (7607362i32)) {
                    _s0_7607362 = _s;
                    _gotoNext = 7607371i32;
                } else if (__value__ == (7607371i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7607381i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7607439i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7607502i32;
                    } else {
                        _gotoNext = 7607783i32;
                    };
                } else if (__value__ == (7607381i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7608571i32;
                } else if (__value__ == (7607439i32)) {
                    _gotoNext = 7607867i32;
                } else if (__value__ == (7607502i32)) {
                    _gotoNext = 7607553i32;
                } else if (__value__ == (7607553i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7607564i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7607723i32;
                    } else {
                        _gotoNext = 7607755i32;
                    };
                } else if (__value__ == (7607564i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7607671i32;
                    } else {
                        _gotoNext = 7607867i32;
                    };
                } else if (__value__ == (7607671i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7608571i32;
                } else if (__value__ == (7607723i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7607867i32;
                } else if (__value__ == (7607755i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7607867i32;
                } else if (__value__ == (7607783i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7608571i32;
                } else if (__value__ == (7607867i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7607282 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7607290 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7607940 = (0 : stdgo.GoInt);
                    _gotoNext = 7607936i32;
                } else if (__value__ == (7607936i32)) {
                    if ((_i_7607940 < (_s.length) : Bool)) {
                        _gotoNext = 7607964i32;
                    } else {
                        _gotoNext = 7608556i32;
                    };
                } else if (__value__ == (7607964i32)) {
                    _d_7607981 = _s[(_i_7607940 : stdgo.GoInt)];
                    _gotoNext = 7607993i32;
                } else if (__value__ == (7607993i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7607981 : Bool) && (_d_7607981 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7608004i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7607981 : Bool) && (_d_7607981 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7608048i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7607981 : Bool) && (_d_7607981 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7608097i32;
                    } else {
                        _gotoNext = 7608146i32;
                    };
                } else if (__value__ == (7608004i32)) {
                    _v_7607972 = (_d_7607981 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7608211i32;
                } else if (__value__ == (7608048i32)) {
                    _v_7607972 = ((_d_7607981 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7608211i32;
                } else if (__value__ == (7608097i32)) {
                    _v_7607972 = ((_d_7607981 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7608211i32;
                } else if (__value__ == (7608146i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7608571i32;
                } else if (__value__ == (7608211i32)) {
                    if (((_v_7607972 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7608229i32;
                    } else {
                        _gotoNext = 7608288i32;
                    };
                } else if (__value__ == (7608229i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7608571i32;
                } else if (__value__ == (7608288i32)) {
                    if ((_n >= _cutoff_7607282 : Bool)) {
                        _gotoNext = 7608303i32;
                    } else {
                        _gotoNext = 7608391i32;
                    };
                } else if (__value__ == (7608303i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7608571i32;
                } else if (__value__ == (7608391i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7608412 = (_n + (_v_7607972 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7608412 < _n : Bool) || (_n1_7608412 > _maxVal_7607290 : Bool) : Bool)) {
                        _gotoNext = 7608459i32;
                    } else {
                        _gotoNext = 7608544i32;
                    };
                } else if (__value__ == (7608459i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7608571i32;
                } else if (__value__ == (7608544i32)) {
                    _n = _n1_7608412;
                    _i_7607940++;
                    _gotoNext = 7607936i32;
                } else if (__value__ == (7608556i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7608571i32;
                } else if (__value__ == (7608571i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7607362 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
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
