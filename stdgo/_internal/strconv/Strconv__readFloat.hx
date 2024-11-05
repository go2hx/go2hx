package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _expChar_2704238:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2704193:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2704523:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_2704462:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2704453:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2704433:Bool = false;
        var _e_2705782:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2705631:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2704475:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2704416:Bool = false;
        var _base_2704173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2704014:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2704014 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2704070i32;
                    } else {
                        _gotoNext = 2704085i32;
                    };
                } else if (__value__ == (2704070i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2704085i32;
                } else if (__value__ == (2704085i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2704085i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2704095i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2704120i32;
                    } else {
                        _gotoNext = 2704173i32;
                    };
                } else if (__value__ == (2704095i32)) {
                    _i++;
                    _gotoNext = 2704173i32;
                } else if (__value__ == (2704120i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2704173i32;
                } else if (__value__ == (2704173i32)) {
                    _base_2704173 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2704193 = (19 : stdgo.GoInt);
                    _expChar_2704238 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2704315i32;
                    } else {
                        _gotoNext = 2704416i32;
                    };
                } else if (__value__ == (2704315i32)) {
                    _base_2704173 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2704193 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2704238 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2704416i32;
                } else if (__value__ == (2704416i32)) {
                    _sawdot_2704416 = false;
                    _sawdigits_2704433 = false;
                    _nd_2704453 = (0 : stdgo.GoInt);
                    _ndMant_2704462 = (0 : stdgo.GoInt);
                    _dp_2704475 = (0 : stdgo.GoInt);
                    _gotoNext = 2704483i32;
                } else if (__value__ == (2704483i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2704490i32;
                } else if (__value__ == (2704490i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2704512i32;
                    } else {
                        _gotoNext = 2705232i32;
                    };
                } else if (__value__ == (2704512i32)) {
                    _c_2704523 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2704516i32;
                } else if (__value__ == (2704516i32)) {
                    {
                        _c_2704523 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2704523 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2704543i32;
                            } else if (__value__ == (_c_2704523 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2704595i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2704523 : Bool) && (_c_2704523 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2704688i32;
                            } else if (__value__ == (((_base_2704173 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2704523) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2704523) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2704980i32;
                            } else {
                                _gotoNext = 2705222i32;
                            };
                        };
                    };
                } else if (__value__ == (2704543i32)) {
                    _underscores_2704014 = true;
                    _i++;
                    _gotoNext = 2704490i32;
                } else if (__value__ == (2704595i32)) {
                    if (_sawdot_2704416) {
                        _gotoNext = 2704623i32;
                    } else {
                        _gotoNext = 2704648i32;
                    };
                } else if (__value__ == (2704623i32)) {
                    _loopBreak = true;
                    _gotoNext = 2704490i32;
                } else if (__value__ == (2704648i32)) {
                    _sawdot_2704416 = true;
                    _dp_2704475 = _nd_2704453;
                    _i++;
                    _gotoNext = 2704490i32;
                } else if (__value__ == (2704688i32)) {
                    _sawdigits_2704433 = true;
                    if (((_c_2704523 == (48 : stdgo.GoUInt8)) && (_nd_2704453 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2704761i32;
                    } else {
                        _gotoNext = 2704817i32;
                    };
                } else if (__value__ == (2704761i32)) {
                    _dp_2704475--;
                    _i++;
                    _gotoNext = 2704490i32;
                } else if (__value__ == (2704817i32)) {
                    _nd_2704453++;
                    if ((_ndMant_2704462 < _maxMantDigits_2704193 : Bool)) {
                        _gotoNext = 2704851i32;
                    } else if (_c_2704523 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2704941i32;
                    } else {
                        _gotoNext = 2704968i32;
                    };
                } else if (__value__ == (2704851i32)) {
                    _mantissa = (_mantissa * (_base_2704173) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2704523 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2704462++;
                    _gotoNext = 2704968i32;
                } else if (__value__ == (2704941i32)) {
                    _trunc = true;
                    _gotoNext = 2704968i32;
                } else if (__value__ == (2704968i32)) {
                    _i++;
                    _gotoNext = 2704490i32;
                } else if (__value__ == (2704980i32)) {
                    _sawdigits_2704433 = true;
                    _nd_2704453++;
                    if ((_ndMant_2704462 < _maxMantDigits_2704193 : Bool)) {
                        _gotoNext = 2705092i32;
                    } else {
                        _gotoNext = 2705180i32;
                    };
                } else if (__value__ == (2705092i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2704523) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2704462++;
                    _gotoNext = 2705207i32;
                } else if (__value__ == (2705180i32)) {
                    _trunc = true;
                    _gotoNext = 2705207i32;
                } else if (__value__ == (2705207i32)) {
                    _i++;
                    _gotoNext = 2704490i32;
                } else if (__value__ == (2705222i32)) {
                    _gotoNext = 2705232i32;
                } else if (__value__ == (2705232i32)) {
                    if (!_sawdigits_2704433) {
                        _gotoNext = 2705246i32;
                    } else {
                        _gotoNext = 2705261i32;
                    };
                } else if (__value__ == (2705246i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2705261i32;
                } else if (__value__ == (2705261i32)) {
                    if (!_sawdot_2704416) {
                        _gotoNext = 2705272i32;
                    } else {
                        _gotoNext = 2705289i32;
                    };
                } else if (__value__ == (2705272i32)) {
                    _dp_2704475 = _nd_2704453;
                    _gotoNext = 2705289i32;
                } else if (__value__ == (2705289i32)) {
                    if (_base_2704173 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2705303i32;
                    } else {
                        _gotoNext = 2705548i32;
                    };
                } else if (__value__ == (2705303i32)) {
                    _dp_2704475 = (_dp_2704475 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2704462 = (_ndMant_2704462 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2705548i32;
                } else if (__value__ == (2705548i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2704238) : Bool)) {
                        _gotoNext = 2705588i32;
                    } else if (_base_2704173 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2706021i32;
                    } else {
                        _gotoNext = 2706062i32;
                    };
                } else if (__value__ == (2705588i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2705613i32;
                    } else {
                        _gotoNext = 2705631i32;
                    };
                } else if (__value__ == (2705613i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2705631i32;
                } else if (__value__ == (2705631i32)) {
                    _esign_2705631 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2705659i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2705692i32;
                    } else {
                        _gotoNext = 2705721i32;
                    };
                } else if (__value__ == (2705659i32)) {
                    _i++;
                    _gotoNext = 2705721i32;
                } else if (__value__ == (2705692i32)) {
                    _i++;
                    _esign_2705631 = (-1 : stdgo.GoInt);
                    _gotoNext = 2705721i32;
                } else if (__value__ == (2705721i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2705764i32;
                    } else {
                        _gotoNext = 2705782i32;
                    };
                } else if (__value__ == (2705764i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2705782i32;
                } else if (__value__ == (2705782i32)) {
                    _e_2705782 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2705791i32;
                } else if (__value__ == (2705791i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2705860i32;
                    } else {
                        _gotoNext = 2705983i32;
                    };
                } else if (__value__ == (2705856i32)) {
                    _i++;
                    _gotoNext = 2705791i32;
                } else if (__value__ == (2705860i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2705880i32;
                    } else {
                        _gotoNext = 2705926i32;
                    };
                } else if (__value__ == (2705880i32)) {
                    _underscores_2704014 = true;
                    _i++;
                    _gotoNext = 2705791i32;
                } else if (__value__ == (2705926i32)) {
                    if ((_e_2705782 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2705939i32;
                    } else {
                        _gotoNext = 2705856i32;
                    };
                } else if (__value__ == (2705939i32)) {
                    _e_2705782 = (((_e_2705782 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2705856i32;
                } else if (__value__ == (2705983i32)) {
                    _dp_2704475 = (_dp_2704475 + ((_e_2705782 * _esign_2705631 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2706062i32;
                } else if (__value__ == (2706021i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2706062i32;
                } else if (__value__ == (2706062i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2706079i32;
                    } else {
                        _gotoNext = 2706106i32;
                    };
                } else if (__value__ == (2706079i32)) {
                    _exp = (_dp_2704475 - _ndMant_2704462 : stdgo.GoInt);
                    _gotoNext = 2706106i32;
                } else if (__value__ == (2706106i32)) {
                    if ((_underscores_2704014 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2706145i32;
                    } else {
                        _gotoNext = 2706161i32;
                    };
                } else if (__value__ == (2706145i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2706161i32;
                } else if (__value__ == (2706161i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
