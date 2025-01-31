package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _nd_2774966:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2776144:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2774988:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2774946:Bool = false;
        var _sawdot_2774929:Bool = false;
        var _maxMantDigits_2774706:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2775036:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_2774975:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2774686:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2776295:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2774751:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2774527:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2774527 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2774583i32;
                    } else {
                        _gotoNext = 2774598i32;
                    };
                } else if (__value__ == (2774583i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2774598i32;
                } else if (__value__ == (2774598i32)) {
                    _gotoNext = 2774598i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2774608i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2774633i32;
                    } else {
                        _gotoNext = 2774686i32;
                    };
                } else if (__value__ == (2774608i32)) {
                    _i++;
                    _gotoNext = 2774686i32;
                } else if (__value__ == (2774633i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2774686i32;
                } else if (__value__ == (2774686i32)) {
                    _base_2774686 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2774706 = (19 : stdgo.GoInt);
                    _expChar_2774751 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2774828i32;
                    } else {
                        _gotoNext = 2774929i32;
                    };
                } else if (__value__ == (2774828i32)) {
                    _base_2774686 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2774706 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2774751 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2774929i32;
                } else if (__value__ == (2774929i32)) {
                    _sawdot_2774929 = false;
                    _sawdigits_2774946 = false;
                    _nd_2774966 = (0 : stdgo.GoInt);
                    _ndMant_2774975 = (0 : stdgo.GoInt);
                    _dp_2774988 = (0 : stdgo.GoInt);
                    _gotoNext = 2774996i32;
                } else if (__value__ == (2774996i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2775003i32;
                } else if (__value__ == (2775003i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2775025i32;
                    } else {
                        _gotoNext = 2775745i32;
                    };
                } else if (__value__ == (2775025i32)) {
                    _gotoNext = 2775029i32;
                } else if (__value__ == (2775029i32)) {
                    {
                        _c_2775036 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2775036 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2775056i32;
                            } else if (__value__ == (_c_2775036 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2775108i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2775036 : Bool) && (_c_2775036 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2775201i32;
                            } else if (__value__ == (((_base_2774686 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2775036) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2775036) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2775493i32;
                            } else {
                                _gotoNext = 2775735i32;
                            };
                        };
                    };
                } else if (__value__ == (2775056i32)) {
                    _underscores_2774527 = true;
                    _i++;
                    _gotoNext = 2775003i32;
                } else if (__value__ == (2775108i32)) {
                    if (_sawdot_2774929) {
                        _gotoNext = 2775136i32;
                    } else {
                        _gotoNext = 2775161i32;
                    };
                } else if (__value__ == (2775136i32)) {
                    _loopBreak = true;
                    _gotoNext = 2775003i32;
                } else if (__value__ == (2775161i32)) {
                    _sawdot_2774929 = true;
                    _dp_2774988 = _nd_2774966;
                    _i++;
                    _gotoNext = 2775003i32;
                } else if (__value__ == (2775201i32)) {
                    _sawdigits_2774946 = true;
                    if (((_c_2775036 == (48 : stdgo.GoUInt8)) && (_nd_2774966 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2775274i32;
                    } else {
                        _gotoNext = 2775330i32;
                    };
                } else if (__value__ == (2775274i32)) {
                    _dp_2774988--;
                    _i++;
                    _gotoNext = 2775003i32;
                } else if (__value__ == (2775330i32)) {
                    _nd_2774966++;
                    if ((_ndMant_2774975 < _maxMantDigits_2774706 : Bool)) {
                        _gotoNext = 2775364i32;
                    } else if (_c_2775036 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2775454i32;
                    } else {
                        _gotoNext = 2775481i32;
                    };
                } else if (__value__ == (2775364i32)) {
                    _mantissa = (_mantissa * (_base_2774686) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2775036 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2774975++;
                    _gotoNext = 2775481i32;
                } else if (__value__ == (2775454i32)) {
                    _trunc = true;
                    _gotoNext = 2775481i32;
                } else if (__value__ == (2775481i32)) {
                    _i++;
                    _gotoNext = 2775003i32;
                } else if (__value__ == (2775493i32)) {
                    _sawdigits_2774946 = true;
                    _nd_2774966++;
                    if ((_ndMant_2774975 < _maxMantDigits_2774706 : Bool)) {
                        _gotoNext = 2775605i32;
                    } else {
                        _gotoNext = 2775693i32;
                    };
                } else if (__value__ == (2775605i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2775036) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2774975++;
                    _gotoNext = 2775720i32;
                } else if (__value__ == (2775693i32)) {
                    _gotoNext = 2775693i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2775720i32;
                } else if (__value__ == (2775720i32)) {
                    _i++;
                    _gotoNext = 2775003i32;
                } else if (__value__ == (2775735i32)) {
                    _gotoNext = 2775745i32;
                } else if (__value__ == (2775745i32)) {
                    if (!_sawdigits_2774946) {
                        _gotoNext = 2775759i32;
                    } else {
                        _gotoNext = 2775774i32;
                    };
                } else if (__value__ == (2775759i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2775774i32;
                } else if (__value__ == (2775774i32)) {
                    if (!_sawdot_2774929) {
                        _gotoNext = 2775785i32;
                    } else {
                        _gotoNext = 2775802i32;
                    };
                } else if (__value__ == (2775785i32)) {
                    _dp_2774988 = _nd_2774966;
                    _gotoNext = 2775802i32;
                } else if (__value__ == (2775802i32)) {
                    if (_base_2774686 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2775816i32;
                    } else {
                        _gotoNext = 2776061i32;
                    };
                } else if (__value__ == (2775816i32)) {
                    _dp_2774988 = (_dp_2774988 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2774975 = (_ndMant_2774975 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2776061i32;
                } else if (__value__ == (2776061i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2774751) : Bool)) {
                        _gotoNext = 2776101i32;
                    } else if (_base_2774686 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2776534i32;
                    } else {
                        _gotoNext = 2776575i32;
                    };
                } else if (__value__ == (2776101i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2776126i32;
                    } else {
                        _gotoNext = 2776144i32;
                    };
                } else if (__value__ == (2776126i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2776144i32;
                } else if (__value__ == (2776144i32)) {
                    _esign_2776144 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2776172i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2776205i32;
                    } else {
                        _gotoNext = 2776234i32;
                    };
                } else if (__value__ == (2776172i32)) {
                    _i++;
                    _gotoNext = 2776234i32;
                } else if (__value__ == (2776205i32)) {
                    _i++;
                    _esign_2776144 = (-1 : stdgo.GoInt);
                    _gotoNext = 2776234i32;
                } else if (__value__ == (2776234i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2776277i32;
                    } else {
                        _gotoNext = 2776295i32;
                    };
                } else if (__value__ == (2776277i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2776295i32;
                } else if (__value__ == (2776295i32)) {
                    _e_2776295 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2776304i32;
                } else if (__value__ == (2776304i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2776373i32;
                    } else {
                        _gotoNext = 2776496i32;
                    };
                } else if (__value__ == (2776369i32)) {
                    _i++;
                    _gotoNext = 2776304i32;
                } else if (__value__ == (2776373i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2776393i32;
                    } else {
                        _gotoNext = 2776439i32;
                    };
                } else if (__value__ == (2776393i32)) {
                    _underscores_2774527 = true;
                    _i++;
                    _gotoNext = 2776304i32;
                } else if (__value__ == (2776439i32)) {
                    if ((_e_2776295 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2776452i32;
                    } else {
                        _gotoNext = 2776369i32;
                    };
                } else if (__value__ == (2776452i32)) {
                    _e_2776295 = (((_e_2776295 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2776369i32;
                } else if (__value__ == (2776496i32)) {
                    _dp_2774988 = (_dp_2774988 + ((_e_2776295 * _esign_2776144 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2776575i32;
                } else if (__value__ == (2776534i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2776575i32;
                } else if (__value__ == (2776575i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2776592i32;
                    } else {
                        _gotoNext = 2776619i32;
                    };
                } else if (__value__ == (2776592i32)) {
                    _exp = (_dp_2774988 - _ndMant_2774975 : stdgo.GoInt);
                    _gotoNext = 2776619i32;
                } else if (__value__ == (2776619i32)) {
                    if ((_underscores_2774527 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2776658i32;
                    } else {
                        _gotoNext = 2776674i32;
                    };
                } else if (__value__ == (2776658i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2776674i32;
                } else if (__value__ == (2776674i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
