package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2669137:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2667699:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2667922:Bool = false;
        var _expChar_2667744:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2667679:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _dp_2667981:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2667968:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2667959:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2667520:Bool = false;
        var _e_2669288:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2668029:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_2667939:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2667520 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2667576i32;
                    } else {
                        _gotoNext = 2667591i32;
                    };
                } else if (__value__ == (2667576i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2667591i32;
                } else if (__value__ == (2667591i32)) {
                    _gotoNext = 2667591i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2667601i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2667626i32;
                    } else {
                        _gotoNext = 2667679i32;
                    };
                } else if (__value__ == (2667601i32)) {
                    _i++;
                    _gotoNext = 2667679i32;
                } else if (__value__ == (2667626i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2667679i32;
                } else if (__value__ == (2667679i32)) {
                    _base_2667679 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2667699 = (19 : stdgo.GoInt);
                    _expChar_2667744 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2667821i32;
                    } else {
                        _gotoNext = 2667922i32;
                    };
                } else if (__value__ == (2667821i32)) {
                    _base_2667679 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2667699 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2667744 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2667922i32;
                } else if (__value__ == (2667922i32)) {
                    _sawdot_2667922 = false;
                    _sawdigits_2667939 = false;
                    _nd_2667959 = (0 : stdgo.GoInt);
                    _ndMant_2667968 = (0 : stdgo.GoInt);
                    _dp_2667981 = (0 : stdgo.GoInt);
                    _gotoNext = 2667989i32;
                } else if (__value__ == (2667989i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2667996i32;
                } else if (__value__ == (2667996i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2668018i32;
                    } else {
                        _gotoNext = 2668738i32;
                    };
                } else if (__value__ == (2668018i32)) {
                    _gotoNext = 2668022i32;
                } else if (__value__ == (2668022i32)) {
                    {
                        _c_2668029 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2668029 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2668049i32;
                            } else if (__value__ == (_c_2668029 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2668101i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2668029 : Bool) && (_c_2668029 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2668194i32;
                            } else if (__value__ == (((_base_2667679 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2668029) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2668029) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2668486i32;
                            } else {
                                _gotoNext = 2668728i32;
                            };
                        };
                    };
                } else if (__value__ == (2668049i32)) {
                    _underscores_2667520 = true;
                    _i++;
                    _gotoNext = 2667996i32;
                } else if (__value__ == (2668101i32)) {
                    if (_sawdot_2667922) {
                        _gotoNext = 2668129i32;
                    } else {
                        _gotoNext = 2668154i32;
                    };
                } else if (__value__ == (2668129i32)) {
                    _loopBreak = true;
                    _gotoNext = 2667996i32;
                } else if (__value__ == (2668154i32)) {
                    _sawdot_2667922 = true;
                    _dp_2667981 = _nd_2667959;
                    _i++;
                    _gotoNext = 2667996i32;
                } else if (__value__ == (2668194i32)) {
                    _sawdigits_2667939 = true;
                    if (((_c_2668029 == (48 : stdgo.GoUInt8)) && (_nd_2667959 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2668267i32;
                    } else {
                        _gotoNext = 2668323i32;
                    };
                } else if (__value__ == (2668267i32)) {
                    _dp_2667981--;
                    _i++;
                    _gotoNext = 2667996i32;
                } else if (__value__ == (2668323i32)) {
                    _nd_2667959++;
                    if ((_ndMant_2667968 < _maxMantDigits_2667699 : Bool)) {
                        _gotoNext = 2668357i32;
                    } else if (_c_2668029 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2668447i32;
                    } else {
                        _gotoNext = 2668474i32;
                    };
                } else if (__value__ == (2668357i32)) {
                    _mantissa = (_mantissa * (_base_2667679) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2668029 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2667968++;
                    _gotoNext = 2668474i32;
                } else if (__value__ == (2668447i32)) {
                    _trunc = true;
                    _gotoNext = 2668474i32;
                } else if (__value__ == (2668474i32)) {
                    _i++;
                    _gotoNext = 2667996i32;
                } else if (__value__ == (2668486i32)) {
                    _sawdigits_2667939 = true;
                    _nd_2667959++;
                    if ((_ndMant_2667968 < _maxMantDigits_2667699 : Bool)) {
                        _gotoNext = 2668598i32;
                    } else {
                        _gotoNext = 2668686i32;
                    };
                } else if (__value__ == (2668598i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2668029) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2667968++;
                    _gotoNext = 2668713i32;
                } else if (__value__ == (2668686i32)) {
                    _gotoNext = 2668686i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2668713i32;
                } else if (__value__ == (2668713i32)) {
                    _i++;
                    _gotoNext = 2667996i32;
                } else if (__value__ == (2668728i32)) {
                    _gotoNext = 2668738i32;
                } else if (__value__ == (2668738i32)) {
                    if (!_sawdigits_2667939) {
                        _gotoNext = 2668752i32;
                    } else {
                        _gotoNext = 2668767i32;
                    };
                } else if (__value__ == (2668752i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2668767i32;
                } else if (__value__ == (2668767i32)) {
                    if (!_sawdot_2667922) {
                        _gotoNext = 2668778i32;
                    } else {
                        _gotoNext = 2668795i32;
                    };
                } else if (__value__ == (2668778i32)) {
                    _dp_2667981 = _nd_2667959;
                    _gotoNext = 2668795i32;
                } else if (__value__ == (2668795i32)) {
                    if (_base_2667679 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2668809i32;
                    } else {
                        _gotoNext = 2669054i32;
                    };
                } else if (__value__ == (2668809i32)) {
                    _dp_2667981 = (_dp_2667981 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2667968 = (_ndMant_2667968 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2669054i32;
                } else if (__value__ == (2669054i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2667744) : Bool)) {
                        _gotoNext = 2669094i32;
                    } else if (_base_2667679 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2669527i32;
                    } else {
                        _gotoNext = 2669568i32;
                    };
                } else if (__value__ == (2669094i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2669119i32;
                    } else {
                        _gotoNext = 2669137i32;
                    };
                } else if (__value__ == (2669119i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2669137i32;
                } else if (__value__ == (2669137i32)) {
                    _esign_2669137 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2669165i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2669198i32;
                    } else {
                        _gotoNext = 2669227i32;
                    };
                } else if (__value__ == (2669165i32)) {
                    _i++;
                    _gotoNext = 2669227i32;
                } else if (__value__ == (2669198i32)) {
                    _i++;
                    _esign_2669137 = (-1 : stdgo.GoInt);
                    _gotoNext = 2669227i32;
                } else if (__value__ == (2669227i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2669270i32;
                    } else {
                        _gotoNext = 2669288i32;
                    };
                } else if (__value__ == (2669270i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2669288i32;
                } else if (__value__ == (2669288i32)) {
                    _e_2669288 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2669297i32;
                } else if (__value__ == (2669297i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2669366i32;
                    } else {
                        _gotoNext = 2669489i32;
                    };
                } else if (__value__ == (2669362i32)) {
                    _i++;
                    _gotoNext = 2669297i32;
                } else if (__value__ == (2669366i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2669386i32;
                    } else {
                        _gotoNext = 2669432i32;
                    };
                } else if (__value__ == (2669386i32)) {
                    _underscores_2667520 = true;
                    _i++;
                    _gotoNext = 2669297i32;
                } else if (__value__ == (2669432i32)) {
                    if ((_e_2669288 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2669445i32;
                    } else {
                        _gotoNext = 2669362i32;
                    };
                } else if (__value__ == (2669445i32)) {
                    _e_2669288 = (((_e_2669288 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2669362i32;
                } else if (__value__ == (2669489i32)) {
                    _dp_2667981 = (_dp_2667981 + ((_e_2669288 * _esign_2669137 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2669568i32;
                } else if (__value__ == (2669527i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2669568i32;
                } else if (__value__ == (2669568i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2669585i32;
                    } else {
                        _gotoNext = 2669612i32;
                    };
                } else if (__value__ == (2669585i32)) {
                    _exp = (_dp_2667981 - _ndMant_2667968 : stdgo.GoInt);
                    _gotoNext = 2669612i32;
                } else if (__value__ == (2669612i32)) {
                    if ((_underscores_2667520 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2669651i32;
                    } else {
                        _gotoNext = 2669667i32;
                    };
                } else if (__value__ == (2669651i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2669667i32;
                } else if (__value__ == (2669667i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
