package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _base_2805732:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2805573:Bool = false;
        var _c_2806082:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2806012:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2805752:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2806021:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2805992:Bool = false;
        var _e_2807341:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2807190:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2805975:Bool = false;
        var _expChar_2805797:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2806034:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2805573 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2805629i32;
                    } else {
                        _gotoNext = 2805644i32;
                    };
                } else if (__value__ == (2805629i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2805644i32;
                } else if (__value__ == (2805644i32)) {
                    _gotoNext = 2805644i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2805654i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2805679i32;
                    } else {
                        _gotoNext = 2805732i32;
                    };
                } else if (__value__ == (2805654i32)) {
                    _i++;
                    _gotoNext = 2805732i32;
                } else if (__value__ == (2805679i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2805732i32;
                } else if (__value__ == (2805732i32)) {
                    _base_2805732 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2805752 = (19 : stdgo.GoInt);
                    _expChar_2805797 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2805874i32;
                    } else {
                        _gotoNext = 2805975i32;
                    };
                } else if (__value__ == (2805874i32)) {
                    _base_2805732 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2805752 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2805797 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2805975i32;
                } else if (__value__ == (2805975i32)) {
                    _sawdot_2805975 = false;
                    _sawdigits_2805992 = false;
                    _nd_2806012 = (0 : stdgo.GoInt);
                    _ndMant_2806021 = (0 : stdgo.GoInt);
                    _dp_2806034 = (0 : stdgo.GoInt);
                    _gotoNext = 2806042i32;
                } else if (__value__ == (2806042i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2806049i32;
                } else if (__value__ == (2806049i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2806071i32;
                    } else {
                        _gotoNext = 2806791i32;
                    };
                } else if (__value__ == (2806071i32)) {
                    _gotoNext = 2806075i32;
                } else if (__value__ == (2806075i32)) {
                    {
                        _c_2806082 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2806082 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2806102i32;
                            } else if (__value__ == (_c_2806082 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2806154i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2806082 : Bool) && (_c_2806082 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2806247i32;
                            } else if (__value__ == (((_base_2805732 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2806082) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2806082) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2806539i32;
                            } else {
                                _gotoNext = 2806781i32;
                            };
                        };
                    };
                } else if (__value__ == (2806102i32)) {
                    _underscores_2805573 = true;
                    _i++;
                    _gotoNext = 2806049i32;
                } else if (__value__ == (2806154i32)) {
                    if (_sawdot_2805975) {
                        _gotoNext = 2806182i32;
                    } else {
                        _gotoNext = 2806207i32;
                    };
                } else if (__value__ == (2806182i32)) {
                    _loopBreak = true;
                    _gotoNext = 2806049i32;
                } else if (__value__ == (2806207i32)) {
                    _sawdot_2805975 = true;
                    _dp_2806034 = _nd_2806012;
                    _i++;
                    _gotoNext = 2806049i32;
                } else if (__value__ == (2806247i32)) {
                    _sawdigits_2805992 = true;
                    if (((_c_2806082 == (48 : stdgo.GoUInt8)) && (_nd_2806012 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2806320i32;
                    } else {
                        _gotoNext = 2806376i32;
                    };
                } else if (__value__ == (2806320i32)) {
                    _dp_2806034--;
                    _i++;
                    _gotoNext = 2806049i32;
                } else if (__value__ == (2806376i32)) {
                    _nd_2806012++;
                    if ((_ndMant_2806021 < _maxMantDigits_2805752 : Bool)) {
                        _gotoNext = 2806410i32;
                    } else if (_c_2806082 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2806500i32;
                    } else {
                        _gotoNext = 2806527i32;
                    };
                } else if (__value__ == (2806410i32)) {
                    _mantissa = (_mantissa * (_base_2805732) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2806082 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2806021++;
                    _gotoNext = 2806527i32;
                } else if (__value__ == (2806500i32)) {
                    _trunc = true;
                    _gotoNext = 2806527i32;
                } else if (__value__ == (2806527i32)) {
                    _i++;
                    _gotoNext = 2806049i32;
                } else if (__value__ == (2806539i32)) {
                    _sawdigits_2805992 = true;
                    _nd_2806012++;
                    if ((_ndMant_2806021 < _maxMantDigits_2805752 : Bool)) {
                        _gotoNext = 2806651i32;
                    } else {
                        _gotoNext = 2806739i32;
                    };
                } else if (__value__ == (2806651i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2806082) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2806021++;
                    _gotoNext = 2806766i32;
                } else if (__value__ == (2806739i32)) {
                    _gotoNext = 2806739i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2806766i32;
                } else if (__value__ == (2806766i32)) {
                    _i++;
                    _gotoNext = 2806049i32;
                } else if (__value__ == (2806781i32)) {
                    _gotoNext = 2806791i32;
                } else if (__value__ == (2806791i32)) {
                    if (!_sawdigits_2805992) {
                        _gotoNext = 2806805i32;
                    } else {
                        _gotoNext = 2806820i32;
                    };
                } else if (__value__ == (2806805i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2806820i32;
                } else if (__value__ == (2806820i32)) {
                    if (!_sawdot_2805975) {
                        _gotoNext = 2806831i32;
                    } else {
                        _gotoNext = 2806848i32;
                    };
                } else if (__value__ == (2806831i32)) {
                    _dp_2806034 = _nd_2806012;
                    _gotoNext = 2806848i32;
                } else if (__value__ == (2806848i32)) {
                    if (_base_2805732 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2806862i32;
                    } else {
                        _gotoNext = 2807107i32;
                    };
                } else if (__value__ == (2806862i32)) {
                    _dp_2806034 = (_dp_2806034 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2806021 = (_ndMant_2806021 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2807107i32;
                } else if (__value__ == (2807107i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2805797) : Bool)) {
                        _gotoNext = 2807147i32;
                    } else if (_base_2805732 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2807580i32;
                    } else {
                        _gotoNext = 2807621i32;
                    };
                } else if (__value__ == (2807147i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2807172i32;
                    } else {
                        _gotoNext = 2807190i32;
                    };
                } else if (__value__ == (2807172i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2807190i32;
                } else if (__value__ == (2807190i32)) {
                    _esign_2807190 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2807218i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2807251i32;
                    } else {
                        _gotoNext = 2807280i32;
                    };
                } else if (__value__ == (2807218i32)) {
                    _i++;
                    _gotoNext = 2807280i32;
                } else if (__value__ == (2807251i32)) {
                    _i++;
                    _esign_2807190 = (-1 : stdgo.GoInt);
                    _gotoNext = 2807280i32;
                } else if (__value__ == (2807280i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2807323i32;
                    } else {
                        _gotoNext = 2807341i32;
                    };
                } else if (__value__ == (2807323i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2807341i32;
                } else if (__value__ == (2807341i32)) {
                    _e_2807341 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2807350i32;
                } else if (__value__ == (2807350i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2807419i32;
                    } else {
                        _gotoNext = 2807542i32;
                    };
                } else if (__value__ == (2807415i32)) {
                    _i++;
                    _gotoNext = 2807350i32;
                } else if (__value__ == (2807419i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2807439i32;
                    } else {
                        _gotoNext = 2807485i32;
                    };
                } else if (__value__ == (2807439i32)) {
                    _underscores_2805573 = true;
                    _i++;
                    _gotoNext = 2807350i32;
                } else if (__value__ == (2807485i32)) {
                    if ((_e_2807341 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2807498i32;
                    } else {
                        _gotoNext = 2807415i32;
                    };
                } else if (__value__ == (2807498i32)) {
                    _e_2807341 = (((_e_2807341 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2807415i32;
                } else if (__value__ == (2807542i32)) {
                    _dp_2806034 = (_dp_2806034 + ((_e_2807341 * _esign_2807190 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2807621i32;
                } else if (__value__ == (2807580i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2807621i32;
                } else if (__value__ == (2807621i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2807638i32;
                    } else {
                        _gotoNext = 2807665i32;
                    };
                } else if (__value__ == (2807638i32)) {
                    _exp = (_dp_2806034 - _ndMant_2806021 : stdgo.GoInt);
                    _gotoNext = 2807665i32;
                } else if (__value__ == (2807665i32)) {
                    if ((_underscores_2805573 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2807704i32;
                    } else {
                        _gotoNext = 2807720i32;
                    };
                } else if (__value__ == (2807704i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2807720i32;
                } else if (__value__ == (2807720i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
