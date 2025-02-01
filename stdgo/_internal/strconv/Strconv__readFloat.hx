package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _base_2680394:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2680235:Bool = false;
        var _c_2680744:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2681852:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _expChar_2680459:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2680414:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2682003:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2680696:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2680683:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2680674:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2680654:Bool = false;
        var _sawdot_2680637:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2680235 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2680291i32;
                    } else {
                        _gotoNext = 2680306i32;
                    };
                } else if (__value__ == (2680291i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2680306i32;
                } else if (__value__ == (2680306i32)) {
                    _gotoNext = 2680306i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2680316i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2680341i32;
                    } else {
                        _gotoNext = 2680394i32;
                    };
                } else if (__value__ == (2680316i32)) {
                    _i++;
                    _gotoNext = 2680394i32;
                } else if (__value__ == (2680341i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2680394i32;
                } else if (__value__ == (2680394i32)) {
                    _base_2680394 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2680414 = (19 : stdgo.GoInt);
                    _expChar_2680459 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2680536i32;
                    } else {
                        _gotoNext = 2680637i32;
                    };
                } else if (__value__ == (2680536i32)) {
                    _base_2680394 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2680414 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2680459 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2680637i32;
                } else if (__value__ == (2680637i32)) {
                    _sawdot_2680637 = false;
                    _sawdigits_2680654 = false;
                    _nd_2680674 = (0 : stdgo.GoInt);
                    _ndMant_2680683 = (0 : stdgo.GoInt);
                    _dp_2680696 = (0 : stdgo.GoInt);
                    _gotoNext = 2680704i32;
                } else if (__value__ == (2680704i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2680711i32;
                } else if (__value__ == (2680711i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2680733i32;
                    } else {
                        _gotoNext = 2681453i32;
                    };
                } else if (__value__ == (2680733i32)) {
                    _gotoNext = 2680737i32;
                } else if (__value__ == (2680737i32)) {
                    {
                        _c_2680744 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2680744 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2680764i32;
                            } else if (__value__ == (_c_2680744 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2680816i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2680744 : Bool) && (_c_2680744 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2680909i32;
                            } else if (__value__ == (((_base_2680394 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2680744) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2680744) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2681201i32;
                            } else {
                                _gotoNext = 2681443i32;
                            };
                        };
                    };
                } else if (__value__ == (2680764i32)) {
                    _underscores_2680235 = true;
                    _i++;
                    _gotoNext = 2680711i32;
                } else if (__value__ == (2680816i32)) {
                    if (_sawdot_2680637) {
                        _gotoNext = 2680844i32;
                    } else {
                        _gotoNext = 2680869i32;
                    };
                } else if (__value__ == (2680844i32)) {
                    _loopBreak = true;
                    _gotoNext = 2680711i32;
                } else if (__value__ == (2680869i32)) {
                    _sawdot_2680637 = true;
                    _dp_2680696 = _nd_2680674;
                    _i++;
                    _gotoNext = 2680711i32;
                } else if (__value__ == (2680909i32)) {
                    _sawdigits_2680654 = true;
                    if (((_c_2680744 == (48 : stdgo.GoUInt8)) && (_nd_2680674 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2680982i32;
                    } else {
                        _gotoNext = 2681038i32;
                    };
                } else if (__value__ == (2680982i32)) {
                    _dp_2680696--;
                    _i++;
                    _gotoNext = 2680711i32;
                } else if (__value__ == (2681038i32)) {
                    _nd_2680674++;
                    if ((_ndMant_2680683 < _maxMantDigits_2680414 : Bool)) {
                        _gotoNext = 2681072i32;
                    } else if (_c_2680744 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2681162i32;
                    } else {
                        _gotoNext = 2681189i32;
                    };
                } else if (__value__ == (2681072i32)) {
                    _mantissa = (_mantissa * (_base_2680394) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2680744 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2680683++;
                    _gotoNext = 2681189i32;
                } else if (__value__ == (2681162i32)) {
                    _trunc = true;
                    _gotoNext = 2681189i32;
                } else if (__value__ == (2681189i32)) {
                    _i++;
                    _gotoNext = 2680711i32;
                } else if (__value__ == (2681201i32)) {
                    _sawdigits_2680654 = true;
                    _nd_2680674++;
                    if ((_ndMant_2680683 < _maxMantDigits_2680414 : Bool)) {
                        _gotoNext = 2681313i32;
                    } else {
                        _gotoNext = 2681401i32;
                    };
                } else if (__value__ == (2681313i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2680744) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2680683++;
                    _gotoNext = 2681428i32;
                } else if (__value__ == (2681401i32)) {
                    _gotoNext = 2681401i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2681428i32;
                } else if (__value__ == (2681428i32)) {
                    _i++;
                    _gotoNext = 2680711i32;
                } else if (__value__ == (2681443i32)) {
                    _gotoNext = 2681453i32;
                } else if (__value__ == (2681453i32)) {
                    if (!_sawdigits_2680654) {
                        _gotoNext = 2681467i32;
                    } else {
                        _gotoNext = 2681482i32;
                    };
                } else if (__value__ == (2681467i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681482i32;
                } else if (__value__ == (2681482i32)) {
                    if (!_sawdot_2680637) {
                        _gotoNext = 2681493i32;
                    } else {
                        _gotoNext = 2681510i32;
                    };
                } else if (__value__ == (2681493i32)) {
                    _dp_2680696 = _nd_2680674;
                    _gotoNext = 2681510i32;
                } else if (__value__ == (2681510i32)) {
                    if (_base_2680394 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2681524i32;
                    } else {
                        _gotoNext = 2681769i32;
                    };
                } else if (__value__ == (2681524i32)) {
                    _dp_2680696 = (_dp_2680696 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2680683 = (_ndMant_2680683 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2681769i32;
                } else if (__value__ == (2681769i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2680459) : Bool)) {
                        _gotoNext = 2681809i32;
                    } else if (_base_2680394 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682242i32;
                    } else {
                        _gotoNext = 2682283i32;
                    };
                } else if (__value__ == (2681809i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2681834i32;
                    } else {
                        _gotoNext = 2681852i32;
                    };
                } else if (__value__ == (2681834i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681852i32;
                } else if (__value__ == (2681852i32)) {
                    _esign_2681852 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2681880i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2681913i32;
                    } else {
                        _gotoNext = 2681942i32;
                    };
                } else if (__value__ == (2681880i32)) {
                    _i++;
                    _gotoNext = 2681942i32;
                } else if (__value__ == (2681913i32)) {
                    _i++;
                    _esign_2681852 = (-1 : stdgo.GoInt);
                    _gotoNext = 2681942i32;
                } else if (__value__ == (2681942i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2681985i32;
                    } else {
                        _gotoNext = 2682003i32;
                    };
                } else if (__value__ == (2681985i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682003i32;
                } else if (__value__ == (2682003i32)) {
                    _e_2682003 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2682012i32;
                } else if (__value__ == (2682012i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2682081i32;
                    } else {
                        _gotoNext = 2682204i32;
                    };
                } else if (__value__ == (2682077i32)) {
                    _i++;
                    _gotoNext = 2682012i32;
                } else if (__value__ == (2682081i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2682101i32;
                    } else {
                        _gotoNext = 2682147i32;
                    };
                } else if (__value__ == (2682101i32)) {
                    _underscores_2680235 = true;
                    _i++;
                    _gotoNext = 2682012i32;
                } else if (__value__ == (2682147i32)) {
                    if ((_e_2682003 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2682160i32;
                    } else {
                        _gotoNext = 2682077i32;
                    };
                } else if (__value__ == (2682160i32)) {
                    _e_2682003 = (((_e_2682003 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2682077i32;
                } else if (__value__ == (2682204i32)) {
                    _dp_2680696 = (_dp_2680696 + ((_e_2682003 * _esign_2681852 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2682283i32;
                } else if (__value__ == (2682242i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682283i32;
                } else if (__value__ == (2682283i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682300i32;
                    } else {
                        _gotoNext = 2682327i32;
                    };
                } else if (__value__ == (2682300i32)) {
                    _exp = (_dp_2680696 - _ndMant_2680683 : stdgo.GoInt);
                    _gotoNext = 2682327i32;
                } else if (__value__ == (2682327i32)) {
                    if ((_underscores_2680235 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2682366i32;
                    } else {
                        _gotoNext = 2682382i32;
                    };
                } else if (__value__ == (2682366i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682382i32;
                } else if (__value__ == (2682382i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
