package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2668163:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2668115:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2668102:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2668093:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2668073:Bool = false;
        var _e_2669422:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2667833:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2667813:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2667654:Bool = false;
        var _esign_2669271:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _sawdot_2668056:Bool = false;
        var _expChar_2667878:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2667654 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2667710i32;
                    } else {
                        _gotoNext = 2667725i32;
                    };
                } else if (__value__ == (2667710i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2667725i32;
                } else if (__value__ == (2667725i32)) {
                    _gotoNext = 2667725i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2667735i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2667760i32;
                    } else {
                        _gotoNext = 2667813i32;
                    };
                } else if (__value__ == (2667735i32)) {
                    _i++;
                    _gotoNext = 2667813i32;
                } else if (__value__ == (2667760i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2667813i32;
                } else if (__value__ == (2667813i32)) {
                    _base_2667813 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2667833 = (19 : stdgo.GoInt);
                    _expChar_2667878 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2667955i32;
                    } else {
                        _gotoNext = 2668056i32;
                    };
                } else if (__value__ == (2667955i32)) {
                    _base_2667813 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2667833 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2667878 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2668056i32;
                } else if (__value__ == (2668056i32)) {
                    _sawdot_2668056 = false;
                    _sawdigits_2668073 = false;
                    _nd_2668093 = (0 : stdgo.GoInt);
                    _ndMant_2668102 = (0 : stdgo.GoInt);
                    _dp_2668115 = (0 : stdgo.GoInt);
                    _gotoNext = 2668123i32;
                } else if (__value__ == (2668123i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2668130i32;
                } else if (__value__ == (2668130i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2668152i32;
                    } else {
                        _gotoNext = 2668872i32;
                    };
                } else if (__value__ == (2668152i32)) {
                    _gotoNext = 2668156i32;
                } else if (__value__ == (2668156i32)) {
                    {
                        _c_2668163 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2668163 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2668183i32;
                            } else if (__value__ == (_c_2668163 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2668235i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2668163 : Bool) && (_c_2668163 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2668328i32;
                            } else if (__value__ == (((_base_2667813 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2668163) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2668163) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2668620i32;
                            } else {
                                _gotoNext = 2668862i32;
                            };
                        };
                    };
                } else if (__value__ == (2668183i32)) {
                    _underscores_2667654 = true;
                    _i++;
                    _gotoNext = 2668130i32;
                } else if (__value__ == (2668235i32)) {
                    if (_sawdot_2668056) {
                        _gotoNext = 2668263i32;
                    } else {
                        _gotoNext = 2668288i32;
                    };
                } else if (__value__ == (2668263i32)) {
                    _loopBreak = true;
                    _gotoNext = 2668130i32;
                } else if (__value__ == (2668288i32)) {
                    _sawdot_2668056 = true;
                    _dp_2668115 = _nd_2668093;
                    _i++;
                    _gotoNext = 2668130i32;
                } else if (__value__ == (2668328i32)) {
                    _sawdigits_2668073 = true;
                    if (((_c_2668163 == (48 : stdgo.GoUInt8)) && (_nd_2668093 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2668401i32;
                    } else {
                        _gotoNext = 2668457i32;
                    };
                } else if (__value__ == (2668401i32)) {
                    _dp_2668115--;
                    _i++;
                    _gotoNext = 2668130i32;
                } else if (__value__ == (2668457i32)) {
                    _nd_2668093++;
                    if ((_ndMant_2668102 < _maxMantDigits_2667833 : Bool)) {
                        _gotoNext = 2668491i32;
                    } else if (_c_2668163 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2668581i32;
                    } else {
                        _gotoNext = 2668608i32;
                    };
                } else if (__value__ == (2668491i32)) {
                    _mantissa = (_mantissa * (_base_2667813) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2668163 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2668102++;
                    _gotoNext = 2668608i32;
                } else if (__value__ == (2668581i32)) {
                    _trunc = true;
                    _gotoNext = 2668608i32;
                } else if (__value__ == (2668608i32)) {
                    _i++;
                    _gotoNext = 2668130i32;
                } else if (__value__ == (2668620i32)) {
                    _sawdigits_2668073 = true;
                    _nd_2668093++;
                    if ((_ndMant_2668102 < _maxMantDigits_2667833 : Bool)) {
                        _gotoNext = 2668732i32;
                    } else {
                        _gotoNext = 2668820i32;
                    };
                } else if (__value__ == (2668732i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2668163) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2668102++;
                    _gotoNext = 2668847i32;
                } else if (__value__ == (2668820i32)) {
                    _gotoNext = 2668820i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2668847i32;
                } else if (__value__ == (2668847i32)) {
                    _i++;
                    _gotoNext = 2668130i32;
                } else if (__value__ == (2668862i32)) {
                    _gotoNext = 2668872i32;
                } else if (__value__ == (2668872i32)) {
                    if (!_sawdigits_2668073) {
                        _gotoNext = 2668886i32;
                    } else {
                        _gotoNext = 2668901i32;
                    };
                } else if (__value__ == (2668886i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2668901i32;
                } else if (__value__ == (2668901i32)) {
                    if (!_sawdot_2668056) {
                        _gotoNext = 2668912i32;
                    } else {
                        _gotoNext = 2668929i32;
                    };
                } else if (__value__ == (2668912i32)) {
                    _dp_2668115 = _nd_2668093;
                    _gotoNext = 2668929i32;
                } else if (__value__ == (2668929i32)) {
                    if (_base_2667813 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2668943i32;
                    } else {
                        _gotoNext = 2669188i32;
                    };
                } else if (__value__ == (2668943i32)) {
                    _dp_2668115 = (_dp_2668115 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2668102 = (_ndMant_2668102 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2669188i32;
                } else if (__value__ == (2669188i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2667878) : Bool)) {
                        _gotoNext = 2669228i32;
                    } else if (_base_2667813 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2669661i32;
                    } else {
                        _gotoNext = 2669702i32;
                    };
                } else if (__value__ == (2669228i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2669253i32;
                    } else {
                        _gotoNext = 2669271i32;
                    };
                } else if (__value__ == (2669253i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2669271i32;
                } else if (__value__ == (2669271i32)) {
                    _esign_2669271 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2669299i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2669332i32;
                    } else {
                        _gotoNext = 2669361i32;
                    };
                } else if (__value__ == (2669299i32)) {
                    _i++;
                    _gotoNext = 2669361i32;
                } else if (__value__ == (2669332i32)) {
                    _i++;
                    _esign_2669271 = (-1 : stdgo.GoInt);
                    _gotoNext = 2669361i32;
                } else if (__value__ == (2669361i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2669404i32;
                    } else {
                        _gotoNext = 2669422i32;
                    };
                } else if (__value__ == (2669404i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2669422i32;
                } else if (__value__ == (2669422i32)) {
                    _e_2669422 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2669431i32;
                } else if (__value__ == (2669431i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2669500i32;
                    } else {
                        _gotoNext = 2669623i32;
                    };
                } else if (__value__ == (2669496i32)) {
                    _i++;
                    _gotoNext = 2669431i32;
                } else if (__value__ == (2669500i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2669520i32;
                    } else {
                        _gotoNext = 2669566i32;
                    };
                } else if (__value__ == (2669520i32)) {
                    _underscores_2667654 = true;
                    _i++;
                    _gotoNext = 2669431i32;
                } else if (__value__ == (2669566i32)) {
                    if ((_e_2669422 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2669579i32;
                    } else {
                        _gotoNext = 2669496i32;
                    };
                } else if (__value__ == (2669579i32)) {
                    _e_2669422 = (((_e_2669422 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2669496i32;
                } else if (__value__ == (2669623i32)) {
                    _dp_2668115 = (_dp_2668115 + ((_e_2669422 * _esign_2669271 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2669702i32;
                } else if (__value__ == (2669661i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2669702i32;
                } else if (__value__ == (2669702i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2669719i32;
                    } else {
                        _gotoNext = 2669746i32;
                    };
                } else if (__value__ == (2669719i32)) {
                    _exp = (_dp_2668115 - _ndMant_2668102 : stdgo.GoInt);
                    _gotoNext = 2669746i32;
                } else if (__value__ == (2669746i32)) {
                    if ((_underscores_2667654 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2669785i32;
                    } else {
                        _gotoNext = 2669801i32;
                    };
                } else if (__value__ == (2669785i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2669801i32;
                } else if (__value__ == (2669801i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
