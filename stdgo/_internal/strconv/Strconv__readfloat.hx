package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _underscores_0 = false;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L179"
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2660629i64;
                    } else {
                        _gotoNext = 2660644i64;
                    };
                } else if (__value__ == (2660629i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L180"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660644i64;
                } else if (__value__ == (2660644i64)) {
                    _gotoNext = 2660644i64;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L182"
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2660654i64;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2660679i64;
                    } else {
                        _gotoNext = 2660732i64;
                    };
                } else if (__value__ == (2660654i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L184"
                    _i++;
                    _gotoNext = 2660732i64;
                } else if (__value__ == (2660679i64)) {
                    _neg = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L187"
                    _i++;
                    _gotoNext = 2660732i64;
                } else if (__value__ == (2660732i64)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L194"
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2660874i64;
                    } else {
                        _gotoNext = 2660975i64;
                    };
                } else if (__value__ == (2660874i64)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2660975i64;
                } else if (__value__ == (2660975i64)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2661042i64;
                } else if (__value__ == (2661042i64)) {
                    0i64;
                    _loopBreak = false;
                    _gotoNext = 2661049i64;
                } else if (__value__ == (2661049i64)) {
                    //"file://#L0"
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2661071i64;
                    } else {
                        _gotoNext = 2661791i64;
                    };
                } else if (__value__ == (2661071i64)) {
                    _gotoNext = 2661075i64;
                } else if (__value__ == (2661075i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L208"
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2661102i64;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2661154i64;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2661247i64;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2661539i64;
                            } else {
                                _gotoNext = 2661781i64;
                            };
                        };
                    };
                } else if (__value__ == (2661102i64)) {
                    _underscores_0 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2661049i64;
                } else if (__value__ == (2661154i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L214"
                    if (_sawdot_4) {
                        _gotoNext = 2661182i64;
                    } else {
                        _gotoNext = 2661207i64;
                    };
                } else if (__value__ == (2661182i64)) {
                    _loopBreak = true;
                    _gotoNext = 2661049i64;
                } else if (__value__ == (2661207i64)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2661049i64;
                } else if (__value__ == (2661247i64)) {
                    _sawdigits_5 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L223"
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2661320i64;
                    } else {
                        _gotoNext = 2661376i64;
                    };
                } else if (__value__ == (2661320i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L224"
                    _dp_8--;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2661049i64;
                } else if (__value__ == (2661376i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L227"
                    _nd_6++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L228"
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2661410i64;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2661500i64;
                    } else {
                        _gotoNext = 2661527i64;
                    };
                } else if (__value__ == (2661410i64)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L231"
                    _ndMant_7++;
                    _gotoNext = 2661527i64;
                } else if (__value__ == (2661500i64)) {
                    _trunc = true;
                    _gotoNext = 2661527i64;
                } else if (__value__ == (2661527i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2661049i64;
                } else if (__value__ == (2661539i64)) {
                    _sawdigits_5 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L239"
                    _nd_6++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L240"
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2661651i64;
                    } else {
                        _gotoNext = 2661739i64;
                    };
                } else if (__value__ == (2661651i64)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L243"
                    _ndMant_7++;
                    _gotoNext = 2661766i64;
                } else if (__value__ == (2661739i64)) {
                    _gotoNext = 2661739i64;
                    _trunc = true;
                    0i64;
                    _gotoNext = 2661766i64;
                } else if (__value__ == (2661766i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2661049i64;
                } else if (__value__ == (2661781i64)) {
                    _gotoNext = 2661791i64;
                } else if (__value__ == (2661791i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L251"
                    if (!_sawdigits_5) {
                        _gotoNext = 2661805i64;
                    } else {
                        _gotoNext = 2661820i64;
                    };
                } else if (__value__ == (2661805i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L252"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2661820i64;
                } else if (__value__ == (2661820i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L254"
                    if (!_sawdot_4) {
                        _gotoNext = 2661831i64;
                    } else {
                        _gotoNext = 2661848i64;
                    };
                } else if (__value__ == (2661831i64)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2661848i64;
                } else if (__value__ == (2661848i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L258"
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2661862i64;
                    } else {
                        _gotoNext = 2662107i64;
                    };
                } else if (__value__ == (2661862i64)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2662107i64;
                } else if (__value__ == (2662107i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L268"
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2662147i64;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2662580i64;
                    } else {
                        _gotoNext = 2662621i64;
                    };
                } else if (__value__ == (2662147i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L269"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L270"
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2662172i64;
                    } else {
                        _gotoNext = 2662190i64;
                    };
                } else if (__value__ == (2662172i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L271"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662190i64;
                } else if (__value__ == (2662190i64)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L274"
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2662218i64;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2662251i64;
                    } else {
                        _gotoNext = 2662280i64;
                    };
                } else if (__value__ == (2662218i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L275"
                    _i++;
                    _gotoNext = 2662280i64;
                } else if (__value__ == (2662251i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L277"
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2662280i64;
                } else if (__value__ == (2662280i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L280"
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2662323i64;
                    } else {
                        _gotoNext = 2662341i64;
                    };
                } else if (__value__ == (2662323i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L281"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662341i64;
                } else if (__value__ == (2662341i64)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 2662350i64;
                } else if (__value__ == (2662350i64)) {
                    //"file://#L0"
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2662419i64;
                    } else {
                        _gotoNext = 2662542i64;
                    };
                } else if (__value__ == (2662415i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L284"
                    _i++;
                    _gotoNext = 2662350i64;
                } else if (__value__ == (2662419i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L285"
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2662439i64;
                    } else {
                        _gotoNext = 2662485i64;
                    };
                } else if (__value__ == (2662439i64)) {
                    _underscores_0 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L284"
                    _i++;
                    _gotoNext = 2662350i64;
                } else if (__value__ == (2662485i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L289"
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2662498i64;
                    } else {
                        _gotoNext = 2662415i64;
                    };
                } else if (__value__ == (2662498i64)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2662415i64;
                } else if (__value__ == (2662542i64)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2662621i64;
                } else if (__value__ == (2662580i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L296"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662621i64;
                } else if (__value__ == (2662621i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L299"
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2662638i64;
                    } else {
                        _gotoNext = 2662665i64;
                    };
                } else if (__value__ == (2662638i64)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2662665i64;
                } else if (__value__ == (2662665i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L303"
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2662704i64;
                    } else {
                        _gotoNext = 2662720i64;
                    };
                } else if (__value__ == (2662704i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L304"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662720i64;
                } else if (__value__ == (2662720i64)) {
                    _ok = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L308"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
