package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2639944:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2639896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2641203:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2641052:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _sawdigits_2639854:Bool = false;
        var _sawdot_2639837:Bool = false;
        var _underscores_2639435:Bool = false;
        var _base_2639594:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _ndMant_2639883:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2639874:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2639659:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2639614:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2639435 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2639491i32;
                    } else {
                        _gotoNext = 2639506i32;
                    };
                } else if (__value__ == (2639491i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2639506i32;
                } else if (__value__ == (2639506i32)) {
                    _gotoNext = 2639506i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2639516i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2639541i32;
                    } else {
                        _gotoNext = 2639594i32;
                    };
                } else if (__value__ == (2639516i32)) {
                    _i++;
                    _gotoNext = 2639594i32;
                } else if (__value__ == (2639541i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2639594i32;
                } else if (__value__ == (2639594i32)) {
                    _base_2639594 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2639614 = (19 : stdgo.GoInt);
                    _expChar_2639659 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2639736i32;
                    } else {
                        _gotoNext = 2639837i32;
                    };
                } else if (__value__ == (2639736i32)) {
                    _base_2639594 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2639614 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2639659 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2639837i32;
                } else if (__value__ == (2639837i32)) {
                    _sawdot_2639837 = false;
                    _sawdigits_2639854 = false;
                    _nd_2639874 = (0 : stdgo.GoInt);
                    _ndMant_2639883 = (0 : stdgo.GoInt);
                    _dp_2639896 = (0 : stdgo.GoInt);
                    _gotoNext = 2639904i32;
                } else if (__value__ == (2639904i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2639911i32;
                } else if (__value__ == (2639911i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2639933i32;
                    } else {
                        _gotoNext = 2640653i32;
                    };
                } else if (__value__ == (2639933i32)) {
                    _gotoNext = 2639937i32;
                } else if (__value__ == (2639937i32)) {
                    {
                        _c_2639944 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2639944 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2639964i32;
                            } else if (__value__ == (_c_2639944 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2640016i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2639944 : Bool) && (_c_2639944 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2640109i32;
                            } else if (__value__ == (((_base_2639594 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2639944) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2639944) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2640401i32;
                            } else {
                                _gotoNext = 2640643i32;
                            };
                        };
                    };
                } else if (__value__ == (2639964i32)) {
                    _underscores_2639435 = true;
                    _i++;
                    _gotoNext = 2639911i32;
                } else if (__value__ == (2640016i32)) {
                    if (_sawdot_2639837) {
                        _gotoNext = 2640044i32;
                    } else {
                        _gotoNext = 2640069i32;
                    };
                } else if (__value__ == (2640044i32)) {
                    _loopBreak = true;
                    _gotoNext = 2639911i32;
                } else if (__value__ == (2640069i32)) {
                    _sawdot_2639837 = true;
                    _dp_2639896 = _nd_2639874;
                    _i++;
                    _gotoNext = 2639911i32;
                } else if (__value__ == (2640109i32)) {
                    _sawdigits_2639854 = true;
                    if (((_c_2639944 == (48 : stdgo.GoUInt8)) && (_nd_2639874 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2640182i32;
                    } else {
                        _gotoNext = 2640238i32;
                    };
                } else if (__value__ == (2640182i32)) {
                    _dp_2639896--;
                    _i++;
                    _gotoNext = 2639911i32;
                } else if (__value__ == (2640238i32)) {
                    _nd_2639874++;
                    if ((_ndMant_2639883 < _maxMantDigits_2639614 : Bool)) {
                        _gotoNext = 2640272i32;
                    } else if (_c_2639944 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2640362i32;
                    } else {
                        _gotoNext = 2640389i32;
                    };
                } else if (__value__ == (2640272i32)) {
                    _mantissa = (_mantissa * (_base_2639594) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2639944 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2639883++;
                    _gotoNext = 2640389i32;
                } else if (__value__ == (2640362i32)) {
                    _trunc = true;
                    _gotoNext = 2640389i32;
                } else if (__value__ == (2640389i32)) {
                    _i++;
                    _gotoNext = 2639911i32;
                } else if (__value__ == (2640401i32)) {
                    _sawdigits_2639854 = true;
                    _nd_2639874++;
                    if ((_ndMant_2639883 < _maxMantDigits_2639614 : Bool)) {
                        _gotoNext = 2640513i32;
                    } else {
                        _gotoNext = 2640601i32;
                    };
                } else if (__value__ == (2640513i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2639944) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2639883++;
                    _gotoNext = 2640628i32;
                } else if (__value__ == (2640601i32)) {
                    _gotoNext = 2640601i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2640628i32;
                } else if (__value__ == (2640628i32)) {
                    _i++;
                    _gotoNext = 2639911i32;
                } else if (__value__ == (2640643i32)) {
                    _gotoNext = 2640653i32;
                } else if (__value__ == (2640653i32)) {
                    if (!_sawdigits_2639854) {
                        _gotoNext = 2640667i32;
                    } else {
                        _gotoNext = 2640682i32;
                    };
                } else if (__value__ == (2640667i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2640682i32;
                } else if (__value__ == (2640682i32)) {
                    if (!_sawdot_2639837) {
                        _gotoNext = 2640693i32;
                    } else {
                        _gotoNext = 2640710i32;
                    };
                } else if (__value__ == (2640693i32)) {
                    _dp_2639896 = _nd_2639874;
                    _gotoNext = 2640710i32;
                } else if (__value__ == (2640710i32)) {
                    if (_base_2639594 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2640724i32;
                    } else {
                        _gotoNext = 2640969i32;
                    };
                } else if (__value__ == (2640724i32)) {
                    _dp_2639896 = (_dp_2639896 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2639883 = (_ndMant_2639883 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2640969i32;
                } else if (__value__ == (2640969i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2639659) : Bool)) {
                        _gotoNext = 2641009i32;
                    } else if (_base_2639594 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2641442i32;
                    } else {
                        _gotoNext = 2641483i32;
                    };
                } else if (__value__ == (2641009i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2641034i32;
                    } else {
                        _gotoNext = 2641052i32;
                    };
                } else if (__value__ == (2641034i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641052i32;
                } else if (__value__ == (2641052i32)) {
                    _esign_2641052 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2641080i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2641113i32;
                    } else {
                        _gotoNext = 2641142i32;
                    };
                } else if (__value__ == (2641080i32)) {
                    _i++;
                    _gotoNext = 2641142i32;
                } else if (__value__ == (2641113i32)) {
                    _i++;
                    _esign_2641052 = (-1 : stdgo.GoInt);
                    _gotoNext = 2641142i32;
                } else if (__value__ == (2641142i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2641185i32;
                    } else {
                        _gotoNext = 2641203i32;
                    };
                } else if (__value__ == (2641185i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641203i32;
                } else if (__value__ == (2641203i32)) {
                    _e_2641203 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2641212i32;
                } else if (__value__ == (2641212i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2641281i32;
                    } else {
                        _gotoNext = 2641404i32;
                    };
                } else if (__value__ == (2641277i32)) {
                    _i++;
                    _gotoNext = 2641212i32;
                } else if (__value__ == (2641281i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2641301i32;
                    } else {
                        _gotoNext = 2641347i32;
                    };
                } else if (__value__ == (2641301i32)) {
                    _underscores_2639435 = true;
                    _i++;
                    _gotoNext = 2641212i32;
                } else if (__value__ == (2641347i32)) {
                    if ((_e_2641203 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2641360i32;
                    } else {
                        _gotoNext = 2641277i32;
                    };
                } else if (__value__ == (2641360i32)) {
                    _e_2641203 = (((_e_2641203 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2641277i32;
                } else if (__value__ == (2641404i32)) {
                    _dp_2639896 = (_dp_2639896 + ((_e_2641203 * _esign_2641052 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2641483i32;
                } else if (__value__ == (2641442i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641483i32;
                } else if (__value__ == (2641483i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2641500i32;
                    } else {
                        _gotoNext = 2641527i32;
                    };
                } else if (__value__ == (2641500i32)) {
                    _exp = (_dp_2639896 - _ndMant_2639883 : stdgo.GoInt);
                    _gotoNext = 2641527i32;
                } else if (__value__ == (2641527i32)) {
                    if ((_underscores_2639435 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2641566i32;
                    } else {
                        _gotoNext = 2641582i32;
                    };
                } else if (__value__ == (2641566i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641582i32;
                } else if (__value__ == (2641582i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
