package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdigits_2744170:Bool = false;
        var _base_2743910:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2745519:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2743975:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2743930:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2743751:Bool = false;
        var _esign_2745368:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2744212:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2744190:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2744153:Bool = false;
        var _c_2744260:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2744199:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2743751 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2743807i32;
                    } else {
                        _gotoNext = 2743822i32;
                    };
                } else if (__value__ == (2743807i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2743822i32;
                } else if (__value__ == (2743822i32)) {
                    _gotoNext = 2743822i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2743832i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2743857i32;
                    } else {
                        _gotoNext = 2743910i32;
                    };
                } else if (__value__ == (2743832i32)) {
                    _i++;
                    _gotoNext = 2743910i32;
                } else if (__value__ == (2743857i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2743910i32;
                } else if (__value__ == (2743910i32)) {
                    _base_2743910 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2743930 = (19 : stdgo.GoInt);
                    _expChar_2743975 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2744052i32;
                    } else {
                        _gotoNext = 2744153i32;
                    };
                } else if (__value__ == (2744052i32)) {
                    _base_2743910 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2743930 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2743975 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2744153i32;
                } else if (__value__ == (2744153i32)) {
                    _sawdot_2744153 = false;
                    _sawdigits_2744170 = false;
                    _nd_2744190 = (0 : stdgo.GoInt);
                    _ndMant_2744199 = (0 : stdgo.GoInt);
                    _dp_2744212 = (0 : stdgo.GoInt);
                    _gotoNext = 2744220i32;
                } else if (__value__ == (2744220i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2744227i32;
                } else if (__value__ == (2744227i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2744249i32;
                    } else {
                        _gotoNext = 2744969i32;
                    };
                } else if (__value__ == (2744249i32)) {
                    _gotoNext = 2744253i32;
                } else if (__value__ == (2744253i32)) {
                    {
                        _c_2744260 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2744260 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2744280i32;
                            } else if (__value__ == (_c_2744260 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2744332i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2744260 : Bool) && (_c_2744260 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2744425i32;
                            } else if (__value__ == (((_base_2743910 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2744260) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2744260) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2744717i32;
                            } else {
                                _gotoNext = 2744959i32;
                            };
                        };
                    };
                } else if (__value__ == (2744280i32)) {
                    _underscores_2743751 = true;
                    _i++;
                    _gotoNext = 2744227i32;
                } else if (__value__ == (2744332i32)) {
                    if (_sawdot_2744153) {
                        _gotoNext = 2744360i32;
                    } else {
                        _gotoNext = 2744385i32;
                    };
                } else if (__value__ == (2744360i32)) {
                    _loopBreak = true;
                    _gotoNext = 2744227i32;
                } else if (__value__ == (2744385i32)) {
                    _sawdot_2744153 = true;
                    _dp_2744212 = _nd_2744190;
                    _i++;
                    _gotoNext = 2744227i32;
                } else if (__value__ == (2744425i32)) {
                    _sawdigits_2744170 = true;
                    if (((_c_2744260 == (48 : stdgo.GoUInt8)) && (_nd_2744190 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2744498i32;
                    } else {
                        _gotoNext = 2744554i32;
                    };
                } else if (__value__ == (2744498i32)) {
                    _dp_2744212--;
                    _i++;
                    _gotoNext = 2744227i32;
                } else if (__value__ == (2744554i32)) {
                    _nd_2744190++;
                    if ((_ndMant_2744199 < _maxMantDigits_2743930 : Bool)) {
                        _gotoNext = 2744588i32;
                    } else if (_c_2744260 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2744678i32;
                    } else {
                        _gotoNext = 2744705i32;
                    };
                } else if (__value__ == (2744588i32)) {
                    _mantissa = (_mantissa * (_base_2743910) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2744260 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2744199++;
                    _gotoNext = 2744705i32;
                } else if (__value__ == (2744678i32)) {
                    _trunc = true;
                    _gotoNext = 2744705i32;
                } else if (__value__ == (2744705i32)) {
                    _i++;
                    _gotoNext = 2744227i32;
                } else if (__value__ == (2744717i32)) {
                    _sawdigits_2744170 = true;
                    _nd_2744190++;
                    if ((_ndMant_2744199 < _maxMantDigits_2743930 : Bool)) {
                        _gotoNext = 2744829i32;
                    } else {
                        _gotoNext = 2744917i32;
                    };
                } else if (__value__ == (2744829i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2744260) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2744199++;
                    _gotoNext = 2744944i32;
                } else if (__value__ == (2744917i32)) {
                    _gotoNext = 2744917i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2744944i32;
                } else if (__value__ == (2744944i32)) {
                    _i++;
                    _gotoNext = 2744227i32;
                } else if (__value__ == (2744959i32)) {
                    _gotoNext = 2744969i32;
                } else if (__value__ == (2744969i32)) {
                    if (!_sawdigits_2744170) {
                        _gotoNext = 2744983i32;
                    } else {
                        _gotoNext = 2744998i32;
                    };
                } else if (__value__ == (2744983i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2744998i32;
                } else if (__value__ == (2744998i32)) {
                    if (!_sawdot_2744153) {
                        _gotoNext = 2745009i32;
                    } else {
                        _gotoNext = 2745026i32;
                    };
                } else if (__value__ == (2745009i32)) {
                    _dp_2744212 = _nd_2744190;
                    _gotoNext = 2745026i32;
                } else if (__value__ == (2745026i32)) {
                    if (_base_2743910 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2745040i32;
                    } else {
                        _gotoNext = 2745285i32;
                    };
                } else if (__value__ == (2745040i32)) {
                    _dp_2744212 = (_dp_2744212 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2744199 = (_ndMant_2744199 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2745285i32;
                } else if (__value__ == (2745285i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2743975) : Bool)) {
                        _gotoNext = 2745325i32;
                    } else if (_base_2743910 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2745758i32;
                    } else {
                        _gotoNext = 2745799i32;
                    };
                } else if (__value__ == (2745325i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2745350i32;
                    } else {
                        _gotoNext = 2745368i32;
                    };
                } else if (__value__ == (2745350i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2745368i32;
                } else if (__value__ == (2745368i32)) {
                    _esign_2745368 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2745396i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2745429i32;
                    } else {
                        _gotoNext = 2745458i32;
                    };
                } else if (__value__ == (2745396i32)) {
                    _i++;
                    _gotoNext = 2745458i32;
                } else if (__value__ == (2745429i32)) {
                    _i++;
                    _esign_2745368 = (-1 : stdgo.GoInt);
                    _gotoNext = 2745458i32;
                } else if (__value__ == (2745458i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2745501i32;
                    } else {
                        _gotoNext = 2745519i32;
                    };
                } else if (__value__ == (2745501i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2745519i32;
                } else if (__value__ == (2745519i32)) {
                    _e_2745519 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2745528i32;
                } else if (__value__ == (2745528i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2745597i32;
                    } else {
                        _gotoNext = 2745720i32;
                    };
                } else if (__value__ == (2745593i32)) {
                    _i++;
                    _gotoNext = 2745528i32;
                } else if (__value__ == (2745597i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2745617i32;
                    } else {
                        _gotoNext = 2745663i32;
                    };
                } else if (__value__ == (2745617i32)) {
                    _underscores_2743751 = true;
                    _i++;
                    _gotoNext = 2745528i32;
                } else if (__value__ == (2745663i32)) {
                    if ((_e_2745519 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2745676i32;
                    } else {
                        _gotoNext = 2745593i32;
                    };
                } else if (__value__ == (2745676i32)) {
                    _e_2745519 = (((_e_2745519 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2745593i32;
                } else if (__value__ == (2745720i32)) {
                    _dp_2744212 = (_dp_2744212 + ((_e_2745519 * _esign_2745368 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2745799i32;
                } else if (__value__ == (2745758i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2745799i32;
                } else if (__value__ == (2745799i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2745816i32;
                    } else {
                        _gotoNext = 2745843i32;
                    };
                } else if (__value__ == (2745816i32)) {
                    _exp = (_dp_2744212 - _ndMant_2744199 : stdgo.GoInt);
                    _gotoNext = 2745843i32;
                } else if (__value__ == (2745843i32)) {
                    if ((_underscores_2743751 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2745882i32;
                    } else {
                        _gotoNext = 2745898i32;
                    };
                } else if (__value__ == (2745882i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2745898i32;
                } else if (__value__ == (2745898i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
