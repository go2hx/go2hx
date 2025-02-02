package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2728693:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2728632:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2728603:Bool = false;
        var _sawdot_2728586:Bool = false;
        var _maxMantDigits_2728363:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2728343:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2729952:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_2728623:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2728408:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2728184:Bool = false;
        var _esign_2729801:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2728645:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2728184 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2728240i32;
                    } else {
                        _gotoNext = 2728255i32;
                    };
                } else if (__value__ == (2728240i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2728255i32;
                } else if (__value__ == (2728255i32)) {
                    _gotoNext = 2728255i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2728265i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2728290i32;
                    } else {
                        _gotoNext = 2728343i32;
                    };
                } else if (__value__ == (2728265i32)) {
                    _i++;
                    _gotoNext = 2728343i32;
                } else if (__value__ == (2728290i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2728343i32;
                } else if (__value__ == (2728343i32)) {
                    _base_2728343 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2728363 = (19 : stdgo.GoInt);
                    _expChar_2728408 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2728485i32;
                    } else {
                        _gotoNext = 2728586i32;
                    };
                } else if (__value__ == (2728485i32)) {
                    _base_2728343 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2728363 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2728408 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2728586i32;
                } else if (__value__ == (2728586i32)) {
                    _sawdot_2728586 = false;
                    _sawdigits_2728603 = false;
                    _nd_2728623 = (0 : stdgo.GoInt);
                    _ndMant_2728632 = (0 : stdgo.GoInt);
                    _dp_2728645 = (0 : stdgo.GoInt);
                    _gotoNext = 2728653i32;
                } else if (__value__ == (2728653i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2728660i32;
                } else if (__value__ == (2728660i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2728682i32;
                    } else {
                        _gotoNext = 2729402i32;
                    };
                } else if (__value__ == (2728682i32)) {
                    _gotoNext = 2728686i32;
                } else if (__value__ == (2728686i32)) {
                    {
                        _c_2728693 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2728693 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2728713i32;
                            } else if (__value__ == (_c_2728693 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2728765i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2728693 : Bool) && (_c_2728693 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2728858i32;
                            } else if (__value__ == (((_base_2728343 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2728693) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2728693) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2729150i32;
                            } else {
                                _gotoNext = 2729392i32;
                            };
                        };
                    };
                } else if (__value__ == (2728713i32)) {
                    _underscores_2728184 = true;
                    _i++;
                    _gotoNext = 2728660i32;
                } else if (__value__ == (2728765i32)) {
                    if (_sawdot_2728586) {
                        _gotoNext = 2728793i32;
                    } else {
                        _gotoNext = 2728818i32;
                    };
                } else if (__value__ == (2728793i32)) {
                    _loopBreak = true;
                    _gotoNext = 2728660i32;
                } else if (__value__ == (2728818i32)) {
                    _sawdot_2728586 = true;
                    _dp_2728645 = _nd_2728623;
                    _i++;
                    _gotoNext = 2728660i32;
                } else if (__value__ == (2728858i32)) {
                    _sawdigits_2728603 = true;
                    if (((_c_2728693 == (48 : stdgo.GoUInt8)) && (_nd_2728623 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2728931i32;
                    } else {
                        _gotoNext = 2728987i32;
                    };
                } else if (__value__ == (2728931i32)) {
                    _dp_2728645--;
                    _i++;
                    _gotoNext = 2728660i32;
                } else if (__value__ == (2728987i32)) {
                    _nd_2728623++;
                    if ((_ndMant_2728632 < _maxMantDigits_2728363 : Bool)) {
                        _gotoNext = 2729021i32;
                    } else if (_c_2728693 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2729111i32;
                    } else {
                        _gotoNext = 2729138i32;
                    };
                } else if (__value__ == (2729021i32)) {
                    _mantissa = (_mantissa * (_base_2728343) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2728693 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2728632++;
                    _gotoNext = 2729138i32;
                } else if (__value__ == (2729111i32)) {
                    _trunc = true;
                    _gotoNext = 2729138i32;
                } else if (__value__ == (2729138i32)) {
                    _i++;
                    _gotoNext = 2728660i32;
                } else if (__value__ == (2729150i32)) {
                    _sawdigits_2728603 = true;
                    _nd_2728623++;
                    if ((_ndMant_2728632 < _maxMantDigits_2728363 : Bool)) {
                        _gotoNext = 2729262i32;
                    } else {
                        _gotoNext = 2729350i32;
                    };
                } else if (__value__ == (2729262i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2728693) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2728632++;
                    _gotoNext = 2729377i32;
                } else if (__value__ == (2729350i32)) {
                    _gotoNext = 2729350i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2729377i32;
                } else if (__value__ == (2729377i32)) {
                    _i++;
                    _gotoNext = 2728660i32;
                } else if (__value__ == (2729392i32)) {
                    _gotoNext = 2729402i32;
                } else if (__value__ == (2729402i32)) {
                    if (!_sawdigits_2728603) {
                        _gotoNext = 2729416i32;
                    } else {
                        _gotoNext = 2729431i32;
                    };
                } else if (__value__ == (2729416i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2729431i32;
                } else if (__value__ == (2729431i32)) {
                    if (!_sawdot_2728586) {
                        _gotoNext = 2729442i32;
                    } else {
                        _gotoNext = 2729459i32;
                    };
                } else if (__value__ == (2729442i32)) {
                    _dp_2728645 = _nd_2728623;
                    _gotoNext = 2729459i32;
                } else if (__value__ == (2729459i32)) {
                    if (_base_2728343 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2729473i32;
                    } else {
                        _gotoNext = 2729718i32;
                    };
                } else if (__value__ == (2729473i32)) {
                    _dp_2728645 = (_dp_2728645 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2728632 = (_ndMant_2728632 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2729718i32;
                } else if (__value__ == (2729718i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2728408) : Bool)) {
                        _gotoNext = 2729758i32;
                    } else if (_base_2728343 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2730191i32;
                    } else {
                        _gotoNext = 2730232i32;
                    };
                } else if (__value__ == (2729758i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2729783i32;
                    } else {
                        _gotoNext = 2729801i32;
                    };
                } else if (__value__ == (2729783i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2729801i32;
                } else if (__value__ == (2729801i32)) {
                    _esign_2729801 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2729829i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2729862i32;
                    } else {
                        _gotoNext = 2729891i32;
                    };
                } else if (__value__ == (2729829i32)) {
                    _i++;
                    _gotoNext = 2729891i32;
                } else if (__value__ == (2729862i32)) {
                    _i++;
                    _esign_2729801 = (-1 : stdgo.GoInt);
                    _gotoNext = 2729891i32;
                } else if (__value__ == (2729891i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2729934i32;
                    } else {
                        _gotoNext = 2729952i32;
                    };
                } else if (__value__ == (2729934i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2729952i32;
                } else if (__value__ == (2729952i32)) {
                    _e_2729952 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2729961i32;
                } else if (__value__ == (2729961i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2730030i32;
                    } else {
                        _gotoNext = 2730153i32;
                    };
                } else if (__value__ == (2730026i32)) {
                    _i++;
                    _gotoNext = 2729961i32;
                } else if (__value__ == (2730030i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2730050i32;
                    } else {
                        _gotoNext = 2730096i32;
                    };
                } else if (__value__ == (2730050i32)) {
                    _underscores_2728184 = true;
                    _i++;
                    _gotoNext = 2729961i32;
                } else if (__value__ == (2730096i32)) {
                    if ((_e_2729952 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2730109i32;
                    } else {
                        _gotoNext = 2730026i32;
                    };
                } else if (__value__ == (2730109i32)) {
                    _e_2729952 = (((_e_2729952 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2730026i32;
                } else if (__value__ == (2730153i32)) {
                    _dp_2728645 = (_dp_2728645 + ((_e_2729952 * _esign_2729801 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2730232i32;
                } else if (__value__ == (2730191i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2730232i32;
                } else if (__value__ == (2730232i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2730249i32;
                    } else {
                        _gotoNext = 2730276i32;
                    };
                } else if (__value__ == (2730249i32)) {
                    _exp = (_dp_2728645 - _ndMant_2728632 : stdgo.GoInt);
                    _gotoNext = 2730276i32;
                } else if (__value__ == (2730276i32)) {
                    if ((_underscores_2728184 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2730315i32;
                    } else {
                        _gotoNext = 2730331i32;
                    };
                } else if (__value__ == (2730315i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2730331i32;
                } else if (__value__ == (2730331i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
