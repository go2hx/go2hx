package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2741637:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2740288:Bool = false;
        var _ndMant_2740317:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2740271:Bool = false;
        var _expChar_2740093:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2740048:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2741486:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2740330:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2740308:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2740378:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2740028:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2739869:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2739869 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2739925i32;
                    } else {
                        _gotoNext = 2739940i32;
                    };
                } else if (__value__ == (2739925i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2739940i32;
                } else if (__value__ == (2739940i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2739940i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2739950i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2739975i32;
                    } else {
                        _gotoNext = 2740028i32;
                    };
                } else if (__value__ == (2739950i32)) {
                    _i++;
                    _gotoNext = 2740028i32;
                } else if (__value__ == (2739975i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2740028i32;
                } else if (__value__ == (2740028i32)) {
                    _base_2740028 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2740048 = (19 : stdgo.GoInt);
                    _expChar_2740093 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2740170i32;
                    } else {
                        _gotoNext = 2740271i32;
                    };
                } else if (__value__ == (2740170i32)) {
                    _base_2740028 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2740048 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2740093 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2740271i32;
                } else if (__value__ == (2740271i32)) {
                    _sawdot_2740271 = false;
                    _sawdigits_2740288 = false;
                    _nd_2740308 = (0 : stdgo.GoInt);
                    _ndMant_2740317 = (0 : stdgo.GoInt);
                    _dp_2740330 = (0 : stdgo.GoInt);
                    _gotoNext = 2740338i32;
                } else if (__value__ == (2740338i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2740345i32;
                } else if (__value__ == (2740345i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2740367i32;
                    } else {
                        _gotoNext = 2741087i32;
                    };
                } else if (__value__ == (2740367i32)) {
                    _c_2740378 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2740371i32;
                } else if (__value__ == (2740371i32)) {
                    {
                        _c_2740378 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2740378 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2740398i32;
                            } else if (__value__ == (_c_2740378 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2740450i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2740378 : Bool) && (_c_2740378 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2740543i32;
                            } else if (__value__ == (((_base_2740028 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2740378) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2740378) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2740835i32;
                            } else {
                                _gotoNext = 2741077i32;
                            };
                        };
                    };
                } else if (__value__ == (2740398i32)) {
                    _underscores_2739869 = true;
                    _i++;
                    _gotoNext = 2740345i32;
                } else if (__value__ == (2740450i32)) {
                    if (_sawdot_2740271) {
                        _gotoNext = 2740478i32;
                    } else {
                        _gotoNext = 2740503i32;
                    };
                } else if (__value__ == (2740478i32)) {
                    _loopBreak = true;
                    _gotoNext = 2740345i32;
                } else if (__value__ == (2740503i32)) {
                    _sawdot_2740271 = true;
                    _dp_2740330 = _nd_2740308;
                    _i++;
                    _gotoNext = 2740345i32;
                } else if (__value__ == (2740543i32)) {
                    _sawdigits_2740288 = true;
                    if (((_c_2740378 == (48 : stdgo.GoUInt8)) && (_nd_2740308 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2740616i32;
                    } else {
                        _gotoNext = 2740672i32;
                    };
                } else if (__value__ == (2740616i32)) {
                    _dp_2740330--;
                    _i++;
                    _gotoNext = 2740345i32;
                } else if (__value__ == (2740672i32)) {
                    _nd_2740308++;
                    if ((_ndMant_2740317 < _maxMantDigits_2740048 : Bool)) {
                        _gotoNext = 2740706i32;
                    } else if (_c_2740378 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2740796i32;
                    } else {
                        _gotoNext = 2740823i32;
                    };
                } else if (__value__ == (2740706i32)) {
                    _mantissa = (_mantissa * (_base_2740028) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2740378 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2740317++;
                    _gotoNext = 2740823i32;
                } else if (__value__ == (2740796i32)) {
                    _trunc = true;
                    _gotoNext = 2740823i32;
                } else if (__value__ == (2740823i32)) {
                    _i++;
                    _gotoNext = 2740345i32;
                } else if (__value__ == (2740835i32)) {
                    _sawdigits_2740288 = true;
                    _nd_2740308++;
                    if ((_ndMant_2740317 < _maxMantDigits_2740048 : Bool)) {
                        _gotoNext = 2740947i32;
                    } else {
                        _gotoNext = 2741035i32;
                    };
                } else if (__value__ == (2740947i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2740378) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2740317++;
                    _gotoNext = 2741062i32;
                } else if (__value__ == (2741035i32)) {
                    _trunc = true;
                    _gotoNext = 2741062i32;
                } else if (__value__ == (2741062i32)) {
                    _i++;
                    _gotoNext = 2740345i32;
                } else if (__value__ == (2741077i32)) {
                    _gotoNext = 2741087i32;
                } else if (__value__ == (2741087i32)) {
                    if (!_sawdigits_2740288) {
                        _gotoNext = 2741101i32;
                    } else {
                        _gotoNext = 2741116i32;
                    };
                } else if (__value__ == (2741101i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2741116i32;
                } else if (__value__ == (2741116i32)) {
                    if (!_sawdot_2740271) {
                        _gotoNext = 2741127i32;
                    } else {
                        _gotoNext = 2741144i32;
                    };
                } else if (__value__ == (2741127i32)) {
                    _dp_2740330 = _nd_2740308;
                    _gotoNext = 2741144i32;
                } else if (__value__ == (2741144i32)) {
                    if (_base_2740028 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2741158i32;
                    } else {
                        _gotoNext = 2741403i32;
                    };
                } else if (__value__ == (2741158i32)) {
                    _dp_2740330 = (_dp_2740330 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2740317 = (_ndMant_2740317 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2741403i32;
                } else if (__value__ == (2741403i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2740093) : Bool)) {
                        _gotoNext = 2741443i32;
                    } else if (_base_2740028 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2741876i32;
                    } else {
                        _gotoNext = 2741917i32;
                    };
                } else if (__value__ == (2741443i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2741468i32;
                    } else {
                        _gotoNext = 2741486i32;
                    };
                } else if (__value__ == (2741468i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2741486i32;
                } else if (__value__ == (2741486i32)) {
                    _esign_2741486 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2741514i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2741547i32;
                    } else {
                        _gotoNext = 2741576i32;
                    };
                } else if (__value__ == (2741514i32)) {
                    _i++;
                    _gotoNext = 2741576i32;
                } else if (__value__ == (2741547i32)) {
                    _i++;
                    _esign_2741486 = (-1 : stdgo.GoInt);
                    _gotoNext = 2741576i32;
                } else if (__value__ == (2741576i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2741619i32;
                    } else {
                        _gotoNext = 2741637i32;
                    };
                } else if (__value__ == (2741619i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2741637i32;
                } else if (__value__ == (2741637i32)) {
                    _e_2741637 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2741646i32;
                } else if (__value__ == (2741646i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2741715i32;
                    } else {
                        _gotoNext = 2741838i32;
                    };
                } else if (__value__ == (2741711i32)) {
                    _i++;
                    _gotoNext = 2741646i32;
                } else if (__value__ == (2741715i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2741735i32;
                    } else {
                        _gotoNext = 2741781i32;
                    };
                } else if (__value__ == (2741735i32)) {
                    _underscores_2739869 = true;
                    _i++;
                    _gotoNext = 2741646i32;
                } else if (__value__ == (2741781i32)) {
                    if ((_e_2741637 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2741794i32;
                    } else {
                        _gotoNext = 2741711i32;
                    };
                } else if (__value__ == (2741794i32)) {
                    _e_2741637 = (((_e_2741637 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2741711i32;
                } else if (__value__ == (2741838i32)) {
                    _dp_2740330 = (_dp_2740330 + ((_e_2741637 * _esign_2741486 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2741917i32;
                } else if (__value__ == (2741876i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2741917i32;
                } else if (__value__ == (2741917i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2741934i32;
                    } else {
                        _gotoNext = 2741961i32;
                    };
                } else if (__value__ == (2741934i32)) {
                    _exp = (_dp_2740330 - _ndMant_2740317 : stdgo.GoInt);
                    _gotoNext = 2741961i32;
                } else if (__value__ == (2741961i32)) {
                    if ((_underscores_2739869 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2742000i32;
                    } else {
                        _gotoNext = 2742016i32;
                    };
                } else if (__value__ == (2742000i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2742016i32;
                } else if (__value__ == (2742016i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
