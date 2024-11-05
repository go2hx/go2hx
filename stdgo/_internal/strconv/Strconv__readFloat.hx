package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2675119:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2674895:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2674850:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2676288:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2675132:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2675090:Bool = false;
        var _c_2675180:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _nd_2675110:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2674830:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2674671:Bool = false;
        var _e_2676439:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2675073:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2674671 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2674727i32;
                    } else {
                        _gotoNext = 2674742i32;
                    };
                } else if (__value__ == (2674727i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2674742i32;
                } else if (__value__ == (2674742i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2674742i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2674752i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2674777i32;
                    } else {
                        _gotoNext = 2674830i32;
                    };
                } else if (__value__ == (2674752i32)) {
                    _i++;
                    _gotoNext = 2674830i32;
                } else if (__value__ == (2674777i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2674830i32;
                } else if (__value__ == (2674830i32)) {
                    _base_2674830 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2674850 = (19 : stdgo.GoInt);
                    _expChar_2674895 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2674972i32;
                    } else {
                        _gotoNext = 2675073i32;
                    };
                } else if (__value__ == (2674972i32)) {
                    _base_2674830 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2674850 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2674895 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2675073i32;
                } else if (__value__ == (2675073i32)) {
                    _sawdot_2675073 = false;
                    _sawdigits_2675090 = false;
                    _nd_2675110 = (0 : stdgo.GoInt);
                    _ndMant_2675119 = (0 : stdgo.GoInt);
                    _dp_2675132 = (0 : stdgo.GoInt);
                    _gotoNext = 2675140i32;
                } else if (__value__ == (2675140i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2675147i32;
                } else if (__value__ == (2675147i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2675169i32;
                    } else {
                        _gotoNext = 2675889i32;
                    };
                } else if (__value__ == (2675169i32)) {
                    _c_2675180 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2675173i32;
                } else if (__value__ == (2675173i32)) {
                    {
                        _c_2675180 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2675180 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2675200i32;
                            } else if (__value__ == (_c_2675180 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2675252i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2675180 : Bool) && (_c_2675180 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2675345i32;
                            } else if (__value__ == (((_base_2674830 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2675180) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2675180) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2675637i32;
                            } else {
                                _gotoNext = 2675879i32;
                            };
                        };
                    };
                } else if (__value__ == (2675200i32)) {
                    _underscores_2674671 = true;
                    _i++;
                    _gotoNext = 2675147i32;
                } else if (__value__ == (2675252i32)) {
                    if (_sawdot_2675073) {
                        _gotoNext = 2675280i32;
                    } else {
                        _gotoNext = 2675305i32;
                    };
                } else if (__value__ == (2675280i32)) {
                    _loopBreak = true;
                    _gotoNext = 2675147i32;
                } else if (__value__ == (2675305i32)) {
                    _sawdot_2675073 = true;
                    _dp_2675132 = _nd_2675110;
                    _i++;
                    _gotoNext = 2675147i32;
                } else if (__value__ == (2675345i32)) {
                    _sawdigits_2675090 = true;
                    if (((_c_2675180 == (48 : stdgo.GoUInt8)) && (_nd_2675110 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2675418i32;
                    } else {
                        _gotoNext = 2675474i32;
                    };
                } else if (__value__ == (2675418i32)) {
                    _dp_2675132--;
                    _i++;
                    _gotoNext = 2675147i32;
                } else if (__value__ == (2675474i32)) {
                    _nd_2675110++;
                    if ((_ndMant_2675119 < _maxMantDigits_2674850 : Bool)) {
                        _gotoNext = 2675508i32;
                    } else if (_c_2675180 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2675598i32;
                    } else {
                        _gotoNext = 2675625i32;
                    };
                } else if (__value__ == (2675508i32)) {
                    _mantissa = (_mantissa * (_base_2674830) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2675180 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2675119++;
                    _gotoNext = 2675625i32;
                } else if (__value__ == (2675598i32)) {
                    _trunc = true;
                    _gotoNext = 2675625i32;
                } else if (__value__ == (2675625i32)) {
                    _i++;
                    _gotoNext = 2675147i32;
                } else if (__value__ == (2675637i32)) {
                    _sawdigits_2675090 = true;
                    _nd_2675110++;
                    if ((_ndMant_2675119 < _maxMantDigits_2674850 : Bool)) {
                        _gotoNext = 2675749i32;
                    } else {
                        _gotoNext = 2675837i32;
                    };
                } else if (__value__ == (2675749i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2675180) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2675119++;
                    _gotoNext = 2675864i32;
                } else if (__value__ == (2675837i32)) {
                    _trunc = true;
                    _gotoNext = 2675864i32;
                } else if (__value__ == (2675864i32)) {
                    _i++;
                    _gotoNext = 2675147i32;
                } else if (__value__ == (2675879i32)) {
                    _gotoNext = 2675889i32;
                } else if (__value__ == (2675889i32)) {
                    if (!_sawdigits_2675090) {
                        _gotoNext = 2675903i32;
                    } else {
                        _gotoNext = 2675918i32;
                    };
                } else if (__value__ == (2675903i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2675918i32;
                } else if (__value__ == (2675918i32)) {
                    if (!_sawdot_2675073) {
                        _gotoNext = 2675929i32;
                    } else {
                        _gotoNext = 2675946i32;
                    };
                } else if (__value__ == (2675929i32)) {
                    _dp_2675132 = _nd_2675110;
                    _gotoNext = 2675946i32;
                } else if (__value__ == (2675946i32)) {
                    if (_base_2674830 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2675960i32;
                    } else {
                        _gotoNext = 2676205i32;
                    };
                } else if (__value__ == (2675960i32)) {
                    _dp_2675132 = (_dp_2675132 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2675119 = (_ndMant_2675119 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2676205i32;
                } else if (__value__ == (2676205i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2674895) : Bool)) {
                        _gotoNext = 2676245i32;
                    } else if (_base_2674830 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2676678i32;
                    } else {
                        _gotoNext = 2676719i32;
                    };
                } else if (__value__ == (2676245i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2676270i32;
                    } else {
                        _gotoNext = 2676288i32;
                    };
                } else if (__value__ == (2676270i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2676288i32;
                } else if (__value__ == (2676288i32)) {
                    _esign_2676288 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2676316i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2676349i32;
                    } else {
                        _gotoNext = 2676378i32;
                    };
                } else if (__value__ == (2676316i32)) {
                    _i++;
                    _gotoNext = 2676378i32;
                } else if (__value__ == (2676349i32)) {
                    _i++;
                    _esign_2676288 = (-1 : stdgo.GoInt);
                    _gotoNext = 2676378i32;
                } else if (__value__ == (2676378i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2676421i32;
                    } else {
                        _gotoNext = 2676439i32;
                    };
                } else if (__value__ == (2676421i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2676439i32;
                } else if (__value__ == (2676439i32)) {
                    _e_2676439 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2676448i32;
                } else if (__value__ == (2676448i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2676517i32;
                    } else {
                        _gotoNext = 2676640i32;
                    };
                } else if (__value__ == (2676513i32)) {
                    _i++;
                    _gotoNext = 2676448i32;
                } else if (__value__ == (2676517i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2676537i32;
                    } else {
                        _gotoNext = 2676583i32;
                    };
                } else if (__value__ == (2676537i32)) {
                    _underscores_2674671 = true;
                    _i++;
                    _gotoNext = 2676448i32;
                } else if (__value__ == (2676583i32)) {
                    if ((_e_2676439 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2676596i32;
                    } else {
                        _gotoNext = 2676513i32;
                    };
                } else if (__value__ == (2676596i32)) {
                    _e_2676439 = (((_e_2676439 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2676513i32;
                } else if (__value__ == (2676640i32)) {
                    _dp_2675132 = (_dp_2675132 + ((_e_2676439 * _esign_2676288 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2676719i32;
                } else if (__value__ == (2676678i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2676719i32;
                } else if (__value__ == (2676719i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2676736i32;
                    } else {
                        _gotoNext = 2676763i32;
                    };
                } else if (__value__ == (2676736i32)) {
                    _exp = (_dp_2675132 - _ndMant_2675119 : stdgo.GoInt);
                    _gotoNext = 2676763i32;
                } else if (__value__ == (2676763i32)) {
                    if ((_underscores_2674671 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2676802i32;
                    } else {
                        _gotoNext = 2676818i32;
                    };
                } else if (__value__ == (2676802i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2676818i32;
                } else if (__value__ == (2676818i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
