package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2835112:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2835064:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2835022:Bool = false;
        var _base_2834762:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2834603:Bool = false;
        var _ndMant_2835051:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2835042:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2835005:Bool = false;
        var _expChar_2834827:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _maxMantDigits_2834782:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2836371:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2836220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2834603 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2834659i32;
                    } else {
                        _gotoNext = 2834674i32;
                    };
                } else if (__value__ == (2834659i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2834674i32;
                } else if (__value__ == (2834674i32)) {
                    _gotoNext = 2834674i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2834684i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2834709i32;
                    } else {
                        _gotoNext = 2834762i32;
                    };
                } else if (__value__ == (2834684i32)) {
                    _i++;
                    _gotoNext = 2834762i32;
                } else if (__value__ == (2834709i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2834762i32;
                } else if (__value__ == (2834762i32)) {
                    _base_2834762 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2834782 = (19 : stdgo.GoInt);
                    _expChar_2834827 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2834904i32;
                    } else {
                        _gotoNext = 2835005i32;
                    };
                } else if (__value__ == (2834904i32)) {
                    _base_2834762 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2834782 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2834827 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2835005i32;
                } else if (__value__ == (2835005i32)) {
                    _sawdot_2835005 = false;
                    _sawdigits_2835022 = false;
                    _nd_2835042 = (0 : stdgo.GoInt);
                    _ndMant_2835051 = (0 : stdgo.GoInt);
                    _dp_2835064 = (0 : stdgo.GoInt);
                    _gotoNext = 2835072i32;
                } else if (__value__ == (2835072i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2835079i32;
                } else if (__value__ == (2835079i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2835101i32;
                    } else {
                        _gotoNext = 2835821i32;
                    };
                } else if (__value__ == (2835101i32)) {
                    _gotoNext = 2835105i32;
                } else if (__value__ == (2835105i32)) {
                    {
                        _c_2835112 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2835112 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2835132i32;
                            } else if (__value__ == (_c_2835112 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2835184i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2835112 : Bool) && (_c_2835112 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2835277i32;
                            } else if (__value__ == (((_base_2834762 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2835112) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2835112) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2835569i32;
                            } else {
                                _gotoNext = 2835811i32;
                            };
                        };
                    };
                } else if (__value__ == (2835132i32)) {
                    _underscores_2834603 = true;
                    _i++;
                    _gotoNext = 2835079i32;
                } else if (__value__ == (2835184i32)) {
                    if (_sawdot_2835005) {
                        _gotoNext = 2835212i32;
                    } else {
                        _gotoNext = 2835237i32;
                    };
                } else if (__value__ == (2835212i32)) {
                    _loopBreak = true;
                    _gotoNext = 2835079i32;
                } else if (__value__ == (2835237i32)) {
                    _sawdot_2835005 = true;
                    _dp_2835064 = _nd_2835042;
                    _i++;
                    _gotoNext = 2835079i32;
                } else if (__value__ == (2835277i32)) {
                    _sawdigits_2835022 = true;
                    if (((_c_2835112 == (48 : stdgo.GoUInt8)) && (_nd_2835042 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2835350i32;
                    } else {
                        _gotoNext = 2835406i32;
                    };
                } else if (__value__ == (2835350i32)) {
                    _dp_2835064--;
                    _i++;
                    _gotoNext = 2835079i32;
                } else if (__value__ == (2835406i32)) {
                    _nd_2835042++;
                    if ((_ndMant_2835051 < _maxMantDigits_2834782 : Bool)) {
                        _gotoNext = 2835440i32;
                    } else if (_c_2835112 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2835530i32;
                    } else {
                        _gotoNext = 2835557i32;
                    };
                } else if (__value__ == (2835440i32)) {
                    _mantissa = (_mantissa * (_base_2834762) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2835112 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2835051++;
                    _gotoNext = 2835557i32;
                } else if (__value__ == (2835530i32)) {
                    _trunc = true;
                    _gotoNext = 2835557i32;
                } else if (__value__ == (2835557i32)) {
                    _i++;
                    _gotoNext = 2835079i32;
                } else if (__value__ == (2835569i32)) {
                    _sawdigits_2835022 = true;
                    _nd_2835042++;
                    if ((_ndMant_2835051 < _maxMantDigits_2834782 : Bool)) {
                        _gotoNext = 2835681i32;
                    } else {
                        _gotoNext = 2835769i32;
                    };
                } else if (__value__ == (2835681i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2835112) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2835051++;
                    _gotoNext = 2835796i32;
                } else if (__value__ == (2835769i32)) {
                    _gotoNext = 2835769i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2835796i32;
                } else if (__value__ == (2835796i32)) {
                    _i++;
                    _gotoNext = 2835079i32;
                } else if (__value__ == (2835811i32)) {
                    _gotoNext = 2835821i32;
                } else if (__value__ == (2835821i32)) {
                    if (!_sawdigits_2835022) {
                        _gotoNext = 2835835i32;
                    } else {
                        _gotoNext = 2835850i32;
                    };
                } else if (__value__ == (2835835i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2835850i32;
                } else if (__value__ == (2835850i32)) {
                    if (!_sawdot_2835005) {
                        _gotoNext = 2835861i32;
                    } else {
                        _gotoNext = 2835878i32;
                    };
                } else if (__value__ == (2835861i32)) {
                    _dp_2835064 = _nd_2835042;
                    _gotoNext = 2835878i32;
                } else if (__value__ == (2835878i32)) {
                    if (_base_2834762 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2835892i32;
                    } else {
                        _gotoNext = 2836137i32;
                    };
                } else if (__value__ == (2835892i32)) {
                    _dp_2835064 = (_dp_2835064 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2835051 = (_ndMant_2835051 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2836137i32;
                } else if (__value__ == (2836137i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2834827) : Bool)) {
                        _gotoNext = 2836177i32;
                    } else if (_base_2834762 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2836610i32;
                    } else {
                        _gotoNext = 2836651i32;
                    };
                } else if (__value__ == (2836177i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2836202i32;
                    } else {
                        _gotoNext = 2836220i32;
                    };
                } else if (__value__ == (2836202i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2836220i32;
                } else if (__value__ == (2836220i32)) {
                    _esign_2836220 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2836248i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2836281i32;
                    } else {
                        _gotoNext = 2836310i32;
                    };
                } else if (__value__ == (2836248i32)) {
                    _i++;
                    _gotoNext = 2836310i32;
                } else if (__value__ == (2836281i32)) {
                    _i++;
                    _esign_2836220 = (-1 : stdgo.GoInt);
                    _gotoNext = 2836310i32;
                } else if (__value__ == (2836310i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2836353i32;
                    } else {
                        _gotoNext = 2836371i32;
                    };
                } else if (__value__ == (2836353i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2836371i32;
                } else if (__value__ == (2836371i32)) {
                    _e_2836371 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2836380i32;
                } else if (__value__ == (2836380i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2836449i32;
                    } else {
                        _gotoNext = 2836572i32;
                    };
                } else if (__value__ == (2836445i32)) {
                    _i++;
                    _gotoNext = 2836380i32;
                } else if (__value__ == (2836449i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2836469i32;
                    } else {
                        _gotoNext = 2836515i32;
                    };
                } else if (__value__ == (2836469i32)) {
                    _underscores_2834603 = true;
                    _i++;
                    _gotoNext = 2836380i32;
                } else if (__value__ == (2836515i32)) {
                    if ((_e_2836371 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2836528i32;
                    } else {
                        _gotoNext = 2836445i32;
                    };
                } else if (__value__ == (2836528i32)) {
                    _e_2836371 = (((_e_2836371 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2836445i32;
                } else if (__value__ == (2836572i32)) {
                    _dp_2835064 = (_dp_2835064 + ((_e_2836371 * _esign_2836220 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2836651i32;
                } else if (__value__ == (2836610i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2836651i32;
                } else if (__value__ == (2836651i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2836668i32;
                    } else {
                        _gotoNext = 2836695i32;
                    };
                } else if (__value__ == (2836668i32)) {
                    _exp = (_dp_2835064 - _ndMant_2835051 : stdgo.GoInt);
                    _gotoNext = 2836695i32;
                } else if (__value__ == (2836695i32)) {
                    if ((_underscores_2834603 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2836734i32;
                    } else {
                        _gotoNext = 2836750i32;
                    };
                } else if (__value__ == (2836734i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2836750i32;
                } else if (__value__ == (2836750i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
