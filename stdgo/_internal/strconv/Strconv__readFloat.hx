package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2687474:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2687465:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2687428:Bool = false;
        var _maxMantDigits_2687205:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2687185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2688643:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2688794:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _expChar_2687250:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2687026:Bool = false;
        var _c_2687535:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2687487:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2687445:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2687026 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2687082i32;
                    } else {
                        _gotoNext = 2687097i32;
                    };
                } else if (__value__ == (2687082i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2687097i32;
                } else if (__value__ == (2687097i32)) {
                    _gotoNext = 2687097i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2687107i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2687132i32;
                    } else {
                        _gotoNext = 2687185i32;
                    };
                } else if (__value__ == (2687107i32)) {
                    _i++;
                    _gotoNext = 2687185i32;
                } else if (__value__ == (2687132i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2687185i32;
                } else if (__value__ == (2687185i32)) {
                    _base_2687185 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2687205 = (19 : stdgo.GoInt);
                    _expChar_2687250 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2687327i32;
                    } else {
                        _gotoNext = 2687428i32;
                    };
                } else if (__value__ == (2687327i32)) {
                    _base_2687185 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2687205 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2687250 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2687428i32;
                } else if (__value__ == (2687428i32)) {
                    _sawdot_2687428 = false;
                    _sawdigits_2687445 = false;
                    _nd_2687465 = (0 : stdgo.GoInt);
                    _ndMant_2687474 = (0 : stdgo.GoInt);
                    _dp_2687487 = (0 : stdgo.GoInt);
                    _gotoNext = 2687495i32;
                } else if (__value__ == (2687495i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2687502i32;
                } else if (__value__ == (2687502i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2687524i32;
                    } else {
                        _gotoNext = 2688244i32;
                    };
                } else if (__value__ == (2687524i32)) {
                    _gotoNext = 2687528i32;
                } else if (__value__ == (2687528i32)) {
                    {
                        _c_2687535 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2687535 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2687555i32;
                            } else if (__value__ == (_c_2687535 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2687607i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2687535 : Bool) && (_c_2687535 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2687700i32;
                            } else if (__value__ == (((_base_2687185 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2687535) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2687535) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2687992i32;
                            } else {
                                _gotoNext = 2688234i32;
                            };
                        };
                    };
                } else if (__value__ == (2687555i32)) {
                    _underscores_2687026 = true;
                    _i++;
                    _gotoNext = 2687502i32;
                } else if (__value__ == (2687607i32)) {
                    if (_sawdot_2687428) {
                        _gotoNext = 2687635i32;
                    } else {
                        _gotoNext = 2687660i32;
                    };
                } else if (__value__ == (2687635i32)) {
                    _loopBreak = true;
                    _gotoNext = 2687502i32;
                } else if (__value__ == (2687660i32)) {
                    _sawdot_2687428 = true;
                    _dp_2687487 = _nd_2687465;
                    _i++;
                    _gotoNext = 2687502i32;
                } else if (__value__ == (2687700i32)) {
                    _sawdigits_2687445 = true;
                    if (((_c_2687535 == (48 : stdgo.GoUInt8)) && (_nd_2687465 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2687773i32;
                    } else {
                        _gotoNext = 2687829i32;
                    };
                } else if (__value__ == (2687773i32)) {
                    _dp_2687487--;
                    _i++;
                    _gotoNext = 2687502i32;
                } else if (__value__ == (2687829i32)) {
                    _nd_2687465++;
                    if ((_ndMant_2687474 < _maxMantDigits_2687205 : Bool)) {
                        _gotoNext = 2687863i32;
                    } else if (_c_2687535 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2687953i32;
                    } else {
                        _gotoNext = 2687980i32;
                    };
                } else if (__value__ == (2687863i32)) {
                    _mantissa = (_mantissa * (_base_2687185) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2687535 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2687474++;
                    _gotoNext = 2687980i32;
                } else if (__value__ == (2687953i32)) {
                    _trunc = true;
                    _gotoNext = 2687980i32;
                } else if (__value__ == (2687980i32)) {
                    _i++;
                    _gotoNext = 2687502i32;
                } else if (__value__ == (2687992i32)) {
                    _sawdigits_2687445 = true;
                    _nd_2687465++;
                    if ((_ndMant_2687474 < _maxMantDigits_2687205 : Bool)) {
                        _gotoNext = 2688104i32;
                    } else {
                        _gotoNext = 2688192i32;
                    };
                } else if (__value__ == (2688104i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2687535) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2687474++;
                    _gotoNext = 2688219i32;
                } else if (__value__ == (2688192i32)) {
                    _gotoNext = 2688192i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2688219i32;
                } else if (__value__ == (2688219i32)) {
                    _i++;
                    _gotoNext = 2687502i32;
                } else if (__value__ == (2688234i32)) {
                    _gotoNext = 2688244i32;
                } else if (__value__ == (2688244i32)) {
                    if (!_sawdigits_2687445) {
                        _gotoNext = 2688258i32;
                    } else {
                        _gotoNext = 2688273i32;
                    };
                } else if (__value__ == (2688258i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688273i32;
                } else if (__value__ == (2688273i32)) {
                    if (!_sawdot_2687428) {
                        _gotoNext = 2688284i32;
                    } else {
                        _gotoNext = 2688301i32;
                    };
                } else if (__value__ == (2688284i32)) {
                    _dp_2687487 = _nd_2687465;
                    _gotoNext = 2688301i32;
                } else if (__value__ == (2688301i32)) {
                    if (_base_2687185 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2688315i32;
                    } else {
                        _gotoNext = 2688560i32;
                    };
                } else if (__value__ == (2688315i32)) {
                    _dp_2687487 = (_dp_2687487 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2687474 = (_ndMant_2687474 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2688560i32;
                } else if (__value__ == (2688560i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2687250) : Bool)) {
                        _gotoNext = 2688600i32;
                    } else if (_base_2687185 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2689033i32;
                    } else {
                        _gotoNext = 2689074i32;
                    };
                } else if (__value__ == (2688600i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2688625i32;
                    } else {
                        _gotoNext = 2688643i32;
                    };
                } else if (__value__ == (2688625i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688643i32;
                } else if (__value__ == (2688643i32)) {
                    _esign_2688643 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2688671i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2688704i32;
                    } else {
                        _gotoNext = 2688733i32;
                    };
                } else if (__value__ == (2688671i32)) {
                    _i++;
                    _gotoNext = 2688733i32;
                } else if (__value__ == (2688704i32)) {
                    _i++;
                    _esign_2688643 = (-1 : stdgo.GoInt);
                    _gotoNext = 2688733i32;
                } else if (__value__ == (2688733i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2688776i32;
                    } else {
                        _gotoNext = 2688794i32;
                    };
                } else if (__value__ == (2688776i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688794i32;
                } else if (__value__ == (2688794i32)) {
                    _e_2688794 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2688803i32;
                } else if (__value__ == (2688803i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2688872i32;
                    } else {
                        _gotoNext = 2688995i32;
                    };
                } else if (__value__ == (2688868i32)) {
                    _i++;
                    _gotoNext = 2688803i32;
                } else if (__value__ == (2688872i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2688892i32;
                    } else {
                        _gotoNext = 2688938i32;
                    };
                } else if (__value__ == (2688892i32)) {
                    _underscores_2687026 = true;
                    _i++;
                    _gotoNext = 2688803i32;
                } else if (__value__ == (2688938i32)) {
                    if ((_e_2688794 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2688951i32;
                    } else {
                        _gotoNext = 2688868i32;
                    };
                } else if (__value__ == (2688951i32)) {
                    _e_2688794 = (((_e_2688794 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2688868i32;
                } else if (__value__ == (2688995i32)) {
                    _dp_2687487 = (_dp_2687487 + ((_e_2688794 * _esign_2688643 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2689074i32;
                } else if (__value__ == (2689033i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689074i32;
                } else if (__value__ == (2689074i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2689091i32;
                    } else {
                        _gotoNext = 2689118i32;
                    };
                } else if (__value__ == (2689091i32)) {
                    _exp = (_dp_2687487 - _ndMant_2687474 : stdgo.GoInt);
                    _gotoNext = 2689118i32;
                } else if (__value__ == (2689118i32)) {
                    if ((_underscores_2687026 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2689157i32;
                    } else {
                        _gotoNext = 2689173i32;
                    };
                } else if (__value__ == (2689157i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689173i32;
                } else if (__value__ == (2689173i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
