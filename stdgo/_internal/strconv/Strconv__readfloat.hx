package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2613782:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2612523:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2612462:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2613631:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2612475:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2612433:Bool = false;
        var _expChar_2612238:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2612014:Bool = false;
        var _nd_2612453:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2612416:Bool = false;
        var _base_2612173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _loopBreak = false;
        var _maxMantDigits_2612193:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2612014 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2612070i32;
                    } else {
                        _gotoNext = 2612085i32;
                    };
                } else if (__value__ == (2612070i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2612085i32;
                } else if (__value__ == (2612085i32)) {
                    _gotoNext = 2612085i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2612095i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2612120i32;
                    } else {
                        _gotoNext = 2612173i32;
                    };
                } else if (__value__ == (2612095i32)) {
                    _i++;
                    _gotoNext = 2612173i32;
                } else if (__value__ == (2612120i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2612173i32;
                } else if (__value__ == (2612173i32)) {
                    _base_2612173 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2612193 = (19 : stdgo.GoInt);
                    _expChar_2612238 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2612315i32;
                    } else {
                        _gotoNext = 2612416i32;
                    };
                } else if (__value__ == (2612315i32)) {
                    _base_2612173 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2612193 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2612238 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2612416i32;
                } else if (__value__ == (2612416i32)) {
                    _sawdot_2612416 = false;
                    _sawdigits_2612433 = false;
                    _nd_2612453 = (0 : stdgo.GoInt);
                    _ndMant_2612462 = (0 : stdgo.GoInt);
                    _dp_2612475 = (0 : stdgo.GoInt);
                    _gotoNext = 2612483i32;
                } else if (__value__ == (2612483i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2612490i32;
                } else if (__value__ == (2612490i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2612512i32;
                    } else {
                        _gotoNext = 2613232i32;
                    };
                } else if (__value__ == (2612512i32)) {
                    _gotoNext = 2612516i32;
                } else if (__value__ == (2612516i32)) {
                    {
                        _c_2612523 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2612523 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2612543i32;
                            } else if (__value__ == (_c_2612523 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2612595i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2612523 : Bool) && (_c_2612523 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2612688i32;
                            } else if (__value__ == (((_base_2612173 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2612523) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2612523) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2612980i32;
                            } else {
                                _gotoNext = 2613222i32;
                            };
                        };
                    };
                } else if (__value__ == (2612543i32)) {
                    _underscores_2612014 = true;
                    _i++;
                    _gotoNext = 2612490i32;
                } else if (__value__ == (2612595i32)) {
                    if (_sawdot_2612416) {
                        _gotoNext = 2612623i32;
                    } else {
                        _gotoNext = 2612648i32;
                    };
                } else if (__value__ == (2612623i32)) {
                    _loopBreak = true;
                    _gotoNext = 2612490i32;
                } else if (__value__ == (2612648i32)) {
                    _sawdot_2612416 = true;
                    _dp_2612475 = _nd_2612453;
                    _i++;
                    _gotoNext = 2612490i32;
                } else if (__value__ == (2612688i32)) {
                    _sawdigits_2612433 = true;
                    if (((_c_2612523 == (48 : stdgo.GoUInt8)) && (_nd_2612453 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2612761i32;
                    } else {
                        _gotoNext = 2612817i32;
                    };
                } else if (__value__ == (2612761i32)) {
                    _dp_2612475--;
                    _i++;
                    _gotoNext = 2612490i32;
                } else if (__value__ == (2612817i32)) {
                    _nd_2612453++;
                    if ((_ndMant_2612462 < _maxMantDigits_2612193 : Bool)) {
                        _gotoNext = 2612851i32;
                    } else if (_c_2612523 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2612941i32;
                    } else {
                        _gotoNext = 2612968i32;
                    };
                } else if (__value__ == (2612851i32)) {
                    _mantissa = (_mantissa * (_base_2612173) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2612523 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2612462++;
                    _gotoNext = 2612968i32;
                } else if (__value__ == (2612941i32)) {
                    _trunc = true;
                    _gotoNext = 2612968i32;
                } else if (__value__ == (2612968i32)) {
                    _i++;
                    _gotoNext = 2612490i32;
                } else if (__value__ == (2612980i32)) {
                    _sawdigits_2612433 = true;
                    _nd_2612453++;
                    if ((_ndMant_2612462 < _maxMantDigits_2612193 : Bool)) {
                        _gotoNext = 2613092i32;
                    } else {
                        _gotoNext = 2613180i32;
                    };
                } else if (__value__ == (2613092i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2612523) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2612462++;
                    _gotoNext = 2613207i32;
                } else if (__value__ == (2613180i32)) {
                    _gotoNext = 2613180i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2613207i32;
                } else if (__value__ == (2613207i32)) {
                    _i++;
                    _gotoNext = 2612490i32;
                } else if (__value__ == (2613222i32)) {
                    _gotoNext = 2613232i32;
                } else if (__value__ == (2613232i32)) {
                    if (!_sawdigits_2612433) {
                        _gotoNext = 2613246i32;
                    } else {
                        _gotoNext = 2613261i32;
                    };
                } else if (__value__ == (2613246i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2613261i32;
                } else if (__value__ == (2613261i32)) {
                    if (!_sawdot_2612416) {
                        _gotoNext = 2613272i32;
                    } else {
                        _gotoNext = 2613289i32;
                    };
                } else if (__value__ == (2613272i32)) {
                    _dp_2612475 = _nd_2612453;
                    _gotoNext = 2613289i32;
                } else if (__value__ == (2613289i32)) {
                    if (_base_2612173 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2613303i32;
                    } else {
                        _gotoNext = 2613548i32;
                    };
                } else if (__value__ == (2613303i32)) {
                    _dp_2612475 = (_dp_2612475 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2612462 = (_ndMant_2612462 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2613548i32;
                } else if (__value__ == (2613548i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2612238) : Bool)) {
                        _gotoNext = 2613588i32;
                    } else if (_base_2612173 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2614021i32;
                    } else {
                        _gotoNext = 2614062i32;
                    };
                } else if (__value__ == (2613588i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2613613i32;
                    } else {
                        _gotoNext = 2613631i32;
                    };
                } else if (__value__ == (2613613i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2613631i32;
                } else if (__value__ == (2613631i32)) {
                    _esign_2613631 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2613659i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2613692i32;
                    } else {
                        _gotoNext = 2613721i32;
                    };
                } else if (__value__ == (2613659i32)) {
                    _i++;
                    _gotoNext = 2613721i32;
                } else if (__value__ == (2613692i32)) {
                    _i++;
                    _esign_2613631 = (-1 : stdgo.GoInt);
                    _gotoNext = 2613721i32;
                } else if (__value__ == (2613721i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2613764i32;
                    } else {
                        _gotoNext = 2613782i32;
                    };
                } else if (__value__ == (2613764i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2613782i32;
                } else if (__value__ == (2613782i32)) {
                    _e_2613782 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2613791i32;
                } else if (__value__ == (2613791i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2613860i32;
                    } else {
                        _gotoNext = 2613983i32;
                    };
                } else if (__value__ == (2613856i32)) {
                    _i++;
                    _gotoNext = 2613791i32;
                } else if (__value__ == (2613860i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2613880i32;
                    } else {
                        _gotoNext = 2613926i32;
                    };
                } else if (__value__ == (2613880i32)) {
                    _underscores_2612014 = true;
                    _i++;
                    _gotoNext = 2613791i32;
                } else if (__value__ == (2613926i32)) {
                    if ((_e_2613782 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2613939i32;
                    } else {
                        _gotoNext = 2613856i32;
                    };
                } else if (__value__ == (2613939i32)) {
                    _e_2613782 = (((_e_2613782 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2613856i32;
                } else if (__value__ == (2613983i32)) {
                    _dp_2612475 = (_dp_2612475 + ((_e_2613782 * _esign_2613631 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2614062i32;
                } else if (__value__ == (2614021i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2614062i32;
                } else if (__value__ == (2614062i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2614079i32;
                    } else {
                        _gotoNext = 2614106i32;
                    };
                } else if (__value__ == (2614079i32)) {
                    _exp = (_dp_2612475 - _ndMant_2612462 : stdgo.GoInt);
                    _gotoNext = 2614106i32;
                } else if (__value__ == (2614106i32)) {
                    if ((_underscores_2612014 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2614145i32;
                    } else {
                        _gotoNext = 2614161i32;
                    };
                } else if (__value__ == (2614145i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2614161i32;
                } else if (__value__ == (2614161i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
