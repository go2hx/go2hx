package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2648965:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2647706:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2647658:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2647636:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2647616:Bool = false;
        var _maxMantDigits_2647376:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2647645:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2647421:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2647356:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2648814:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _sawdot_2647599:Bool = false;
        var _underscores_2647197:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2647197 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2647253i32;
                    } else {
                        _gotoNext = 2647268i32;
                    };
                } else if (__value__ == (2647253i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647268i32;
                } else if (__value__ == (2647268i32)) {
                    _gotoNext = 2647268i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2647278i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2647303i32;
                    } else {
                        _gotoNext = 2647356i32;
                    };
                } else if (__value__ == (2647278i32)) {
                    _i++;
                    _gotoNext = 2647356i32;
                } else if (__value__ == (2647303i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2647356i32;
                } else if (__value__ == (2647356i32)) {
                    _base_2647356 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2647376 = (19 : stdgo.GoInt);
                    _expChar_2647421 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2647498i32;
                    } else {
                        _gotoNext = 2647599i32;
                    };
                } else if (__value__ == (2647498i32)) {
                    _base_2647356 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2647376 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2647421 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2647599i32;
                } else if (__value__ == (2647599i32)) {
                    _sawdot_2647599 = false;
                    _sawdigits_2647616 = false;
                    _nd_2647636 = (0 : stdgo.GoInt);
                    _ndMant_2647645 = (0 : stdgo.GoInt);
                    _dp_2647658 = (0 : stdgo.GoInt);
                    _gotoNext = 2647666i32;
                } else if (__value__ == (2647666i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2647673i32;
                } else if (__value__ == (2647673i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2647695i32;
                    } else {
                        _gotoNext = 2648415i32;
                    };
                } else if (__value__ == (2647695i32)) {
                    _gotoNext = 2647699i32;
                } else if (__value__ == (2647699i32)) {
                    {
                        _c_2647706 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2647706 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2647726i32;
                            } else if (__value__ == (_c_2647706 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2647778i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2647706 : Bool) && (_c_2647706 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2647871i32;
                            } else if (__value__ == (((_base_2647356 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2647706) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2647706) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2648163i32;
                            } else {
                                _gotoNext = 2648405i32;
                            };
                        };
                    };
                } else if (__value__ == (2647726i32)) {
                    _underscores_2647197 = true;
                    _i++;
                    _gotoNext = 2647673i32;
                } else if (__value__ == (2647778i32)) {
                    if (_sawdot_2647599) {
                        _gotoNext = 2647806i32;
                    } else {
                        _gotoNext = 2647831i32;
                    };
                } else if (__value__ == (2647806i32)) {
                    _loopBreak = true;
                    _gotoNext = 2647673i32;
                } else if (__value__ == (2647831i32)) {
                    _sawdot_2647599 = true;
                    _dp_2647658 = _nd_2647636;
                    _i++;
                    _gotoNext = 2647673i32;
                } else if (__value__ == (2647871i32)) {
                    _sawdigits_2647616 = true;
                    if (((_c_2647706 == (48 : stdgo.GoUInt8)) && (_nd_2647636 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2647944i32;
                    } else {
                        _gotoNext = 2648000i32;
                    };
                } else if (__value__ == (2647944i32)) {
                    _dp_2647658--;
                    _i++;
                    _gotoNext = 2647673i32;
                } else if (__value__ == (2648000i32)) {
                    _nd_2647636++;
                    if ((_ndMant_2647645 < _maxMantDigits_2647376 : Bool)) {
                        _gotoNext = 2648034i32;
                    } else if (_c_2647706 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2648124i32;
                    } else {
                        _gotoNext = 2648151i32;
                    };
                } else if (__value__ == (2648034i32)) {
                    _mantissa = (_mantissa * (_base_2647356) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2647706 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2647645++;
                    _gotoNext = 2648151i32;
                } else if (__value__ == (2648124i32)) {
                    _trunc = true;
                    _gotoNext = 2648151i32;
                } else if (__value__ == (2648151i32)) {
                    _i++;
                    _gotoNext = 2647673i32;
                } else if (__value__ == (2648163i32)) {
                    _sawdigits_2647616 = true;
                    _nd_2647636++;
                    if ((_ndMant_2647645 < _maxMantDigits_2647376 : Bool)) {
                        _gotoNext = 2648275i32;
                    } else {
                        _gotoNext = 2648363i32;
                    };
                } else if (__value__ == (2648275i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2647706) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2647645++;
                    _gotoNext = 2648390i32;
                } else if (__value__ == (2648363i32)) {
                    _gotoNext = 2648363i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2648390i32;
                } else if (__value__ == (2648390i32)) {
                    _i++;
                    _gotoNext = 2647673i32;
                } else if (__value__ == (2648405i32)) {
                    _gotoNext = 2648415i32;
                } else if (__value__ == (2648415i32)) {
                    if (!_sawdigits_2647616) {
                        _gotoNext = 2648429i32;
                    } else {
                        _gotoNext = 2648444i32;
                    };
                } else if (__value__ == (2648429i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648444i32;
                } else if (__value__ == (2648444i32)) {
                    if (!_sawdot_2647599) {
                        _gotoNext = 2648455i32;
                    } else {
                        _gotoNext = 2648472i32;
                    };
                } else if (__value__ == (2648455i32)) {
                    _dp_2647658 = _nd_2647636;
                    _gotoNext = 2648472i32;
                } else if (__value__ == (2648472i32)) {
                    if (_base_2647356 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2648486i32;
                    } else {
                        _gotoNext = 2648731i32;
                    };
                } else if (__value__ == (2648486i32)) {
                    _dp_2647658 = (_dp_2647658 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2647645 = (_ndMant_2647645 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2648731i32;
                } else if (__value__ == (2648731i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2647421) : Bool)) {
                        _gotoNext = 2648771i32;
                    } else if (_base_2647356 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2649204i32;
                    } else {
                        _gotoNext = 2649245i32;
                    };
                } else if (__value__ == (2648771i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2648796i32;
                    } else {
                        _gotoNext = 2648814i32;
                    };
                } else if (__value__ == (2648796i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648814i32;
                } else if (__value__ == (2648814i32)) {
                    _esign_2648814 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2648842i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2648875i32;
                    } else {
                        _gotoNext = 2648904i32;
                    };
                } else if (__value__ == (2648842i32)) {
                    _i++;
                    _gotoNext = 2648904i32;
                } else if (__value__ == (2648875i32)) {
                    _i++;
                    _esign_2648814 = (-1 : stdgo.GoInt);
                    _gotoNext = 2648904i32;
                } else if (__value__ == (2648904i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2648947i32;
                    } else {
                        _gotoNext = 2648965i32;
                    };
                } else if (__value__ == (2648947i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648965i32;
                } else if (__value__ == (2648965i32)) {
                    _e_2648965 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2648974i32;
                } else if (__value__ == (2648974i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2649043i32;
                    } else {
                        _gotoNext = 2649166i32;
                    };
                } else if (__value__ == (2649039i32)) {
                    _i++;
                    _gotoNext = 2648974i32;
                } else if (__value__ == (2649043i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2649063i32;
                    } else {
                        _gotoNext = 2649109i32;
                    };
                } else if (__value__ == (2649063i32)) {
                    _underscores_2647197 = true;
                    _i++;
                    _gotoNext = 2648974i32;
                } else if (__value__ == (2649109i32)) {
                    if ((_e_2648965 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2649122i32;
                    } else {
                        _gotoNext = 2649039i32;
                    };
                } else if (__value__ == (2649122i32)) {
                    _e_2648965 = (((_e_2648965 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2649039i32;
                } else if (__value__ == (2649166i32)) {
                    _dp_2647658 = (_dp_2647658 + ((_e_2648965 * _esign_2648814 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2649245i32;
                } else if (__value__ == (2649204i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2649245i32;
                } else if (__value__ == (2649245i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2649262i32;
                    } else {
                        _gotoNext = 2649289i32;
                    };
                } else if (__value__ == (2649262i32)) {
                    _exp = (_dp_2647658 - _ndMant_2647645 : stdgo.GoInt);
                    _gotoNext = 2649289i32;
                } else if (__value__ == (2649289i32)) {
                    if ((_underscores_2647197 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2649328i32;
                    } else {
                        _gotoNext = 2649344i32;
                    };
                } else if (__value__ == (2649328i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2649344i32;
                } else if (__value__ == (2649344i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
