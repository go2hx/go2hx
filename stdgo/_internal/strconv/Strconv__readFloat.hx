package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _sawdot_2783386:Bool = false;
        var _expChar_2783208:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2784752:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2783423:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2783143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sawdigits_2783403:Bool = false;
        var _maxMantDigits_2783163:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2782984:Bool = false;
        var _esign_2784601:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2783493:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2783445:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2783432:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2782984 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2783040i32;
                    } else {
                        _gotoNext = 2783055i32;
                    };
                } else if (__value__ == (2783040i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2783055i32;
                } else if (__value__ == (2783055i32)) {
                    _gotoNext = 2783055i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2783065i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2783090i32;
                    } else {
                        _gotoNext = 2783143i32;
                    };
                } else if (__value__ == (2783065i32)) {
                    _i++;
                    _gotoNext = 2783143i32;
                } else if (__value__ == (2783090i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2783143i32;
                } else if (__value__ == (2783143i32)) {
                    _base_2783143 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2783163 = (19 : stdgo.GoInt);
                    _expChar_2783208 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2783285i32;
                    } else {
                        _gotoNext = 2783386i32;
                    };
                } else if (__value__ == (2783285i32)) {
                    _base_2783143 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2783163 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2783208 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2783386i32;
                } else if (__value__ == (2783386i32)) {
                    _sawdot_2783386 = false;
                    _sawdigits_2783403 = false;
                    _nd_2783423 = (0 : stdgo.GoInt);
                    _ndMant_2783432 = (0 : stdgo.GoInt);
                    _dp_2783445 = (0 : stdgo.GoInt);
                    _gotoNext = 2783453i32;
                } else if (__value__ == (2783453i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2783460i32;
                } else if (__value__ == (2783460i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2783482i32;
                    } else {
                        _gotoNext = 2784202i32;
                    };
                } else if (__value__ == (2783482i32)) {
                    _gotoNext = 2783486i32;
                } else if (__value__ == (2783486i32)) {
                    {
                        _c_2783493 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2783493 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2783513i32;
                            } else if (__value__ == (_c_2783493 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2783565i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2783493 : Bool) && (_c_2783493 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2783658i32;
                            } else if (__value__ == (((_base_2783143 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2783493) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2783493) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2783950i32;
                            } else {
                                _gotoNext = 2784192i32;
                            };
                        };
                    };
                } else if (__value__ == (2783513i32)) {
                    _underscores_2782984 = true;
                    _i++;
                    _gotoNext = 2783460i32;
                } else if (__value__ == (2783565i32)) {
                    if (_sawdot_2783386) {
                        _gotoNext = 2783593i32;
                    } else {
                        _gotoNext = 2783618i32;
                    };
                } else if (__value__ == (2783593i32)) {
                    _loopBreak = true;
                    _gotoNext = 2783460i32;
                } else if (__value__ == (2783618i32)) {
                    _sawdot_2783386 = true;
                    _dp_2783445 = _nd_2783423;
                    _i++;
                    _gotoNext = 2783460i32;
                } else if (__value__ == (2783658i32)) {
                    _sawdigits_2783403 = true;
                    if (((_c_2783493 == (48 : stdgo.GoUInt8)) && (_nd_2783423 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2783731i32;
                    } else {
                        _gotoNext = 2783787i32;
                    };
                } else if (__value__ == (2783731i32)) {
                    _dp_2783445--;
                    _i++;
                    _gotoNext = 2783460i32;
                } else if (__value__ == (2783787i32)) {
                    _nd_2783423++;
                    if ((_ndMant_2783432 < _maxMantDigits_2783163 : Bool)) {
                        _gotoNext = 2783821i32;
                    } else if (_c_2783493 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2783911i32;
                    } else {
                        _gotoNext = 2783938i32;
                    };
                } else if (__value__ == (2783821i32)) {
                    _mantissa = (_mantissa * (_base_2783143) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2783493 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2783432++;
                    _gotoNext = 2783938i32;
                } else if (__value__ == (2783911i32)) {
                    _trunc = true;
                    _gotoNext = 2783938i32;
                } else if (__value__ == (2783938i32)) {
                    _i++;
                    _gotoNext = 2783460i32;
                } else if (__value__ == (2783950i32)) {
                    _sawdigits_2783403 = true;
                    _nd_2783423++;
                    if ((_ndMant_2783432 < _maxMantDigits_2783163 : Bool)) {
                        _gotoNext = 2784062i32;
                    } else {
                        _gotoNext = 2784150i32;
                    };
                } else if (__value__ == (2784062i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2783493) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2783432++;
                    _gotoNext = 2784177i32;
                } else if (__value__ == (2784150i32)) {
                    _gotoNext = 2784150i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2784177i32;
                } else if (__value__ == (2784177i32)) {
                    _i++;
                    _gotoNext = 2783460i32;
                } else if (__value__ == (2784192i32)) {
                    _gotoNext = 2784202i32;
                } else if (__value__ == (2784202i32)) {
                    if (!_sawdigits_2783403) {
                        _gotoNext = 2784216i32;
                    } else {
                        _gotoNext = 2784231i32;
                    };
                } else if (__value__ == (2784216i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2784231i32;
                } else if (__value__ == (2784231i32)) {
                    if (!_sawdot_2783386) {
                        _gotoNext = 2784242i32;
                    } else {
                        _gotoNext = 2784259i32;
                    };
                } else if (__value__ == (2784242i32)) {
                    _dp_2783445 = _nd_2783423;
                    _gotoNext = 2784259i32;
                } else if (__value__ == (2784259i32)) {
                    if (_base_2783143 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2784273i32;
                    } else {
                        _gotoNext = 2784518i32;
                    };
                } else if (__value__ == (2784273i32)) {
                    _dp_2783445 = (_dp_2783445 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2783432 = (_ndMant_2783432 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2784518i32;
                } else if (__value__ == (2784518i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2783208) : Bool)) {
                        _gotoNext = 2784558i32;
                    } else if (_base_2783143 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2784991i32;
                    } else {
                        _gotoNext = 2785032i32;
                    };
                } else if (__value__ == (2784558i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2784583i32;
                    } else {
                        _gotoNext = 2784601i32;
                    };
                } else if (__value__ == (2784583i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2784601i32;
                } else if (__value__ == (2784601i32)) {
                    _esign_2784601 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2784629i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2784662i32;
                    } else {
                        _gotoNext = 2784691i32;
                    };
                } else if (__value__ == (2784629i32)) {
                    _i++;
                    _gotoNext = 2784691i32;
                } else if (__value__ == (2784662i32)) {
                    _i++;
                    _esign_2784601 = (-1 : stdgo.GoInt);
                    _gotoNext = 2784691i32;
                } else if (__value__ == (2784691i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2784734i32;
                    } else {
                        _gotoNext = 2784752i32;
                    };
                } else if (__value__ == (2784734i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2784752i32;
                } else if (__value__ == (2784752i32)) {
                    _e_2784752 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2784761i32;
                } else if (__value__ == (2784761i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2784830i32;
                    } else {
                        _gotoNext = 2784953i32;
                    };
                } else if (__value__ == (2784826i32)) {
                    _i++;
                    _gotoNext = 2784761i32;
                } else if (__value__ == (2784830i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2784850i32;
                    } else {
                        _gotoNext = 2784896i32;
                    };
                } else if (__value__ == (2784850i32)) {
                    _underscores_2782984 = true;
                    _i++;
                    _gotoNext = 2784761i32;
                } else if (__value__ == (2784896i32)) {
                    if ((_e_2784752 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2784909i32;
                    } else {
                        _gotoNext = 2784826i32;
                    };
                } else if (__value__ == (2784909i32)) {
                    _e_2784752 = (((_e_2784752 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2784826i32;
                } else if (__value__ == (2784953i32)) {
                    _dp_2783445 = (_dp_2783445 + ((_e_2784752 * _esign_2784601 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2785032i32;
                } else if (__value__ == (2784991i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2785032i32;
                } else if (__value__ == (2785032i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2785049i32;
                    } else {
                        _gotoNext = 2785076i32;
                    };
                } else if (__value__ == (2785049i32)) {
                    _exp = (_dp_2783445 - _ndMant_2783432 : stdgo.GoInt);
                    _gotoNext = 2785076i32;
                } else if (__value__ == (2785076i32)) {
                    if ((_underscores_2782984 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2785115i32;
                    } else {
                        _gotoNext = 2785131i32;
                    };
                } else if (__value__ == (2785115i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2785131i32;
                } else if (__value__ == (2785131i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
