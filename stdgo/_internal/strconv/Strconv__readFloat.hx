package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2683017:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2682975:Bool = false;
        var _expChar_2682780:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2684324:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2684173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2683004:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2682995:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2682735:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2682556:Bool = false;
        var _c_2683065:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdot_2682958:Bool = false;
        var _base_2682715:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2682556 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2682612i32;
                    } else {
                        _gotoNext = 2682627i32;
                    };
                } else if (__value__ == (2682612i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682627i32;
                } else if (__value__ == (2682627i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2682627i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2682637i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2682662i32;
                    } else {
                        _gotoNext = 2682715i32;
                    };
                } else if (__value__ == (2682637i32)) {
                    _i++;
                    _gotoNext = 2682715i32;
                } else if (__value__ == (2682662i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2682715i32;
                } else if (__value__ == (2682715i32)) {
                    _base_2682715 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2682735 = (19 : stdgo.GoInt);
                    _expChar_2682780 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2682857i32;
                    } else {
                        _gotoNext = 2682958i32;
                    };
                } else if (__value__ == (2682857i32)) {
                    _base_2682715 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2682735 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2682780 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2682958i32;
                } else if (__value__ == (2682958i32)) {
                    _sawdot_2682958 = false;
                    _sawdigits_2682975 = false;
                    _nd_2682995 = (0 : stdgo.GoInt);
                    _ndMant_2683004 = (0 : stdgo.GoInt);
                    _dp_2683017 = (0 : stdgo.GoInt);
                    _gotoNext = 2683025i32;
                } else if (__value__ == (2683025i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2683032i32;
                } else if (__value__ == (2683032i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2683054i32;
                    } else {
                        _gotoNext = 2683774i32;
                    };
                } else if (__value__ == (2683054i32)) {
                    _c_2683065 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2683058i32;
                } else if (__value__ == (2683058i32)) {
                    {
                        _c_2683065 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2683065 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2683085i32;
                            } else if (__value__ == (_c_2683065 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2683137i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2683065 : Bool) && (_c_2683065 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2683230i32;
                            } else if (__value__ == (((_base_2682715 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2683065) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2683065) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2683522i32;
                            } else {
                                _gotoNext = 2683764i32;
                            };
                        };
                    };
                } else if (__value__ == (2683085i32)) {
                    _underscores_2682556 = true;
                    _i++;
                    _gotoNext = 2683032i32;
                } else if (__value__ == (2683137i32)) {
                    if (_sawdot_2682958) {
                        _gotoNext = 2683165i32;
                    } else {
                        _gotoNext = 2683190i32;
                    };
                } else if (__value__ == (2683165i32)) {
                    _loopBreak = true;
                    _gotoNext = 2683032i32;
                } else if (__value__ == (2683190i32)) {
                    _sawdot_2682958 = true;
                    _dp_2683017 = _nd_2682995;
                    _i++;
                    _gotoNext = 2683032i32;
                } else if (__value__ == (2683230i32)) {
                    _sawdigits_2682975 = true;
                    if (((_c_2683065 == (48 : stdgo.GoUInt8)) && (_nd_2682995 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2683303i32;
                    } else {
                        _gotoNext = 2683359i32;
                    };
                } else if (__value__ == (2683303i32)) {
                    _dp_2683017--;
                    _i++;
                    _gotoNext = 2683032i32;
                } else if (__value__ == (2683359i32)) {
                    _nd_2682995++;
                    if ((_ndMant_2683004 < _maxMantDigits_2682735 : Bool)) {
                        _gotoNext = 2683393i32;
                    } else if (_c_2683065 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2683483i32;
                    } else {
                        _gotoNext = 2683510i32;
                    };
                } else if (__value__ == (2683393i32)) {
                    _mantissa = (_mantissa * (_base_2682715) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2683065 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2683004++;
                    _gotoNext = 2683510i32;
                } else if (__value__ == (2683483i32)) {
                    _trunc = true;
                    _gotoNext = 2683510i32;
                } else if (__value__ == (2683510i32)) {
                    _i++;
                    _gotoNext = 2683032i32;
                } else if (__value__ == (2683522i32)) {
                    _sawdigits_2682975 = true;
                    _nd_2682995++;
                    if ((_ndMant_2683004 < _maxMantDigits_2682735 : Bool)) {
                        _gotoNext = 2683634i32;
                    } else {
                        _gotoNext = 2683722i32;
                    };
                } else if (__value__ == (2683634i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2683065) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2683004++;
                    _gotoNext = 2683749i32;
                } else if (__value__ == (2683722i32)) {
                    _trunc = true;
                    _gotoNext = 2683749i32;
                } else if (__value__ == (2683749i32)) {
                    _i++;
                    _gotoNext = 2683032i32;
                } else if (__value__ == (2683764i32)) {
                    _gotoNext = 2683774i32;
                } else if (__value__ == (2683774i32)) {
                    if (!_sawdigits_2682975) {
                        _gotoNext = 2683788i32;
                    } else {
                        _gotoNext = 2683803i32;
                    };
                } else if (__value__ == (2683788i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2683803i32;
                } else if (__value__ == (2683803i32)) {
                    if (!_sawdot_2682958) {
                        _gotoNext = 2683814i32;
                    } else {
                        _gotoNext = 2683831i32;
                    };
                } else if (__value__ == (2683814i32)) {
                    _dp_2683017 = _nd_2682995;
                    _gotoNext = 2683831i32;
                } else if (__value__ == (2683831i32)) {
                    if (_base_2682715 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2683845i32;
                    } else {
                        _gotoNext = 2684090i32;
                    };
                } else if (__value__ == (2683845i32)) {
                    _dp_2683017 = (_dp_2683017 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2683004 = (_ndMant_2683004 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2684090i32;
                } else if (__value__ == (2684090i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2682780) : Bool)) {
                        _gotoNext = 2684130i32;
                    } else if (_base_2682715 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2684563i32;
                    } else {
                        _gotoNext = 2684604i32;
                    };
                } else if (__value__ == (2684130i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2684155i32;
                    } else {
                        _gotoNext = 2684173i32;
                    };
                } else if (__value__ == (2684155i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2684173i32;
                } else if (__value__ == (2684173i32)) {
                    _esign_2684173 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2684201i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2684234i32;
                    } else {
                        _gotoNext = 2684263i32;
                    };
                } else if (__value__ == (2684201i32)) {
                    _i++;
                    _gotoNext = 2684263i32;
                } else if (__value__ == (2684234i32)) {
                    _i++;
                    _esign_2684173 = (-1 : stdgo.GoInt);
                    _gotoNext = 2684263i32;
                } else if (__value__ == (2684263i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2684306i32;
                    } else {
                        _gotoNext = 2684324i32;
                    };
                } else if (__value__ == (2684306i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2684324i32;
                } else if (__value__ == (2684324i32)) {
                    _e_2684324 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2684333i32;
                } else if (__value__ == (2684333i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2684402i32;
                    } else {
                        _gotoNext = 2684525i32;
                    };
                } else if (__value__ == (2684398i32)) {
                    _i++;
                    _gotoNext = 2684333i32;
                } else if (__value__ == (2684402i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2684422i32;
                    } else {
                        _gotoNext = 2684468i32;
                    };
                } else if (__value__ == (2684422i32)) {
                    _underscores_2682556 = true;
                    _i++;
                    _gotoNext = 2684333i32;
                } else if (__value__ == (2684468i32)) {
                    if ((_e_2684324 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2684481i32;
                    } else {
                        _gotoNext = 2684398i32;
                    };
                } else if (__value__ == (2684481i32)) {
                    _e_2684324 = (((_e_2684324 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2684398i32;
                } else if (__value__ == (2684525i32)) {
                    _dp_2683017 = (_dp_2683017 + ((_e_2684324 * _esign_2684173 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2684604i32;
                } else if (__value__ == (2684563i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2684604i32;
                } else if (__value__ == (2684604i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2684621i32;
                    } else {
                        _gotoNext = 2684648i32;
                    };
                } else if (__value__ == (2684621i32)) {
                    _exp = (_dp_2683017 - _ndMant_2683004 : stdgo.GoInt);
                    _gotoNext = 2684648i32;
                } else if (__value__ == (2684648i32)) {
                    if ((_underscores_2682556 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2684687i32;
                    } else {
                        _gotoNext = 2684703i32;
                    };
                } else if (__value__ == (2684687i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2684703i32;
                } else if (__value__ == (2684703i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
