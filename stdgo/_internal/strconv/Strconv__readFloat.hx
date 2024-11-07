package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _base_2728024:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2727865:Bool = false;
        var _e_2729633:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2728267:Bool = false;
        var _expChar_2728089:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_2728374:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2728326:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2728313:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2728284:Bool = false;
        var _esign_2729482:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2728304:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2728044:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2727865 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2727921i32;
                    } else {
                        _gotoNext = 2727936i32;
                    };
                } else if (__value__ == (2727921i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2727936i32;
                } else if (__value__ == (2727936i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2727936i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2727946i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2727971i32;
                    } else {
                        _gotoNext = 2728024i32;
                    };
                } else if (__value__ == (2727946i32)) {
                    _i++;
                    _gotoNext = 2728024i32;
                } else if (__value__ == (2727971i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2728024i32;
                } else if (__value__ == (2728024i32)) {
                    _base_2728024 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2728044 = (19 : stdgo.GoInt);
                    _expChar_2728089 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2728166i32;
                    } else {
                        _gotoNext = 2728267i32;
                    };
                } else if (__value__ == (2728166i32)) {
                    _base_2728024 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2728044 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2728089 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2728267i32;
                } else if (__value__ == (2728267i32)) {
                    _sawdot_2728267 = false;
                    _sawdigits_2728284 = false;
                    _nd_2728304 = (0 : stdgo.GoInt);
                    _ndMant_2728313 = (0 : stdgo.GoInt);
                    _dp_2728326 = (0 : stdgo.GoInt);
                    _gotoNext = 2728334i32;
                } else if (__value__ == (2728334i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2728341i32;
                } else if (__value__ == (2728341i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2728363i32;
                    } else {
                        _gotoNext = 2729083i32;
                    };
                } else if (__value__ == (2728363i32)) {
                    _c_2728374 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2728367i32;
                } else if (__value__ == (2728367i32)) {
                    {
                        _c_2728374 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2728374 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2728394i32;
                            } else if (__value__ == (_c_2728374 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2728446i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2728374 : Bool) && (_c_2728374 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2728539i32;
                            } else if (__value__ == (((_base_2728024 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2728374) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2728374) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2728831i32;
                            } else {
                                _gotoNext = 2729073i32;
                            };
                        };
                    };
                } else if (__value__ == (2728394i32)) {
                    _underscores_2727865 = true;
                    _i++;
                    _gotoNext = 2728341i32;
                } else if (__value__ == (2728446i32)) {
                    if (_sawdot_2728267) {
                        _gotoNext = 2728474i32;
                    } else {
                        _gotoNext = 2728499i32;
                    };
                } else if (__value__ == (2728474i32)) {
                    _loopBreak = true;
                    _gotoNext = 2728341i32;
                } else if (__value__ == (2728499i32)) {
                    _sawdot_2728267 = true;
                    _dp_2728326 = _nd_2728304;
                    _i++;
                    _gotoNext = 2728341i32;
                } else if (__value__ == (2728539i32)) {
                    _sawdigits_2728284 = true;
                    if (((_c_2728374 == (48 : stdgo.GoUInt8)) && (_nd_2728304 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2728612i32;
                    } else {
                        _gotoNext = 2728668i32;
                    };
                } else if (__value__ == (2728612i32)) {
                    _dp_2728326--;
                    _i++;
                    _gotoNext = 2728341i32;
                } else if (__value__ == (2728668i32)) {
                    _nd_2728304++;
                    if ((_ndMant_2728313 < _maxMantDigits_2728044 : Bool)) {
                        _gotoNext = 2728702i32;
                    } else if (_c_2728374 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2728792i32;
                    } else {
                        _gotoNext = 2728819i32;
                    };
                } else if (__value__ == (2728702i32)) {
                    _mantissa = (_mantissa * (_base_2728024) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2728374 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2728313++;
                    _gotoNext = 2728819i32;
                } else if (__value__ == (2728792i32)) {
                    _trunc = true;
                    _gotoNext = 2728819i32;
                } else if (__value__ == (2728819i32)) {
                    _i++;
                    _gotoNext = 2728341i32;
                } else if (__value__ == (2728831i32)) {
                    _sawdigits_2728284 = true;
                    _nd_2728304++;
                    if ((_ndMant_2728313 < _maxMantDigits_2728044 : Bool)) {
                        _gotoNext = 2728943i32;
                    } else {
                        _gotoNext = 2729031i32;
                    };
                } else if (__value__ == (2728943i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2728374) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2728313++;
                    _gotoNext = 2729058i32;
                } else if (__value__ == (2729031i32)) {
                    _trunc = true;
                    _gotoNext = 2729058i32;
                } else if (__value__ == (2729058i32)) {
                    _i++;
                    _gotoNext = 2728341i32;
                } else if (__value__ == (2729073i32)) {
                    _gotoNext = 2729083i32;
                } else if (__value__ == (2729083i32)) {
                    if (!_sawdigits_2728284) {
                        _gotoNext = 2729097i32;
                    } else {
                        _gotoNext = 2729112i32;
                    };
                } else if (__value__ == (2729097i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2729112i32;
                } else if (__value__ == (2729112i32)) {
                    if (!_sawdot_2728267) {
                        _gotoNext = 2729123i32;
                    } else {
                        _gotoNext = 2729140i32;
                    };
                } else if (__value__ == (2729123i32)) {
                    _dp_2728326 = _nd_2728304;
                    _gotoNext = 2729140i32;
                } else if (__value__ == (2729140i32)) {
                    if (_base_2728024 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2729154i32;
                    } else {
                        _gotoNext = 2729399i32;
                    };
                } else if (__value__ == (2729154i32)) {
                    _dp_2728326 = (_dp_2728326 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2728313 = (_ndMant_2728313 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2729399i32;
                } else if (__value__ == (2729399i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2728089) : Bool)) {
                        _gotoNext = 2729439i32;
                    } else if (_base_2728024 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2729872i32;
                    } else {
                        _gotoNext = 2729913i32;
                    };
                } else if (__value__ == (2729439i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2729464i32;
                    } else {
                        _gotoNext = 2729482i32;
                    };
                } else if (__value__ == (2729464i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2729482i32;
                } else if (__value__ == (2729482i32)) {
                    _esign_2729482 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2729510i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2729543i32;
                    } else {
                        _gotoNext = 2729572i32;
                    };
                } else if (__value__ == (2729510i32)) {
                    _i++;
                    _gotoNext = 2729572i32;
                } else if (__value__ == (2729543i32)) {
                    _i++;
                    _esign_2729482 = (-1 : stdgo.GoInt);
                    _gotoNext = 2729572i32;
                } else if (__value__ == (2729572i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2729615i32;
                    } else {
                        _gotoNext = 2729633i32;
                    };
                } else if (__value__ == (2729615i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2729633i32;
                } else if (__value__ == (2729633i32)) {
                    _e_2729633 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2729642i32;
                } else if (__value__ == (2729642i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2729711i32;
                    } else {
                        _gotoNext = 2729834i32;
                    };
                } else if (__value__ == (2729707i32)) {
                    _i++;
                    _gotoNext = 2729642i32;
                } else if (__value__ == (2729711i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2729731i32;
                    } else {
                        _gotoNext = 2729777i32;
                    };
                } else if (__value__ == (2729731i32)) {
                    _underscores_2727865 = true;
                    _i++;
                    _gotoNext = 2729642i32;
                } else if (__value__ == (2729777i32)) {
                    if ((_e_2729633 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2729790i32;
                    } else {
                        _gotoNext = 2729707i32;
                    };
                } else if (__value__ == (2729790i32)) {
                    _e_2729633 = (((_e_2729633 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2729707i32;
                } else if (__value__ == (2729834i32)) {
                    _dp_2728326 = (_dp_2728326 + ((_e_2729633 * _esign_2729482 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2729913i32;
                } else if (__value__ == (2729872i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2729913i32;
                } else if (__value__ == (2729913i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2729930i32;
                    } else {
                        _gotoNext = 2729957i32;
                    };
                } else if (__value__ == (2729930i32)) {
                    _exp = (_dp_2728326 - _ndMant_2728313 : stdgo.GoInt);
                    _gotoNext = 2729957i32;
                } else if (__value__ == (2729957i32)) {
                    if ((_underscores_2727865 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2729996i32;
                    } else {
                        _gotoNext = 2730012i32;
                    };
                } else if (__value__ == (2729996i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2730012i32;
                } else if (__value__ == (2730012i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
