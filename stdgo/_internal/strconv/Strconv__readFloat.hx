package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2802164:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2802142:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2802122:Bool = false;
        var _sawdot_2802105:Bool = false;
        var _loopBreak = false;
        var _e_2803471:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2803320:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2802151:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2801882:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2801862:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2801703:Bool = false;
        var _c_2802212:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _expChar_2801927:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2801703 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2801759i32;
                    } else {
                        _gotoNext = 2801774i32;
                    };
                } else if (__value__ == (2801759i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2801774i32;
                } else if (__value__ == (2801774i32)) {
                    _gotoNext = 2801774i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2801784i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2801809i32;
                    } else {
                        _gotoNext = 2801862i32;
                    };
                } else if (__value__ == (2801784i32)) {
                    _i++;
                    _gotoNext = 2801862i32;
                } else if (__value__ == (2801809i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2801862i32;
                } else if (__value__ == (2801862i32)) {
                    _base_2801862 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2801882 = (19 : stdgo.GoInt);
                    _expChar_2801927 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2802004i32;
                    } else {
                        _gotoNext = 2802105i32;
                    };
                } else if (__value__ == (2802004i32)) {
                    _base_2801862 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2801882 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2801927 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2802105i32;
                } else if (__value__ == (2802105i32)) {
                    _sawdot_2802105 = false;
                    _sawdigits_2802122 = false;
                    _nd_2802142 = (0 : stdgo.GoInt);
                    _ndMant_2802151 = (0 : stdgo.GoInt);
                    _dp_2802164 = (0 : stdgo.GoInt);
                    _gotoNext = 2802172i32;
                } else if (__value__ == (2802172i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2802179i32;
                } else if (__value__ == (2802179i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2802201i32;
                    } else {
                        _gotoNext = 2802921i32;
                    };
                } else if (__value__ == (2802201i32)) {
                    _gotoNext = 2802205i32;
                } else if (__value__ == (2802205i32)) {
                    {
                        _c_2802212 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2802212 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2802232i32;
                            } else if (__value__ == (_c_2802212 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2802284i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2802212 : Bool) && (_c_2802212 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2802377i32;
                            } else if (__value__ == (((_base_2801862 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2802212) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2802212) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2802669i32;
                            } else {
                                _gotoNext = 2802911i32;
                            };
                        };
                    };
                } else if (__value__ == (2802232i32)) {
                    _underscores_2801703 = true;
                    _i++;
                    _gotoNext = 2802179i32;
                } else if (__value__ == (2802284i32)) {
                    if (_sawdot_2802105) {
                        _gotoNext = 2802312i32;
                    } else {
                        _gotoNext = 2802337i32;
                    };
                } else if (__value__ == (2802312i32)) {
                    _loopBreak = true;
                    _gotoNext = 2802179i32;
                } else if (__value__ == (2802337i32)) {
                    _sawdot_2802105 = true;
                    _dp_2802164 = _nd_2802142;
                    _i++;
                    _gotoNext = 2802179i32;
                } else if (__value__ == (2802377i32)) {
                    _sawdigits_2802122 = true;
                    if (((_c_2802212 == (48 : stdgo.GoUInt8)) && (_nd_2802142 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2802450i32;
                    } else {
                        _gotoNext = 2802506i32;
                    };
                } else if (__value__ == (2802450i32)) {
                    _dp_2802164--;
                    _i++;
                    _gotoNext = 2802179i32;
                } else if (__value__ == (2802506i32)) {
                    _nd_2802142++;
                    if ((_ndMant_2802151 < _maxMantDigits_2801882 : Bool)) {
                        _gotoNext = 2802540i32;
                    } else if (_c_2802212 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2802630i32;
                    } else {
                        _gotoNext = 2802657i32;
                    };
                } else if (__value__ == (2802540i32)) {
                    _mantissa = (_mantissa * (_base_2801862) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2802212 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2802151++;
                    _gotoNext = 2802657i32;
                } else if (__value__ == (2802630i32)) {
                    _trunc = true;
                    _gotoNext = 2802657i32;
                } else if (__value__ == (2802657i32)) {
                    _i++;
                    _gotoNext = 2802179i32;
                } else if (__value__ == (2802669i32)) {
                    _sawdigits_2802122 = true;
                    _nd_2802142++;
                    if ((_ndMant_2802151 < _maxMantDigits_2801882 : Bool)) {
                        _gotoNext = 2802781i32;
                    } else {
                        _gotoNext = 2802869i32;
                    };
                } else if (__value__ == (2802781i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2802212) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2802151++;
                    _gotoNext = 2802896i32;
                } else if (__value__ == (2802869i32)) {
                    _gotoNext = 2802869i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2802896i32;
                } else if (__value__ == (2802896i32)) {
                    _i++;
                    _gotoNext = 2802179i32;
                } else if (__value__ == (2802911i32)) {
                    _gotoNext = 2802921i32;
                } else if (__value__ == (2802921i32)) {
                    if (!_sawdigits_2802122) {
                        _gotoNext = 2802935i32;
                    } else {
                        _gotoNext = 2802950i32;
                    };
                } else if (__value__ == (2802935i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2802950i32;
                } else if (__value__ == (2802950i32)) {
                    if (!_sawdot_2802105) {
                        _gotoNext = 2802961i32;
                    } else {
                        _gotoNext = 2802978i32;
                    };
                } else if (__value__ == (2802961i32)) {
                    _dp_2802164 = _nd_2802142;
                    _gotoNext = 2802978i32;
                } else if (__value__ == (2802978i32)) {
                    if (_base_2801862 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2802992i32;
                    } else {
                        _gotoNext = 2803237i32;
                    };
                } else if (__value__ == (2802992i32)) {
                    _dp_2802164 = (_dp_2802164 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2802151 = (_ndMant_2802151 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2803237i32;
                } else if (__value__ == (2803237i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2801927) : Bool)) {
                        _gotoNext = 2803277i32;
                    } else if (_base_2801862 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2803710i32;
                    } else {
                        _gotoNext = 2803751i32;
                    };
                } else if (__value__ == (2803277i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2803302i32;
                    } else {
                        _gotoNext = 2803320i32;
                    };
                } else if (__value__ == (2803302i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2803320i32;
                } else if (__value__ == (2803320i32)) {
                    _esign_2803320 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2803348i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2803381i32;
                    } else {
                        _gotoNext = 2803410i32;
                    };
                } else if (__value__ == (2803348i32)) {
                    _i++;
                    _gotoNext = 2803410i32;
                } else if (__value__ == (2803381i32)) {
                    _i++;
                    _esign_2803320 = (-1 : stdgo.GoInt);
                    _gotoNext = 2803410i32;
                } else if (__value__ == (2803410i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2803453i32;
                    } else {
                        _gotoNext = 2803471i32;
                    };
                } else if (__value__ == (2803453i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2803471i32;
                } else if (__value__ == (2803471i32)) {
                    _e_2803471 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2803480i32;
                } else if (__value__ == (2803480i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2803549i32;
                    } else {
                        _gotoNext = 2803672i32;
                    };
                } else if (__value__ == (2803545i32)) {
                    _i++;
                    _gotoNext = 2803480i32;
                } else if (__value__ == (2803549i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2803569i32;
                    } else {
                        _gotoNext = 2803615i32;
                    };
                } else if (__value__ == (2803569i32)) {
                    _underscores_2801703 = true;
                    _i++;
                    _gotoNext = 2803480i32;
                } else if (__value__ == (2803615i32)) {
                    if ((_e_2803471 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2803628i32;
                    } else {
                        _gotoNext = 2803545i32;
                    };
                } else if (__value__ == (2803628i32)) {
                    _e_2803471 = (((_e_2803471 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2803545i32;
                } else if (__value__ == (2803672i32)) {
                    _dp_2802164 = (_dp_2802164 + ((_e_2803471 * _esign_2803320 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2803751i32;
                } else if (__value__ == (2803710i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2803751i32;
                } else if (__value__ == (2803751i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2803768i32;
                    } else {
                        _gotoNext = 2803795i32;
                    };
                } else if (__value__ == (2803768i32)) {
                    _exp = (_dp_2802164 - _ndMant_2802151 : stdgo.GoInt);
                    _gotoNext = 2803795i32;
                } else if (__value__ == (2803795i32)) {
                    if ((_underscores_2801703 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2803834i32;
                    } else {
                        _gotoNext = 2803850i32;
                    };
                } else if (__value__ == (2803834i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2803850i32;
                } else if (__value__ == (2803850i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
