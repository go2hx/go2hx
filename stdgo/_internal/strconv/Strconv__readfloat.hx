package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2706489:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdot_2706382:Bool = false;
        var _underscores_2705980:Bool = false;
        var _esign_2707597:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _e_2707748:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2706419:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2706159:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2706441:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2706428:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2706399:Bool = false;
        var _expChar_2706204:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2706139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2705980 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2706036i32;
                    } else {
                        _gotoNext = 2706051i32;
                    };
                } else if (__value__ == (2706036i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2706051i32;
                } else if (__value__ == (2706051i32)) {
                    _gotoNext = 2706051i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2706061i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2706086i32;
                    } else {
                        _gotoNext = 2706139i32;
                    };
                } else if (__value__ == (2706061i32)) {
                    _i++;
                    _gotoNext = 2706139i32;
                } else if (__value__ == (2706086i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2706139i32;
                } else if (__value__ == (2706139i32)) {
                    _base_2706139 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2706159 = (19 : stdgo.GoInt);
                    _expChar_2706204 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2706281i32;
                    } else {
                        _gotoNext = 2706382i32;
                    };
                } else if (__value__ == (2706281i32)) {
                    _base_2706139 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2706159 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2706204 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2706382i32;
                } else if (__value__ == (2706382i32)) {
                    _sawdot_2706382 = false;
                    _sawdigits_2706399 = false;
                    _nd_2706419 = (0 : stdgo.GoInt);
                    _ndMant_2706428 = (0 : stdgo.GoInt);
                    _dp_2706441 = (0 : stdgo.GoInt);
                    _gotoNext = 2706449i32;
                } else if (__value__ == (2706449i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2706456i32;
                } else if (__value__ == (2706456i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2706478i32;
                    } else {
                        _gotoNext = 2707198i32;
                    };
                } else if (__value__ == (2706478i32)) {
                    _gotoNext = 2706482i32;
                } else if (__value__ == (2706482i32)) {
                    {
                        _c_2706489 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2706489 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2706509i32;
                            } else if (__value__ == (_c_2706489 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2706561i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2706489 : Bool) && (_c_2706489 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2706654i32;
                            } else if (__value__ == (((_base_2706139 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2706489) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2706489) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2706946i32;
                            } else {
                                _gotoNext = 2707188i32;
                            };
                        };
                    };
                } else if (__value__ == (2706509i32)) {
                    _underscores_2705980 = true;
                    _i++;
                    _gotoNext = 2706456i32;
                } else if (__value__ == (2706561i32)) {
                    if (_sawdot_2706382) {
                        _gotoNext = 2706589i32;
                    } else {
                        _gotoNext = 2706614i32;
                    };
                } else if (__value__ == (2706589i32)) {
                    _loopBreak = true;
                    _gotoNext = 2706456i32;
                } else if (__value__ == (2706614i32)) {
                    _sawdot_2706382 = true;
                    _dp_2706441 = _nd_2706419;
                    _i++;
                    _gotoNext = 2706456i32;
                } else if (__value__ == (2706654i32)) {
                    _sawdigits_2706399 = true;
                    if (((_c_2706489 == (48 : stdgo.GoUInt8)) && (_nd_2706419 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2706727i32;
                    } else {
                        _gotoNext = 2706783i32;
                    };
                } else if (__value__ == (2706727i32)) {
                    _dp_2706441--;
                    _i++;
                    _gotoNext = 2706456i32;
                } else if (__value__ == (2706783i32)) {
                    _nd_2706419++;
                    if ((_ndMant_2706428 < _maxMantDigits_2706159 : Bool)) {
                        _gotoNext = 2706817i32;
                    } else if (_c_2706489 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2706907i32;
                    } else {
                        _gotoNext = 2706934i32;
                    };
                } else if (__value__ == (2706817i32)) {
                    _mantissa = (_mantissa * (_base_2706139) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2706489 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2706428++;
                    _gotoNext = 2706934i32;
                } else if (__value__ == (2706907i32)) {
                    _trunc = true;
                    _gotoNext = 2706934i32;
                } else if (__value__ == (2706934i32)) {
                    _i++;
                    _gotoNext = 2706456i32;
                } else if (__value__ == (2706946i32)) {
                    _sawdigits_2706399 = true;
                    _nd_2706419++;
                    if ((_ndMant_2706428 < _maxMantDigits_2706159 : Bool)) {
                        _gotoNext = 2707058i32;
                    } else {
                        _gotoNext = 2707146i32;
                    };
                } else if (__value__ == (2707058i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2706489) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2706428++;
                    _gotoNext = 2707173i32;
                } else if (__value__ == (2707146i32)) {
                    _gotoNext = 2707146i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2707173i32;
                } else if (__value__ == (2707173i32)) {
                    _i++;
                    _gotoNext = 2706456i32;
                } else if (__value__ == (2707188i32)) {
                    _gotoNext = 2707198i32;
                } else if (__value__ == (2707198i32)) {
                    if (!_sawdigits_2706399) {
                        _gotoNext = 2707212i32;
                    } else {
                        _gotoNext = 2707227i32;
                    };
                } else if (__value__ == (2707212i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2707227i32;
                } else if (__value__ == (2707227i32)) {
                    if (!_sawdot_2706382) {
                        _gotoNext = 2707238i32;
                    } else {
                        _gotoNext = 2707255i32;
                    };
                } else if (__value__ == (2707238i32)) {
                    _dp_2706441 = _nd_2706419;
                    _gotoNext = 2707255i32;
                } else if (__value__ == (2707255i32)) {
                    if (_base_2706139 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2707269i32;
                    } else {
                        _gotoNext = 2707514i32;
                    };
                } else if (__value__ == (2707269i32)) {
                    _dp_2706441 = (_dp_2706441 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2706428 = (_ndMant_2706428 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2707514i32;
                } else if (__value__ == (2707514i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2706204) : Bool)) {
                        _gotoNext = 2707554i32;
                    } else if (_base_2706139 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2707987i32;
                    } else {
                        _gotoNext = 2708028i32;
                    };
                } else if (__value__ == (2707554i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2707579i32;
                    } else {
                        _gotoNext = 2707597i32;
                    };
                } else if (__value__ == (2707579i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2707597i32;
                } else if (__value__ == (2707597i32)) {
                    _esign_2707597 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2707625i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2707658i32;
                    } else {
                        _gotoNext = 2707687i32;
                    };
                } else if (__value__ == (2707625i32)) {
                    _i++;
                    _gotoNext = 2707687i32;
                } else if (__value__ == (2707658i32)) {
                    _i++;
                    _esign_2707597 = (-1 : stdgo.GoInt);
                    _gotoNext = 2707687i32;
                } else if (__value__ == (2707687i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2707730i32;
                    } else {
                        _gotoNext = 2707748i32;
                    };
                } else if (__value__ == (2707730i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2707748i32;
                } else if (__value__ == (2707748i32)) {
                    _e_2707748 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2707757i32;
                } else if (__value__ == (2707757i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2707826i32;
                    } else {
                        _gotoNext = 2707949i32;
                    };
                } else if (__value__ == (2707822i32)) {
                    _i++;
                    _gotoNext = 2707757i32;
                } else if (__value__ == (2707826i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2707846i32;
                    } else {
                        _gotoNext = 2707892i32;
                    };
                } else if (__value__ == (2707846i32)) {
                    _underscores_2705980 = true;
                    _i++;
                    _gotoNext = 2707757i32;
                } else if (__value__ == (2707892i32)) {
                    if ((_e_2707748 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2707905i32;
                    } else {
                        _gotoNext = 2707822i32;
                    };
                } else if (__value__ == (2707905i32)) {
                    _e_2707748 = (((_e_2707748 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2707822i32;
                } else if (__value__ == (2707949i32)) {
                    _dp_2706441 = (_dp_2706441 + ((_e_2707748 * _esign_2707597 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2708028i32;
                } else if (__value__ == (2707987i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2708028i32;
                } else if (__value__ == (2708028i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2708045i32;
                    } else {
                        _gotoNext = 2708072i32;
                    };
                } else if (__value__ == (2708045i32)) {
                    _exp = (_dp_2706441 - _ndMant_2706428 : stdgo.GoInt);
                    _gotoNext = 2708072i32;
                } else if (__value__ == (2708072i32)) {
                    if ((_underscores_2705980 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2708111i32;
                    } else {
                        _gotoNext = 2708127i32;
                    };
                } else if (__value__ == (2708111i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2708127i32;
                } else if (__value__ == (2708127i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
