package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2841147:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2840039:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2839709:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2839978:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2839969:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2839949:Bool = false;
        var _expChar_2839754:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2839689:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2841298:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2839991:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2839932:Bool = false;
        var _underscores_2839530:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2839530 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2839586i32;
                    } else {
                        _gotoNext = 2839601i32;
                    };
                } else if (__value__ == (2839586i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2839601i32;
                } else if (__value__ == (2839601i32)) {
                    _gotoNext = 2839601i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2839611i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2839636i32;
                    } else {
                        _gotoNext = 2839689i32;
                    };
                } else if (__value__ == (2839611i32)) {
                    _i++;
                    _gotoNext = 2839689i32;
                } else if (__value__ == (2839636i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2839689i32;
                } else if (__value__ == (2839689i32)) {
                    _base_2839689 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2839709 = (19 : stdgo.GoInt);
                    _expChar_2839754 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2839831i32;
                    } else {
                        _gotoNext = 2839932i32;
                    };
                } else if (__value__ == (2839831i32)) {
                    _base_2839689 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2839709 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2839754 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2839932i32;
                } else if (__value__ == (2839932i32)) {
                    _sawdot_2839932 = false;
                    _sawdigits_2839949 = false;
                    _nd_2839969 = (0 : stdgo.GoInt);
                    _ndMant_2839978 = (0 : stdgo.GoInt);
                    _dp_2839991 = (0 : stdgo.GoInt);
                    _gotoNext = 2839999i32;
                } else if (__value__ == (2839999i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2840006i32;
                } else if (__value__ == (2840006i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2840028i32;
                    } else {
                        _gotoNext = 2840748i32;
                    };
                } else if (__value__ == (2840028i32)) {
                    _gotoNext = 2840032i32;
                } else if (__value__ == (2840032i32)) {
                    {
                        _c_2840039 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2840039 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2840059i32;
                            } else if (__value__ == (_c_2840039 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2840111i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2840039 : Bool) && (_c_2840039 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2840204i32;
                            } else if (__value__ == (((_base_2839689 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2840039) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2840039) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2840496i32;
                            } else {
                                _gotoNext = 2840738i32;
                            };
                        };
                    };
                } else if (__value__ == (2840059i32)) {
                    _underscores_2839530 = true;
                    _i++;
                    _gotoNext = 2840006i32;
                } else if (__value__ == (2840111i32)) {
                    if (_sawdot_2839932) {
                        _gotoNext = 2840139i32;
                    } else {
                        _gotoNext = 2840164i32;
                    };
                } else if (__value__ == (2840139i32)) {
                    _loopBreak = true;
                    _gotoNext = 2840006i32;
                } else if (__value__ == (2840164i32)) {
                    _sawdot_2839932 = true;
                    _dp_2839991 = _nd_2839969;
                    _i++;
                    _gotoNext = 2840006i32;
                } else if (__value__ == (2840204i32)) {
                    _sawdigits_2839949 = true;
                    if (((_c_2840039 == (48 : stdgo.GoUInt8)) && (_nd_2839969 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2840277i32;
                    } else {
                        _gotoNext = 2840333i32;
                    };
                } else if (__value__ == (2840277i32)) {
                    _dp_2839991--;
                    _i++;
                    _gotoNext = 2840006i32;
                } else if (__value__ == (2840333i32)) {
                    _nd_2839969++;
                    if ((_ndMant_2839978 < _maxMantDigits_2839709 : Bool)) {
                        _gotoNext = 2840367i32;
                    } else if (_c_2840039 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2840457i32;
                    } else {
                        _gotoNext = 2840484i32;
                    };
                } else if (__value__ == (2840367i32)) {
                    _mantissa = (_mantissa * (_base_2839689) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2840039 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2839978++;
                    _gotoNext = 2840484i32;
                } else if (__value__ == (2840457i32)) {
                    _trunc = true;
                    _gotoNext = 2840484i32;
                } else if (__value__ == (2840484i32)) {
                    _i++;
                    _gotoNext = 2840006i32;
                } else if (__value__ == (2840496i32)) {
                    _sawdigits_2839949 = true;
                    _nd_2839969++;
                    if ((_ndMant_2839978 < _maxMantDigits_2839709 : Bool)) {
                        _gotoNext = 2840608i32;
                    } else {
                        _gotoNext = 2840696i32;
                    };
                } else if (__value__ == (2840608i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2840039) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2839978++;
                    _gotoNext = 2840723i32;
                } else if (__value__ == (2840696i32)) {
                    _gotoNext = 2840696i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2840723i32;
                } else if (__value__ == (2840723i32)) {
                    _i++;
                    _gotoNext = 2840006i32;
                } else if (__value__ == (2840738i32)) {
                    _gotoNext = 2840748i32;
                } else if (__value__ == (2840748i32)) {
                    if (!_sawdigits_2839949) {
                        _gotoNext = 2840762i32;
                    } else {
                        _gotoNext = 2840777i32;
                    };
                } else if (__value__ == (2840762i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2840777i32;
                } else if (__value__ == (2840777i32)) {
                    if (!_sawdot_2839932) {
                        _gotoNext = 2840788i32;
                    } else {
                        _gotoNext = 2840805i32;
                    };
                } else if (__value__ == (2840788i32)) {
                    _dp_2839991 = _nd_2839969;
                    _gotoNext = 2840805i32;
                } else if (__value__ == (2840805i32)) {
                    if (_base_2839689 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2840819i32;
                    } else {
                        _gotoNext = 2841064i32;
                    };
                } else if (__value__ == (2840819i32)) {
                    _dp_2839991 = (_dp_2839991 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2839978 = (_ndMant_2839978 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2841064i32;
                } else if (__value__ == (2841064i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2839754) : Bool)) {
                        _gotoNext = 2841104i32;
                    } else if (_base_2839689 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2841537i32;
                    } else {
                        _gotoNext = 2841578i32;
                    };
                } else if (__value__ == (2841104i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2841129i32;
                    } else {
                        _gotoNext = 2841147i32;
                    };
                } else if (__value__ == (2841129i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2841147i32;
                } else if (__value__ == (2841147i32)) {
                    _esign_2841147 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2841175i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2841208i32;
                    } else {
                        _gotoNext = 2841237i32;
                    };
                } else if (__value__ == (2841175i32)) {
                    _i++;
                    _gotoNext = 2841237i32;
                } else if (__value__ == (2841208i32)) {
                    _i++;
                    _esign_2841147 = (-1 : stdgo.GoInt);
                    _gotoNext = 2841237i32;
                } else if (__value__ == (2841237i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2841280i32;
                    } else {
                        _gotoNext = 2841298i32;
                    };
                } else if (__value__ == (2841280i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2841298i32;
                } else if (__value__ == (2841298i32)) {
                    _e_2841298 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2841307i32;
                } else if (__value__ == (2841307i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2841376i32;
                    } else {
                        _gotoNext = 2841499i32;
                    };
                } else if (__value__ == (2841372i32)) {
                    _i++;
                    _gotoNext = 2841307i32;
                } else if (__value__ == (2841376i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2841396i32;
                    } else {
                        _gotoNext = 2841442i32;
                    };
                } else if (__value__ == (2841396i32)) {
                    _underscores_2839530 = true;
                    _i++;
                    _gotoNext = 2841307i32;
                } else if (__value__ == (2841442i32)) {
                    if ((_e_2841298 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2841455i32;
                    } else {
                        _gotoNext = 2841372i32;
                    };
                } else if (__value__ == (2841455i32)) {
                    _e_2841298 = (((_e_2841298 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2841372i32;
                } else if (__value__ == (2841499i32)) {
                    _dp_2839991 = (_dp_2839991 + ((_e_2841298 * _esign_2841147 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2841578i32;
                } else if (__value__ == (2841537i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2841578i32;
                } else if (__value__ == (2841578i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2841595i32;
                    } else {
                        _gotoNext = 2841622i32;
                    };
                } else if (__value__ == (2841595i32)) {
                    _exp = (_dp_2839991 - _ndMant_2839978 : stdgo.GoInt);
                    _gotoNext = 2841622i32;
                } else if (__value__ == (2841622i32)) {
                    if ((_underscores_2839530 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2841661i32;
                    } else {
                        _gotoNext = 2841677i32;
                    };
                } else if (__value__ == (2841661i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2841677i32;
                } else if (__value__ == (2841677i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
