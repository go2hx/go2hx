package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2642634:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2642605:Bool = false;
        var _e_2643954:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2642647:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2642410:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2643803:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2642365:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2642345:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_2642695:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _nd_2642625:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2642588:Bool = false;
        var _underscores_2642186:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2642186 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2642242i32;
                    } else {
                        _gotoNext = 2642257i32;
                    };
                } else if (__value__ == (2642242i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642257i32;
                } else if (__value__ == (2642257i32)) {
                    _gotoNext = 2642257i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2642267i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2642292i32;
                    } else {
                        _gotoNext = 2642345i32;
                    };
                } else if (__value__ == (2642267i32)) {
                    _i++;
                    _gotoNext = 2642345i32;
                } else if (__value__ == (2642292i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2642345i32;
                } else if (__value__ == (2642345i32)) {
                    _base_2642345 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2642365 = (19 : stdgo.GoInt);
                    _expChar_2642410 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2642487i32;
                    } else {
                        _gotoNext = 2642588i32;
                    };
                } else if (__value__ == (2642487i32)) {
                    _base_2642345 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2642365 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2642410 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2642588i32;
                } else if (__value__ == (2642588i32)) {
                    _sawdot_2642588 = false;
                    _sawdigits_2642605 = false;
                    _nd_2642625 = (0 : stdgo.GoInt);
                    _ndMant_2642634 = (0 : stdgo.GoInt);
                    _dp_2642647 = (0 : stdgo.GoInt);
                    _gotoNext = 2642655i32;
                } else if (__value__ == (2642655i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2642662i32;
                } else if (__value__ == (2642662i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2642684i32;
                    } else {
                        _gotoNext = 2643404i32;
                    };
                } else if (__value__ == (2642684i32)) {
                    _gotoNext = 2642688i32;
                } else if (__value__ == (2642688i32)) {
                    {
                        _c_2642695 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2642695 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2642715i32;
                            } else if (__value__ == (_c_2642695 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2642767i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2642695 : Bool) && (_c_2642695 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2642860i32;
                            } else if (__value__ == (((_base_2642345 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2642695) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2642695) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2643152i32;
                            } else {
                                _gotoNext = 2643394i32;
                            };
                        };
                    };
                } else if (__value__ == (2642715i32)) {
                    _underscores_2642186 = true;
                    _i++;
                    _gotoNext = 2642662i32;
                } else if (__value__ == (2642767i32)) {
                    if (_sawdot_2642588) {
                        _gotoNext = 2642795i32;
                    } else {
                        _gotoNext = 2642820i32;
                    };
                } else if (__value__ == (2642795i32)) {
                    _loopBreak = true;
                    _gotoNext = 2642662i32;
                } else if (__value__ == (2642820i32)) {
                    _sawdot_2642588 = true;
                    _dp_2642647 = _nd_2642625;
                    _i++;
                    _gotoNext = 2642662i32;
                } else if (__value__ == (2642860i32)) {
                    _sawdigits_2642605 = true;
                    if (((_c_2642695 == (48 : stdgo.GoUInt8)) && (_nd_2642625 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2642933i32;
                    } else {
                        _gotoNext = 2642989i32;
                    };
                } else if (__value__ == (2642933i32)) {
                    _dp_2642647--;
                    _i++;
                    _gotoNext = 2642662i32;
                } else if (__value__ == (2642989i32)) {
                    _nd_2642625++;
                    if ((_ndMant_2642634 < _maxMantDigits_2642365 : Bool)) {
                        _gotoNext = 2643023i32;
                    } else if (_c_2642695 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2643113i32;
                    } else {
                        _gotoNext = 2643140i32;
                    };
                } else if (__value__ == (2643023i32)) {
                    _mantissa = (_mantissa * (_base_2642345) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2642695 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2642634++;
                    _gotoNext = 2643140i32;
                } else if (__value__ == (2643113i32)) {
                    _trunc = true;
                    _gotoNext = 2643140i32;
                } else if (__value__ == (2643140i32)) {
                    _i++;
                    _gotoNext = 2642662i32;
                } else if (__value__ == (2643152i32)) {
                    _sawdigits_2642605 = true;
                    _nd_2642625++;
                    if ((_ndMant_2642634 < _maxMantDigits_2642365 : Bool)) {
                        _gotoNext = 2643264i32;
                    } else {
                        _gotoNext = 2643352i32;
                    };
                } else if (__value__ == (2643264i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2642695) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2642634++;
                    _gotoNext = 2643379i32;
                } else if (__value__ == (2643352i32)) {
                    _gotoNext = 2643352i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2643379i32;
                } else if (__value__ == (2643379i32)) {
                    _i++;
                    _gotoNext = 2642662i32;
                } else if (__value__ == (2643394i32)) {
                    _gotoNext = 2643404i32;
                } else if (__value__ == (2643404i32)) {
                    if (!_sawdigits_2642605) {
                        _gotoNext = 2643418i32;
                    } else {
                        _gotoNext = 2643433i32;
                    };
                } else if (__value__ == (2643418i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2643433i32;
                } else if (__value__ == (2643433i32)) {
                    if (!_sawdot_2642588) {
                        _gotoNext = 2643444i32;
                    } else {
                        _gotoNext = 2643461i32;
                    };
                } else if (__value__ == (2643444i32)) {
                    _dp_2642647 = _nd_2642625;
                    _gotoNext = 2643461i32;
                } else if (__value__ == (2643461i32)) {
                    if (_base_2642345 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2643475i32;
                    } else {
                        _gotoNext = 2643720i32;
                    };
                } else if (__value__ == (2643475i32)) {
                    _dp_2642647 = (_dp_2642647 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2642634 = (_ndMant_2642634 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2643720i32;
                } else if (__value__ == (2643720i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2642410) : Bool)) {
                        _gotoNext = 2643760i32;
                    } else if (_base_2642345 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2644193i32;
                    } else {
                        _gotoNext = 2644234i32;
                    };
                } else if (__value__ == (2643760i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2643785i32;
                    } else {
                        _gotoNext = 2643803i32;
                    };
                } else if (__value__ == (2643785i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2643803i32;
                } else if (__value__ == (2643803i32)) {
                    _esign_2643803 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2643831i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2643864i32;
                    } else {
                        _gotoNext = 2643893i32;
                    };
                } else if (__value__ == (2643831i32)) {
                    _i++;
                    _gotoNext = 2643893i32;
                } else if (__value__ == (2643864i32)) {
                    _i++;
                    _esign_2643803 = (-1 : stdgo.GoInt);
                    _gotoNext = 2643893i32;
                } else if (__value__ == (2643893i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2643936i32;
                    } else {
                        _gotoNext = 2643954i32;
                    };
                } else if (__value__ == (2643936i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2643954i32;
                } else if (__value__ == (2643954i32)) {
                    _e_2643954 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2643963i32;
                } else if (__value__ == (2643963i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2644032i32;
                    } else {
                        _gotoNext = 2644155i32;
                    };
                } else if (__value__ == (2644028i32)) {
                    _i++;
                    _gotoNext = 2643963i32;
                } else if (__value__ == (2644032i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2644052i32;
                    } else {
                        _gotoNext = 2644098i32;
                    };
                } else if (__value__ == (2644052i32)) {
                    _underscores_2642186 = true;
                    _i++;
                    _gotoNext = 2643963i32;
                } else if (__value__ == (2644098i32)) {
                    if ((_e_2643954 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2644111i32;
                    } else {
                        _gotoNext = 2644028i32;
                    };
                } else if (__value__ == (2644111i32)) {
                    _e_2643954 = (((_e_2643954 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2644028i32;
                } else if (__value__ == (2644155i32)) {
                    _dp_2642647 = (_dp_2642647 + ((_e_2643954 * _esign_2643803 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2644234i32;
                } else if (__value__ == (2644193i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2644234i32;
                } else if (__value__ == (2644234i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2644251i32;
                    } else {
                        _gotoNext = 2644278i32;
                    };
                } else if (__value__ == (2644251i32)) {
                    _exp = (_dp_2642647 - _ndMant_2642634 : stdgo.GoInt);
                    _gotoNext = 2644278i32;
                } else if (__value__ == (2644278i32)) {
                    if ((_underscores_2642186 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2644317i32;
                    } else {
                        _gotoNext = 2644333i32;
                    };
                } else if (__value__ == (2644317i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2644333i32;
                } else if (__value__ == (2644333i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
