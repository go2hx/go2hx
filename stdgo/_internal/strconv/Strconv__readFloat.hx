package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _sawdigits_2664450:Bool = false;
        var _expChar_2664255:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_2664540:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2664492:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2665799:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2664479:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2664470:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2664433:Bool = false;
        var _base_2664190:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2665648:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2664210:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2664031:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2664031 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2664087i32;
                    } else {
                        _gotoNext = 2664102i32;
                    };
                } else if (__value__ == (2664087i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2664102i32;
                } else if (__value__ == (2664102i32)) {
                    _gotoNext = 2664102i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2664112i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2664137i32;
                    } else {
                        _gotoNext = 2664190i32;
                    };
                } else if (__value__ == (2664112i32)) {
                    _i++;
                    _gotoNext = 2664190i32;
                } else if (__value__ == (2664137i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2664190i32;
                } else if (__value__ == (2664190i32)) {
                    _base_2664190 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2664210 = (19 : stdgo.GoInt);
                    _expChar_2664255 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2664332i32;
                    } else {
                        _gotoNext = 2664433i32;
                    };
                } else if (__value__ == (2664332i32)) {
                    _base_2664190 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2664210 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2664255 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2664433i32;
                } else if (__value__ == (2664433i32)) {
                    _sawdot_2664433 = false;
                    _sawdigits_2664450 = false;
                    _nd_2664470 = (0 : stdgo.GoInt);
                    _ndMant_2664479 = (0 : stdgo.GoInt);
                    _dp_2664492 = (0 : stdgo.GoInt);
                    _gotoNext = 2664500i32;
                } else if (__value__ == (2664500i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2664507i32;
                } else if (__value__ == (2664507i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2664529i32;
                    } else {
                        _gotoNext = 2665249i32;
                    };
                } else if (__value__ == (2664529i32)) {
                    _gotoNext = 2664533i32;
                } else if (__value__ == (2664533i32)) {
                    {
                        _c_2664540 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2664540 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2664560i32;
                            } else if (__value__ == (_c_2664540 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2664612i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2664540 : Bool) && (_c_2664540 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2664705i32;
                            } else if (__value__ == (((_base_2664190 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2664540) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2664540) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2664997i32;
                            } else {
                                _gotoNext = 2665239i32;
                            };
                        };
                    };
                } else if (__value__ == (2664560i32)) {
                    _underscores_2664031 = true;
                    _i++;
                    _gotoNext = 2664507i32;
                } else if (__value__ == (2664612i32)) {
                    if (_sawdot_2664433) {
                        _gotoNext = 2664640i32;
                    } else {
                        _gotoNext = 2664665i32;
                    };
                } else if (__value__ == (2664640i32)) {
                    _loopBreak = true;
                    _gotoNext = 2664507i32;
                } else if (__value__ == (2664665i32)) {
                    _sawdot_2664433 = true;
                    _dp_2664492 = _nd_2664470;
                    _i++;
                    _gotoNext = 2664507i32;
                } else if (__value__ == (2664705i32)) {
                    _sawdigits_2664450 = true;
                    if (((_c_2664540 == (48 : stdgo.GoUInt8)) && (_nd_2664470 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2664778i32;
                    } else {
                        _gotoNext = 2664834i32;
                    };
                } else if (__value__ == (2664778i32)) {
                    _dp_2664492--;
                    _i++;
                    _gotoNext = 2664507i32;
                } else if (__value__ == (2664834i32)) {
                    _nd_2664470++;
                    if ((_ndMant_2664479 < _maxMantDigits_2664210 : Bool)) {
                        _gotoNext = 2664868i32;
                    } else if (_c_2664540 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2664958i32;
                    } else {
                        _gotoNext = 2664985i32;
                    };
                } else if (__value__ == (2664868i32)) {
                    _mantissa = (_mantissa * (_base_2664190) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2664540 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2664479++;
                    _gotoNext = 2664985i32;
                } else if (__value__ == (2664958i32)) {
                    _trunc = true;
                    _gotoNext = 2664985i32;
                } else if (__value__ == (2664985i32)) {
                    _i++;
                    _gotoNext = 2664507i32;
                } else if (__value__ == (2664997i32)) {
                    _sawdigits_2664450 = true;
                    _nd_2664470++;
                    if ((_ndMant_2664479 < _maxMantDigits_2664210 : Bool)) {
                        _gotoNext = 2665109i32;
                    } else {
                        _gotoNext = 2665197i32;
                    };
                } else if (__value__ == (2665109i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2664540) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2664479++;
                    _gotoNext = 2665224i32;
                } else if (__value__ == (2665197i32)) {
                    _gotoNext = 2665197i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2665224i32;
                } else if (__value__ == (2665224i32)) {
                    _i++;
                    _gotoNext = 2664507i32;
                } else if (__value__ == (2665239i32)) {
                    _gotoNext = 2665249i32;
                } else if (__value__ == (2665249i32)) {
                    if (!_sawdigits_2664450) {
                        _gotoNext = 2665263i32;
                    } else {
                        _gotoNext = 2665278i32;
                    };
                } else if (__value__ == (2665263i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2665278i32;
                } else if (__value__ == (2665278i32)) {
                    if (!_sawdot_2664433) {
                        _gotoNext = 2665289i32;
                    } else {
                        _gotoNext = 2665306i32;
                    };
                } else if (__value__ == (2665289i32)) {
                    _dp_2664492 = _nd_2664470;
                    _gotoNext = 2665306i32;
                } else if (__value__ == (2665306i32)) {
                    if (_base_2664190 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2665320i32;
                    } else {
                        _gotoNext = 2665565i32;
                    };
                } else if (__value__ == (2665320i32)) {
                    _dp_2664492 = (_dp_2664492 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2664479 = (_ndMant_2664479 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2665565i32;
                } else if (__value__ == (2665565i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2664255) : Bool)) {
                        _gotoNext = 2665605i32;
                    } else if (_base_2664190 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2666038i32;
                    } else {
                        _gotoNext = 2666079i32;
                    };
                } else if (__value__ == (2665605i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2665630i32;
                    } else {
                        _gotoNext = 2665648i32;
                    };
                } else if (__value__ == (2665630i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2665648i32;
                } else if (__value__ == (2665648i32)) {
                    _esign_2665648 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2665676i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2665709i32;
                    } else {
                        _gotoNext = 2665738i32;
                    };
                } else if (__value__ == (2665676i32)) {
                    _i++;
                    _gotoNext = 2665738i32;
                } else if (__value__ == (2665709i32)) {
                    _i++;
                    _esign_2665648 = (-1 : stdgo.GoInt);
                    _gotoNext = 2665738i32;
                } else if (__value__ == (2665738i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2665781i32;
                    } else {
                        _gotoNext = 2665799i32;
                    };
                } else if (__value__ == (2665781i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2665799i32;
                } else if (__value__ == (2665799i32)) {
                    _e_2665799 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2665808i32;
                } else if (__value__ == (2665808i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2665877i32;
                    } else {
                        _gotoNext = 2666000i32;
                    };
                } else if (__value__ == (2665873i32)) {
                    _i++;
                    _gotoNext = 2665808i32;
                } else if (__value__ == (2665877i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2665897i32;
                    } else {
                        _gotoNext = 2665943i32;
                    };
                } else if (__value__ == (2665897i32)) {
                    _underscores_2664031 = true;
                    _i++;
                    _gotoNext = 2665808i32;
                } else if (__value__ == (2665943i32)) {
                    if ((_e_2665799 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2665956i32;
                    } else {
                        _gotoNext = 2665873i32;
                    };
                } else if (__value__ == (2665956i32)) {
                    _e_2665799 = (((_e_2665799 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2665873i32;
                } else if (__value__ == (2666000i32)) {
                    _dp_2664492 = (_dp_2664492 + ((_e_2665799 * _esign_2665648 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2666079i32;
                } else if (__value__ == (2666038i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2666079i32;
                } else if (__value__ == (2666079i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2666096i32;
                    } else {
                        _gotoNext = 2666123i32;
                    };
                } else if (__value__ == (2666096i32)) {
                    _exp = (_dp_2664492 - _ndMant_2664479 : stdgo.GoInt);
                    _gotoNext = 2666123i32;
                } else if (__value__ == (2666123i32)) {
                    if ((_underscores_2664031 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2666162i32;
                    } else {
                        _gotoNext = 2666178i32;
                    };
                } else if (__value__ == (2666162i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2666178i32;
                } else if (__value__ == (2666178i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
