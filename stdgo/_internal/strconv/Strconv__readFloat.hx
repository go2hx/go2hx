package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2696299:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2694690:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _nd_2694970:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2694950:Bool = false;
        var _loopBreak = false;
        var _dp_2694992:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2694979:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2695040:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2694531:Bool = false;
        var _esign_2696148:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2694755:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2694710:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2694933:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2694531 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2694587i32;
                    } else {
                        _gotoNext = 2694602i32;
                    };
                } else if (__value__ == (2694587i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2694602i32;
                } else if (__value__ == (2694602i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2694602i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2694612i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2694637i32;
                    } else {
                        _gotoNext = 2694690i32;
                    };
                } else if (__value__ == (2694612i32)) {
                    _i++;
                    _gotoNext = 2694690i32;
                } else if (__value__ == (2694637i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2694690i32;
                } else if (__value__ == (2694690i32)) {
                    _base_2694690 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2694710 = (19 : stdgo.GoInt);
                    _expChar_2694755 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2694832i32;
                    } else {
                        _gotoNext = 2694933i32;
                    };
                } else if (__value__ == (2694832i32)) {
                    _base_2694690 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2694710 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2694755 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2694933i32;
                } else if (__value__ == (2694933i32)) {
                    _sawdot_2694933 = false;
                    _sawdigits_2694950 = false;
                    _nd_2694970 = (0 : stdgo.GoInt);
                    _ndMant_2694979 = (0 : stdgo.GoInt);
                    _dp_2694992 = (0 : stdgo.GoInt);
                    _gotoNext = 2695000i32;
                } else if (__value__ == (2695000i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2695007i32;
                } else if (__value__ == (2695007i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2695029i32;
                    } else {
                        _gotoNext = 2695749i32;
                    };
                } else if (__value__ == (2695029i32)) {
                    _c_2695040 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2695033i32;
                } else if (__value__ == (2695033i32)) {
                    {
                        _c_2695040 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2695040 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2695060i32;
                            } else if (__value__ == (_c_2695040 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2695112i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2695040 : Bool) && (_c_2695040 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2695205i32;
                            } else if (__value__ == (((_base_2694690 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2695040) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2695040) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2695497i32;
                            } else {
                                _gotoNext = 2695739i32;
                            };
                        };
                    };
                } else if (__value__ == (2695060i32)) {
                    _underscores_2694531 = true;
                    _i++;
                    _gotoNext = 2695007i32;
                } else if (__value__ == (2695112i32)) {
                    if (_sawdot_2694933) {
                        _gotoNext = 2695140i32;
                    } else {
                        _gotoNext = 2695165i32;
                    };
                } else if (__value__ == (2695140i32)) {
                    _loopBreak = true;
                    _gotoNext = 2695007i32;
                } else if (__value__ == (2695165i32)) {
                    _sawdot_2694933 = true;
                    _dp_2694992 = _nd_2694970;
                    _i++;
                    _gotoNext = 2695007i32;
                } else if (__value__ == (2695205i32)) {
                    _sawdigits_2694950 = true;
                    if (((_c_2695040 == (48 : stdgo.GoUInt8)) && (_nd_2694970 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2695278i32;
                    } else {
                        _gotoNext = 2695334i32;
                    };
                } else if (__value__ == (2695278i32)) {
                    _dp_2694992--;
                    _i++;
                    _gotoNext = 2695007i32;
                } else if (__value__ == (2695334i32)) {
                    _nd_2694970++;
                    if ((_ndMant_2694979 < _maxMantDigits_2694710 : Bool)) {
                        _gotoNext = 2695368i32;
                    } else if (_c_2695040 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2695458i32;
                    } else {
                        _gotoNext = 2695485i32;
                    };
                } else if (__value__ == (2695368i32)) {
                    _mantissa = (_mantissa * (_base_2694690) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2695040 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2694979++;
                    _gotoNext = 2695485i32;
                } else if (__value__ == (2695458i32)) {
                    _trunc = true;
                    _gotoNext = 2695485i32;
                } else if (__value__ == (2695485i32)) {
                    _i++;
                    _gotoNext = 2695007i32;
                } else if (__value__ == (2695497i32)) {
                    _sawdigits_2694950 = true;
                    _nd_2694970++;
                    if ((_ndMant_2694979 < _maxMantDigits_2694710 : Bool)) {
                        _gotoNext = 2695609i32;
                    } else {
                        _gotoNext = 2695697i32;
                    };
                } else if (__value__ == (2695609i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2695040) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2694979++;
                    _gotoNext = 2695724i32;
                } else if (__value__ == (2695697i32)) {
                    _trunc = true;
                    _gotoNext = 2695724i32;
                } else if (__value__ == (2695724i32)) {
                    _i++;
                    _gotoNext = 2695007i32;
                } else if (__value__ == (2695739i32)) {
                    _gotoNext = 2695749i32;
                } else if (__value__ == (2695749i32)) {
                    if (!_sawdigits_2694950) {
                        _gotoNext = 2695763i32;
                    } else {
                        _gotoNext = 2695778i32;
                    };
                } else if (__value__ == (2695763i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2695778i32;
                } else if (__value__ == (2695778i32)) {
                    if (!_sawdot_2694933) {
                        _gotoNext = 2695789i32;
                    } else {
                        _gotoNext = 2695806i32;
                    };
                } else if (__value__ == (2695789i32)) {
                    _dp_2694992 = _nd_2694970;
                    _gotoNext = 2695806i32;
                } else if (__value__ == (2695806i32)) {
                    if (_base_2694690 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2695820i32;
                    } else {
                        _gotoNext = 2696065i32;
                    };
                } else if (__value__ == (2695820i32)) {
                    _dp_2694992 = (_dp_2694992 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2694979 = (_ndMant_2694979 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2696065i32;
                } else if (__value__ == (2696065i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2694755) : Bool)) {
                        _gotoNext = 2696105i32;
                    } else if (_base_2694690 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2696538i32;
                    } else {
                        _gotoNext = 2696579i32;
                    };
                } else if (__value__ == (2696105i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2696130i32;
                    } else {
                        _gotoNext = 2696148i32;
                    };
                } else if (__value__ == (2696130i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2696148i32;
                } else if (__value__ == (2696148i32)) {
                    _esign_2696148 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2696176i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2696209i32;
                    } else {
                        _gotoNext = 2696238i32;
                    };
                } else if (__value__ == (2696176i32)) {
                    _i++;
                    _gotoNext = 2696238i32;
                } else if (__value__ == (2696209i32)) {
                    _i++;
                    _esign_2696148 = (-1 : stdgo.GoInt);
                    _gotoNext = 2696238i32;
                } else if (__value__ == (2696238i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2696281i32;
                    } else {
                        _gotoNext = 2696299i32;
                    };
                } else if (__value__ == (2696281i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2696299i32;
                } else if (__value__ == (2696299i32)) {
                    _e_2696299 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2696308i32;
                } else if (__value__ == (2696308i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2696377i32;
                    } else {
                        _gotoNext = 2696500i32;
                    };
                } else if (__value__ == (2696373i32)) {
                    _i++;
                    _gotoNext = 2696308i32;
                } else if (__value__ == (2696377i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2696397i32;
                    } else {
                        _gotoNext = 2696443i32;
                    };
                } else if (__value__ == (2696397i32)) {
                    _underscores_2694531 = true;
                    _i++;
                    _gotoNext = 2696308i32;
                } else if (__value__ == (2696443i32)) {
                    if ((_e_2696299 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2696456i32;
                    } else {
                        _gotoNext = 2696373i32;
                    };
                } else if (__value__ == (2696456i32)) {
                    _e_2696299 = (((_e_2696299 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2696373i32;
                } else if (__value__ == (2696500i32)) {
                    _dp_2694992 = (_dp_2694992 + ((_e_2696299 * _esign_2696148 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2696579i32;
                } else if (__value__ == (2696538i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2696579i32;
                } else if (__value__ == (2696579i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2696596i32;
                    } else {
                        _gotoNext = 2696623i32;
                    };
                } else if (__value__ == (2696596i32)) {
                    _exp = (_dp_2694992 - _ndMant_2694979 : stdgo.GoInt);
                    _gotoNext = 2696623i32;
                } else if (__value__ == (2696623i32)) {
                    if ((_underscores_2694531 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2696662i32;
                    } else {
                        _gotoNext = 2696678i32;
                    };
                } else if (__value__ == (2696662i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2696678i32;
                } else if (__value__ == (2696678i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
