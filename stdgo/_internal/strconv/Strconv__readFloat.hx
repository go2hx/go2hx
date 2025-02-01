package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_2687189:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2687010:Bool = false;
        var _dp_2687471:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2687412:Bool = false;
        var _esign_2688627:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2687234:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2687169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_2687519:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_2687458:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2687449:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2687429:Bool = false;
        var _e_2688778:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2687010 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2687066i32;
                    } else {
                        _gotoNext = 2687081i32;
                    };
                } else if (__value__ == (2687066i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2687081i32;
                } else if (__value__ == (2687081i32)) {
                    _gotoNext = 2687081i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2687091i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2687116i32;
                    } else {
                        _gotoNext = 2687169i32;
                    };
                } else if (__value__ == (2687091i32)) {
                    _i++;
                    _gotoNext = 2687169i32;
                } else if (__value__ == (2687116i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2687169i32;
                } else if (__value__ == (2687169i32)) {
                    _base_2687169 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2687189 = (19 : stdgo.GoInt);
                    _expChar_2687234 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2687311i32;
                    } else {
                        _gotoNext = 2687412i32;
                    };
                } else if (__value__ == (2687311i32)) {
                    _base_2687169 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2687189 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2687234 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2687412i32;
                } else if (__value__ == (2687412i32)) {
                    _sawdot_2687412 = false;
                    _sawdigits_2687429 = false;
                    _nd_2687449 = (0 : stdgo.GoInt);
                    _ndMant_2687458 = (0 : stdgo.GoInt);
                    _dp_2687471 = (0 : stdgo.GoInt);
                    _gotoNext = 2687479i32;
                } else if (__value__ == (2687479i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2687486i32;
                } else if (__value__ == (2687486i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2687508i32;
                    } else {
                        _gotoNext = 2688228i32;
                    };
                } else if (__value__ == (2687508i32)) {
                    _gotoNext = 2687512i32;
                } else if (__value__ == (2687512i32)) {
                    {
                        _c_2687519 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2687519 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2687539i32;
                            } else if (__value__ == (_c_2687519 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2687591i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2687519 : Bool) && (_c_2687519 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2687684i32;
                            } else if (__value__ == (((_base_2687169 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2687519) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2687519) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2687976i32;
                            } else {
                                _gotoNext = 2688218i32;
                            };
                        };
                    };
                } else if (__value__ == (2687539i32)) {
                    _underscores_2687010 = true;
                    _i++;
                    _gotoNext = 2687486i32;
                } else if (__value__ == (2687591i32)) {
                    if (_sawdot_2687412) {
                        _gotoNext = 2687619i32;
                    } else {
                        _gotoNext = 2687644i32;
                    };
                } else if (__value__ == (2687619i32)) {
                    _loopBreak = true;
                    _gotoNext = 2687486i32;
                } else if (__value__ == (2687644i32)) {
                    _sawdot_2687412 = true;
                    _dp_2687471 = _nd_2687449;
                    _i++;
                    _gotoNext = 2687486i32;
                } else if (__value__ == (2687684i32)) {
                    _sawdigits_2687429 = true;
                    if (((_c_2687519 == (48 : stdgo.GoUInt8)) && (_nd_2687449 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2687757i32;
                    } else {
                        _gotoNext = 2687813i32;
                    };
                } else if (__value__ == (2687757i32)) {
                    _dp_2687471--;
                    _i++;
                    _gotoNext = 2687486i32;
                } else if (__value__ == (2687813i32)) {
                    _nd_2687449++;
                    if ((_ndMant_2687458 < _maxMantDigits_2687189 : Bool)) {
                        _gotoNext = 2687847i32;
                    } else if (_c_2687519 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2687937i32;
                    } else {
                        _gotoNext = 2687964i32;
                    };
                } else if (__value__ == (2687847i32)) {
                    _mantissa = (_mantissa * (_base_2687169) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2687519 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2687458++;
                    _gotoNext = 2687964i32;
                } else if (__value__ == (2687937i32)) {
                    _trunc = true;
                    _gotoNext = 2687964i32;
                } else if (__value__ == (2687964i32)) {
                    _i++;
                    _gotoNext = 2687486i32;
                } else if (__value__ == (2687976i32)) {
                    _sawdigits_2687429 = true;
                    _nd_2687449++;
                    if ((_ndMant_2687458 < _maxMantDigits_2687189 : Bool)) {
                        _gotoNext = 2688088i32;
                    } else {
                        _gotoNext = 2688176i32;
                    };
                } else if (__value__ == (2688088i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2687519) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2687458++;
                    _gotoNext = 2688203i32;
                } else if (__value__ == (2688176i32)) {
                    _gotoNext = 2688176i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2688203i32;
                } else if (__value__ == (2688203i32)) {
                    _i++;
                    _gotoNext = 2687486i32;
                } else if (__value__ == (2688218i32)) {
                    _gotoNext = 2688228i32;
                } else if (__value__ == (2688228i32)) {
                    if (!_sawdigits_2687429) {
                        _gotoNext = 2688242i32;
                    } else {
                        _gotoNext = 2688257i32;
                    };
                } else if (__value__ == (2688242i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688257i32;
                } else if (__value__ == (2688257i32)) {
                    if (!_sawdot_2687412) {
                        _gotoNext = 2688268i32;
                    } else {
                        _gotoNext = 2688285i32;
                    };
                } else if (__value__ == (2688268i32)) {
                    _dp_2687471 = _nd_2687449;
                    _gotoNext = 2688285i32;
                } else if (__value__ == (2688285i32)) {
                    if (_base_2687169 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2688299i32;
                    } else {
                        _gotoNext = 2688544i32;
                    };
                } else if (__value__ == (2688299i32)) {
                    _dp_2687471 = (_dp_2687471 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2687458 = (_ndMant_2687458 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2688544i32;
                } else if (__value__ == (2688544i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2687234) : Bool)) {
                        _gotoNext = 2688584i32;
                    } else if (_base_2687169 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2689017i32;
                    } else {
                        _gotoNext = 2689058i32;
                    };
                } else if (__value__ == (2688584i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2688609i32;
                    } else {
                        _gotoNext = 2688627i32;
                    };
                } else if (__value__ == (2688609i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688627i32;
                } else if (__value__ == (2688627i32)) {
                    _esign_2688627 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2688655i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2688688i32;
                    } else {
                        _gotoNext = 2688717i32;
                    };
                } else if (__value__ == (2688655i32)) {
                    _i++;
                    _gotoNext = 2688717i32;
                } else if (__value__ == (2688688i32)) {
                    _i++;
                    _esign_2688627 = (-1 : stdgo.GoInt);
                    _gotoNext = 2688717i32;
                } else if (__value__ == (2688717i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2688760i32;
                    } else {
                        _gotoNext = 2688778i32;
                    };
                } else if (__value__ == (2688760i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688778i32;
                } else if (__value__ == (2688778i32)) {
                    _e_2688778 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2688787i32;
                } else if (__value__ == (2688787i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2688856i32;
                    } else {
                        _gotoNext = 2688979i32;
                    };
                } else if (__value__ == (2688852i32)) {
                    _i++;
                    _gotoNext = 2688787i32;
                } else if (__value__ == (2688856i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2688876i32;
                    } else {
                        _gotoNext = 2688922i32;
                    };
                } else if (__value__ == (2688876i32)) {
                    _underscores_2687010 = true;
                    _i++;
                    _gotoNext = 2688787i32;
                } else if (__value__ == (2688922i32)) {
                    if ((_e_2688778 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2688935i32;
                    } else {
                        _gotoNext = 2688852i32;
                    };
                } else if (__value__ == (2688935i32)) {
                    _e_2688778 = (((_e_2688778 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2688852i32;
                } else if (__value__ == (2688979i32)) {
                    _dp_2687471 = (_dp_2687471 + ((_e_2688778 * _esign_2688627 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2689058i32;
                } else if (__value__ == (2689017i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689058i32;
                } else if (__value__ == (2689058i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2689075i32;
                    } else {
                        _gotoNext = 2689102i32;
                    };
                } else if (__value__ == (2689075i32)) {
                    _exp = (_dp_2687471 - _ndMant_2687458 : stdgo.GoInt);
                    _gotoNext = 2689102i32;
                } else if (__value__ == (2689102i32)) {
                    if ((_underscores_2687010 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2689141i32;
                    } else {
                        _gotoNext = 2689157i32;
                    };
                } else if (__value__ == (2689141i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689157i32;
                } else if (__value__ == (2689157i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
