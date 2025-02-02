package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2781595:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2781444:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2780266:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2780051:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2779986:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2779827:Bool = false;
        var _loopBreak = false;
        var _dp_2780288:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2780246:Bool = false;
        var _sawdot_2780229:Bool = false;
        var _ndMant_2780275:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2780336:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2780006:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2779827 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2779883i32;
                    } else {
                        _gotoNext = 2779898i32;
                    };
                } else if (__value__ == (2779883i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2779898i32;
                } else if (__value__ == (2779898i32)) {
                    _gotoNext = 2779898i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2779908i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2779933i32;
                    } else {
                        _gotoNext = 2779986i32;
                    };
                } else if (__value__ == (2779908i32)) {
                    _i++;
                    _gotoNext = 2779986i32;
                } else if (__value__ == (2779933i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2779986i32;
                } else if (__value__ == (2779986i32)) {
                    _base_2779986 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2780006 = (19 : stdgo.GoInt);
                    _expChar_2780051 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2780128i32;
                    } else {
                        _gotoNext = 2780229i32;
                    };
                } else if (__value__ == (2780128i32)) {
                    _base_2779986 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2780006 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2780051 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2780229i32;
                } else if (__value__ == (2780229i32)) {
                    _sawdot_2780229 = false;
                    _sawdigits_2780246 = false;
                    _nd_2780266 = (0 : stdgo.GoInt);
                    _ndMant_2780275 = (0 : stdgo.GoInt);
                    _dp_2780288 = (0 : stdgo.GoInt);
                    _gotoNext = 2780296i32;
                } else if (__value__ == (2780296i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2780303i32;
                } else if (__value__ == (2780303i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2780325i32;
                    } else {
                        _gotoNext = 2781045i32;
                    };
                } else if (__value__ == (2780325i32)) {
                    _gotoNext = 2780329i32;
                } else if (__value__ == (2780329i32)) {
                    {
                        _c_2780336 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2780336 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2780356i32;
                            } else if (__value__ == (_c_2780336 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2780408i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2780336 : Bool) && (_c_2780336 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2780501i32;
                            } else if (__value__ == (((_base_2779986 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2780336) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2780336) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2780793i32;
                            } else {
                                _gotoNext = 2781035i32;
                            };
                        };
                    };
                } else if (__value__ == (2780356i32)) {
                    _underscores_2779827 = true;
                    _i++;
                    _gotoNext = 2780303i32;
                } else if (__value__ == (2780408i32)) {
                    if (_sawdot_2780229) {
                        _gotoNext = 2780436i32;
                    } else {
                        _gotoNext = 2780461i32;
                    };
                } else if (__value__ == (2780436i32)) {
                    _loopBreak = true;
                    _gotoNext = 2780303i32;
                } else if (__value__ == (2780461i32)) {
                    _sawdot_2780229 = true;
                    _dp_2780288 = _nd_2780266;
                    _i++;
                    _gotoNext = 2780303i32;
                } else if (__value__ == (2780501i32)) {
                    _sawdigits_2780246 = true;
                    if (((_c_2780336 == (48 : stdgo.GoUInt8)) && (_nd_2780266 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2780574i32;
                    } else {
                        _gotoNext = 2780630i32;
                    };
                } else if (__value__ == (2780574i32)) {
                    _dp_2780288--;
                    _i++;
                    _gotoNext = 2780303i32;
                } else if (__value__ == (2780630i32)) {
                    _nd_2780266++;
                    if ((_ndMant_2780275 < _maxMantDigits_2780006 : Bool)) {
                        _gotoNext = 2780664i32;
                    } else if (_c_2780336 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2780754i32;
                    } else {
                        _gotoNext = 2780781i32;
                    };
                } else if (__value__ == (2780664i32)) {
                    _mantissa = (_mantissa * (_base_2779986) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2780336 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2780275++;
                    _gotoNext = 2780781i32;
                } else if (__value__ == (2780754i32)) {
                    _trunc = true;
                    _gotoNext = 2780781i32;
                } else if (__value__ == (2780781i32)) {
                    _i++;
                    _gotoNext = 2780303i32;
                } else if (__value__ == (2780793i32)) {
                    _sawdigits_2780246 = true;
                    _nd_2780266++;
                    if ((_ndMant_2780275 < _maxMantDigits_2780006 : Bool)) {
                        _gotoNext = 2780905i32;
                    } else {
                        _gotoNext = 2780993i32;
                    };
                } else if (__value__ == (2780905i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2780336) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2780275++;
                    _gotoNext = 2781020i32;
                } else if (__value__ == (2780993i32)) {
                    _gotoNext = 2780993i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2781020i32;
                } else if (__value__ == (2781020i32)) {
                    _i++;
                    _gotoNext = 2780303i32;
                } else if (__value__ == (2781035i32)) {
                    _gotoNext = 2781045i32;
                } else if (__value__ == (2781045i32)) {
                    if (!_sawdigits_2780246) {
                        _gotoNext = 2781059i32;
                    } else {
                        _gotoNext = 2781074i32;
                    };
                } else if (__value__ == (2781059i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2781074i32;
                } else if (__value__ == (2781074i32)) {
                    if (!_sawdot_2780229) {
                        _gotoNext = 2781085i32;
                    } else {
                        _gotoNext = 2781102i32;
                    };
                } else if (__value__ == (2781085i32)) {
                    _dp_2780288 = _nd_2780266;
                    _gotoNext = 2781102i32;
                } else if (__value__ == (2781102i32)) {
                    if (_base_2779986 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2781116i32;
                    } else {
                        _gotoNext = 2781361i32;
                    };
                } else if (__value__ == (2781116i32)) {
                    _dp_2780288 = (_dp_2780288 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2780275 = (_ndMant_2780275 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2781361i32;
                } else if (__value__ == (2781361i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2780051) : Bool)) {
                        _gotoNext = 2781401i32;
                    } else if (_base_2779986 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2781834i32;
                    } else {
                        _gotoNext = 2781875i32;
                    };
                } else if (__value__ == (2781401i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2781426i32;
                    } else {
                        _gotoNext = 2781444i32;
                    };
                } else if (__value__ == (2781426i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2781444i32;
                } else if (__value__ == (2781444i32)) {
                    _esign_2781444 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2781472i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2781505i32;
                    } else {
                        _gotoNext = 2781534i32;
                    };
                } else if (__value__ == (2781472i32)) {
                    _i++;
                    _gotoNext = 2781534i32;
                } else if (__value__ == (2781505i32)) {
                    _i++;
                    _esign_2781444 = (-1 : stdgo.GoInt);
                    _gotoNext = 2781534i32;
                } else if (__value__ == (2781534i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2781577i32;
                    } else {
                        _gotoNext = 2781595i32;
                    };
                } else if (__value__ == (2781577i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2781595i32;
                } else if (__value__ == (2781595i32)) {
                    _e_2781595 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2781604i32;
                } else if (__value__ == (2781604i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2781673i32;
                    } else {
                        _gotoNext = 2781796i32;
                    };
                } else if (__value__ == (2781669i32)) {
                    _i++;
                    _gotoNext = 2781604i32;
                } else if (__value__ == (2781673i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2781693i32;
                    } else {
                        _gotoNext = 2781739i32;
                    };
                } else if (__value__ == (2781693i32)) {
                    _underscores_2779827 = true;
                    _i++;
                    _gotoNext = 2781604i32;
                } else if (__value__ == (2781739i32)) {
                    if ((_e_2781595 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2781752i32;
                    } else {
                        _gotoNext = 2781669i32;
                    };
                } else if (__value__ == (2781752i32)) {
                    _e_2781595 = (((_e_2781595 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2781669i32;
                } else if (__value__ == (2781796i32)) {
                    _dp_2780288 = (_dp_2780288 + ((_e_2781595 * _esign_2781444 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2781875i32;
                } else if (__value__ == (2781834i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2781875i32;
                } else if (__value__ == (2781875i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2781892i32;
                    } else {
                        _gotoNext = 2781919i32;
                    };
                } else if (__value__ == (2781892i32)) {
                    _exp = (_dp_2780288 - _ndMant_2780275 : stdgo.GoInt);
                    _gotoNext = 2781919i32;
                } else if (__value__ == (2781919i32)) {
                    if ((_underscores_2779827 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2781958i32;
                    } else {
                        _gotoNext = 2781974i32;
                    };
                } else if (__value__ == (2781958i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2781974i32;
                } else if (__value__ == (2781974i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
