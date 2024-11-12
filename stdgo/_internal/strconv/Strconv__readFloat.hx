package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _base_2687796:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sawdigits_2688056:Bool = false;
        var _maxMantDigits_2687816:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2688039:Bool = false;
        var _loopBreak = false;
        var _ndMant_2688085:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2689405:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2689254:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2687637:Bool = false;
        var _c_2688146:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2688098:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2688076:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2687861:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2687637 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2687693i32;
                    } else {
                        _gotoNext = 2687708i32;
                    };
                } else if (__value__ == (2687693i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2687708i32;
                } else if (__value__ == (2687708i32)) {
                    _gotoNext = 2687708i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2687718i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2687743i32;
                    } else {
                        _gotoNext = 2687796i32;
                    };
                } else if (__value__ == (2687718i32)) {
                    _i++;
                    _gotoNext = 2687796i32;
                } else if (__value__ == (2687743i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2687796i32;
                } else if (__value__ == (2687796i32)) {
                    _base_2687796 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2687816 = (19 : stdgo.GoInt);
                    _expChar_2687861 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2687938i32;
                    } else {
                        _gotoNext = 2688039i32;
                    };
                } else if (__value__ == (2687938i32)) {
                    _base_2687796 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2687816 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2687861 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2688039i32;
                } else if (__value__ == (2688039i32)) {
                    _sawdot_2688039 = false;
                    _sawdigits_2688056 = false;
                    _nd_2688076 = (0 : stdgo.GoInt);
                    _ndMant_2688085 = (0 : stdgo.GoInt);
                    _dp_2688098 = (0 : stdgo.GoInt);
                    _gotoNext = 2688106i32;
                } else if (__value__ == (2688106i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2688113i32;
                } else if (__value__ == (2688113i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2688135i32;
                    } else {
                        _gotoNext = 2688855i32;
                    };
                } else if (__value__ == (2688135i32)) {
                    _gotoNext = 2688139i32;
                } else if (__value__ == (2688139i32)) {
                    {
                        _c_2688146 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2688146 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2688166i32;
                            } else if (__value__ == (_c_2688146 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2688218i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2688146 : Bool) && (_c_2688146 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2688311i32;
                            } else if (__value__ == (((_base_2687796 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2688146) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2688146) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2688603i32;
                            } else {
                                _gotoNext = 2688845i32;
                            };
                        };
                    };
                } else if (__value__ == (2688166i32)) {
                    _underscores_2687637 = true;
                    _i++;
                    _gotoNext = 2688113i32;
                } else if (__value__ == (2688218i32)) {
                    if (_sawdot_2688039) {
                        _gotoNext = 2688246i32;
                    } else {
                        _gotoNext = 2688271i32;
                    };
                } else if (__value__ == (2688246i32)) {
                    _loopBreak = true;
                    _gotoNext = 2688113i32;
                } else if (__value__ == (2688271i32)) {
                    _sawdot_2688039 = true;
                    _dp_2688098 = _nd_2688076;
                    _i++;
                    _gotoNext = 2688113i32;
                } else if (__value__ == (2688311i32)) {
                    _sawdigits_2688056 = true;
                    if (((_c_2688146 == (48 : stdgo.GoUInt8)) && (_nd_2688076 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2688384i32;
                    } else {
                        _gotoNext = 2688440i32;
                    };
                } else if (__value__ == (2688384i32)) {
                    _dp_2688098--;
                    _i++;
                    _gotoNext = 2688113i32;
                } else if (__value__ == (2688440i32)) {
                    _nd_2688076++;
                    if ((_ndMant_2688085 < _maxMantDigits_2687816 : Bool)) {
                        _gotoNext = 2688474i32;
                    } else if (_c_2688146 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2688564i32;
                    } else {
                        _gotoNext = 2688591i32;
                    };
                } else if (__value__ == (2688474i32)) {
                    _mantissa = (_mantissa * (_base_2687796) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2688146 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2688085++;
                    _gotoNext = 2688591i32;
                } else if (__value__ == (2688564i32)) {
                    _trunc = true;
                    _gotoNext = 2688591i32;
                } else if (__value__ == (2688591i32)) {
                    _i++;
                    _gotoNext = 2688113i32;
                } else if (__value__ == (2688603i32)) {
                    _sawdigits_2688056 = true;
                    _nd_2688076++;
                    if ((_ndMant_2688085 < _maxMantDigits_2687816 : Bool)) {
                        _gotoNext = 2688715i32;
                    } else {
                        _gotoNext = 2688803i32;
                    };
                } else if (__value__ == (2688715i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2688146) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2688085++;
                    _gotoNext = 2688830i32;
                } else if (__value__ == (2688803i32)) {
                    _gotoNext = 2688803i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2688830i32;
                } else if (__value__ == (2688830i32)) {
                    _i++;
                    _gotoNext = 2688113i32;
                } else if (__value__ == (2688845i32)) {
                    _gotoNext = 2688855i32;
                } else if (__value__ == (2688855i32)) {
                    if (!_sawdigits_2688056) {
                        _gotoNext = 2688869i32;
                    } else {
                        _gotoNext = 2688884i32;
                    };
                } else if (__value__ == (2688869i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688884i32;
                } else if (__value__ == (2688884i32)) {
                    if (!_sawdot_2688039) {
                        _gotoNext = 2688895i32;
                    } else {
                        _gotoNext = 2688912i32;
                    };
                } else if (__value__ == (2688895i32)) {
                    _dp_2688098 = _nd_2688076;
                    _gotoNext = 2688912i32;
                } else if (__value__ == (2688912i32)) {
                    if (_base_2687796 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2688926i32;
                    } else {
                        _gotoNext = 2689171i32;
                    };
                } else if (__value__ == (2688926i32)) {
                    _dp_2688098 = (_dp_2688098 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2688085 = (_ndMant_2688085 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2689171i32;
                } else if (__value__ == (2689171i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2687861) : Bool)) {
                        _gotoNext = 2689211i32;
                    } else if (_base_2687796 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2689644i32;
                    } else {
                        _gotoNext = 2689685i32;
                    };
                } else if (__value__ == (2689211i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2689236i32;
                    } else {
                        _gotoNext = 2689254i32;
                    };
                } else if (__value__ == (2689236i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689254i32;
                } else if (__value__ == (2689254i32)) {
                    _esign_2689254 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2689282i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2689315i32;
                    } else {
                        _gotoNext = 2689344i32;
                    };
                } else if (__value__ == (2689282i32)) {
                    _i++;
                    _gotoNext = 2689344i32;
                } else if (__value__ == (2689315i32)) {
                    _i++;
                    _esign_2689254 = (-1 : stdgo.GoInt);
                    _gotoNext = 2689344i32;
                } else if (__value__ == (2689344i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2689387i32;
                    } else {
                        _gotoNext = 2689405i32;
                    };
                } else if (__value__ == (2689387i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689405i32;
                } else if (__value__ == (2689405i32)) {
                    _e_2689405 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2689414i32;
                } else if (__value__ == (2689414i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2689483i32;
                    } else {
                        _gotoNext = 2689606i32;
                    };
                } else if (__value__ == (2689479i32)) {
                    _i++;
                    _gotoNext = 2689414i32;
                } else if (__value__ == (2689483i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2689503i32;
                    } else {
                        _gotoNext = 2689549i32;
                    };
                } else if (__value__ == (2689503i32)) {
                    _underscores_2687637 = true;
                    _i++;
                    _gotoNext = 2689414i32;
                } else if (__value__ == (2689549i32)) {
                    if ((_e_2689405 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2689562i32;
                    } else {
                        _gotoNext = 2689479i32;
                    };
                } else if (__value__ == (2689562i32)) {
                    _e_2689405 = (((_e_2689405 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2689479i32;
                } else if (__value__ == (2689606i32)) {
                    _dp_2688098 = (_dp_2688098 + ((_e_2689405 * _esign_2689254 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2689685i32;
                } else if (__value__ == (2689644i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689685i32;
                } else if (__value__ == (2689685i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2689702i32;
                    } else {
                        _gotoNext = 2689729i32;
                    };
                } else if (__value__ == (2689702i32)) {
                    _exp = (_dp_2688098 - _ndMant_2688085 : stdgo.GoInt);
                    _gotoNext = 2689729i32;
                } else if (__value__ == (2689729i32)) {
                    if ((_underscores_2687637 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2689768i32;
                    } else {
                        _gotoNext = 2689784i32;
                    };
                } else if (__value__ == (2689768i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689784i32;
                } else if (__value__ == (2689784i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
