package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2629804:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2629758:Bool = false;
        var _maxMantDigits_2629535:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2629515:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2630973:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_2629795:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2629580:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2631124:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2629865:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2629817:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2629775:Bool = false;
        var _underscores_2629356:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2629356 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2629412i32;
                    } else {
                        _gotoNext = 2629427i32;
                    };
                } else if (__value__ == (2629412i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2629427i32;
                } else if (__value__ == (2629427i32)) {
                    _gotoNext = 2629427i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2629437i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2629462i32;
                    } else {
                        _gotoNext = 2629515i32;
                    };
                } else if (__value__ == (2629437i32)) {
                    _i++;
                    _gotoNext = 2629515i32;
                } else if (__value__ == (2629462i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2629515i32;
                } else if (__value__ == (2629515i32)) {
                    _base_2629515 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2629535 = (19 : stdgo.GoInt);
                    _expChar_2629580 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2629657i32;
                    } else {
                        _gotoNext = 2629758i32;
                    };
                } else if (__value__ == (2629657i32)) {
                    _base_2629515 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2629535 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2629580 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2629758i32;
                } else if (__value__ == (2629758i32)) {
                    _sawdot_2629758 = false;
                    _sawdigits_2629775 = false;
                    _nd_2629795 = (0 : stdgo.GoInt);
                    _ndMant_2629804 = (0 : stdgo.GoInt);
                    _dp_2629817 = (0 : stdgo.GoInt);
                    _gotoNext = 2629825i32;
                } else if (__value__ == (2629825i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2629832i32;
                } else if (__value__ == (2629832i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2629854i32;
                    } else {
                        _gotoNext = 2630574i32;
                    };
                } else if (__value__ == (2629854i32)) {
                    _gotoNext = 2629858i32;
                } else if (__value__ == (2629858i32)) {
                    {
                        _c_2629865 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2629865 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2629885i32;
                            } else if (__value__ == (_c_2629865 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2629937i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2629865 : Bool) && (_c_2629865 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630030i32;
                            } else if (__value__ == (((_base_2629515 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2629865) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2629865) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630322i32;
                            } else {
                                _gotoNext = 2630564i32;
                            };
                        };
                    };
                } else if (__value__ == (2629885i32)) {
                    _underscores_2629356 = true;
                    _i++;
                    _gotoNext = 2629832i32;
                } else if (__value__ == (2629937i32)) {
                    if (_sawdot_2629758) {
                        _gotoNext = 2629965i32;
                    } else {
                        _gotoNext = 2629990i32;
                    };
                } else if (__value__ == (2629965i32)) {
                    _loopBreak = true;
                    _gotoNext = 2629832i32;
                } else if (__value__ == (2629990i32)) {
                    _sawdot_2629758 = true;
                    _dp_2629817 = _nd_2629795;
                    _i++;
                    _gotoNext = 2629832i32;
                } else if (__value__ == (2630030i32)) {
                    _sawdigits_2629775 = true;
                    if (((_c_2629865 == (48 : stdgo.GoUInt8)) && (_nd_2629795 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2630103i32;
                    } else {
                        _gotoNext = 2630159i32;
                    };
                } else if (__value__ == (2630103i32)) {
                    _dp_2629817--;
                    _i++;
                    _gotoNext = 2629832i32;
                } else if (__value__ == (2630159i32)) {
                    _nd_2629795++;
                    if ((_ndMant_2629804 < _maxMantDigits_2629535 : Bool)) {
                        _gotoNext = 2630193i32;
                    } else if (_c_2629865 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2630283i32;
                    } else {
                        _gotoNext = 2630310i32;
                    };
                } else if (__value__ == (2630193i32)) {
                    _mantissa = (_mantissa * (_base_2629515) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2629865 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2629804++;
                    _gotoNext = 2630310i32;
                } else if (__value__ == (2630283i32)) {
                    _trunc = true;
                    _gotoNext = 2630310i32;
                } else if (__value__ == (2630310i32)) {
                    _i++;
                    _gotoNext = 2629832i32;
                } else if (__value__ == (2630322i32)) {
                    _sawdigits_2629775 = true;
                    _nd_2629795++;
                    if ((_ndMant_2629804 < _maxMantDigits_2629535 : Bool)) {
                        _gotoNext = 2630434i32;
                    } else {
                        _gotoNext = 2630522i32;
                    };
                } else if (__value__ == (2630434i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2629865) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2629804++;
                    _gotoNext = 2630549i32;
                } else if (__value__ == (2630522i32)) {
                    _gotoNext = 2630522i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2630549i32;
                } else if (__value__ == (2630549i32)) {
                    _i++;
                    _gotoNext = 2629832i32;
                } else if (__value__ == (2630564i32)) {
                    _gotoNext = 2630574i32;
                } else if (__value__ == (2630574i32)) {
                    if (!_sawdigits_2629775) {
                        _gotoNext = 2630588i32;
                    } else {
                        _gotoNext = 2630603i32;
                    };
                } else if (__value__ == (2630588i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630603i32;
                } else if (__value__ == (2630603i32)) {
                    if (!_sawdot_2629758) {
                        _gotoNext = 2630614i32;
                    } else {
                        _gotoNext = 2630631i32;
                    };
                } else if (__value__ == (2630614i32)) {
                    _dp_2629817 = _nd_2629795;
                    _gotoNext = 2630631i32;
                } else if (__value__ == (2630631i32)) {
                    if (_base_2629515 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630645i32;
                    } else {
                        _gotoNext = 2630890i32;
                    };
                } else if (__value__ == (2630645i32)) {
                    _dp_2629817 = (_dp_2629817 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2629804 = (_ndMant_2629804 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2630890i32;
                } else if (__value__ == (2630890i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2629580) : Bool)) {
                        _gotoNext = 2630930i32;
                    } else if (_base_2629515 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631363i32;
                    } else {
                        _gotoNext = 2631404i32;
                    };
                } else if (__value__ == (2630930i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2630955i32;
                    } else {
                        _gotoNext = 2630973i32;
                    };
                } else if (__value__ == (2630955i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630973i32;
                } else if (__value__ == (2630973i32)) {
                    _esign_2630973 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2631001i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2631034i32;
                    } else {
                        _gotoNext = 2631063i32;
                    };
                } else if (__value__ == (2631001i32)) {
                    _i++;
                    _gotoNext = 2631063i32;
                } else if (__value__ == (2631034i32)) {
                    _i++;
                    _esign_2630973 = (-1 : stdgo.GoInt);
                    _gotoNext = 2631063i32;
                } else if (__value__ == (2631063i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2631106i32;
                    } else {
                        _gotoNext = 2631124i32;
                    };
                } else if (__value__ == (2631106i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631124i32;
                } else if (__value__ == (2631124i32)) {
                    _e_2631124 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2631133i32;
                } else if (__value__ == (2631133i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2631202i32;
                    } else {
                        _gotoNext = 2631325i32;
                    };
                } else if (__value__ == (2631198i32)) {
                    _i++;
                    _gotoNext = 2631133i32;
                } else if (__value__ == (2631202i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2631222i32;
                    } else {
                        _gotoNext = 2631268i32;
                    };
                } else if (__value__ == (2631222i32)) {
                    _underscores_2629356 = true;
                    _i++;
                    _gotoNext = 2631133i32;
                } else if (__value__ == (2631268i32)) {
                    if ((_e_2631124 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2631281i32;
                    } else {
                        _gotoNext = 2631198i32;
                    };
                } else if (__value__ == (2631281i32)) {
                    _e_2631124 = (((_e_2631124 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2631198i32;
                } else if (__value__ == (2631325i32)) {
                    _dp_2629817 = (_dp_2629817 + ((_e_2631124 * _esign_2630973 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631404i32;
                } else if (__value__ == (2631363i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631404i32;
                } else if (__value__ == (2631404i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631421i32;
                    } else {
                        _gotoNext = 2631448i32;
                    };
                } else if (__value__ == (2631421i32)) {
                    _exp = (_dp_2629817 - _ndMant_2629804 : stdgo.GoInt);
                    _gotoNext = 2631448i32;
                } else if (__value__ == (2631448i32)) {
                    if ((_underscores_2629356 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2631487i32;
                    } else {
                        _gotoNext = 2631503i32;
                    };
                } else if (__value__ == (2631487i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631503i32;
                } else if (__value__ == (2631503i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
