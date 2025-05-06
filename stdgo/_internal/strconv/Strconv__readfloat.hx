package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_0:Bool = false;
        var _loopBreak = false;
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
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
                        _gotoNext = 2680291i64;
                    } else {
                        _gotoNext = 2680306i64;
                    };
                } else if (__value__ == (2680291i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L180"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2680306i64;
                } else if (__value__ == (2680306i64)) {
                    _gotoNext = 2680306i64;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L182"
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2680316i64;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2680341i64;
                    } else {
                        _gotoNext = 2680394i64;
                    };
                } else if (__value__ == (2680316i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L184"
                    _i++;
                    _gotoNext = 2680394i64;
                } else if (__value__ == (2680341i64)) {
                    _neg = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L187"
                    _i++;
                    _gotoNext = 2680394i64;
                } else if (__value__ == (2680394i64)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L194"
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2680536i64;
                    } else {
                        _gotoNext = 2680637i64;
                    };
                } else if (__value__ == (2680536i64)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2680637i64;
                } else if (__value__ == (2680637i64)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2680704i64;
                } else if (__value__ == (2680704i64)) {
                    0i64;
                    _loopBreak = false;
                    _gotoNext = 2680711i64;
                } else if (__value__ == (2680711i64)) {
                    //"file://#L0"
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2680733i64;
                    } else {
                        _gotoNext = 2681453i64;
                    };
                } else if (__value__ == (2680733i64)) {
                    _gotoNext = 2680737i64;
                } else if (__value__ == (2680737i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L208"
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2680764i64;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2680816i64;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2680909i64;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2681201i64;
                            } else {
                                _gotoNext = 2681443i64;
                            };
                        };
                    };
                } else if (__value__ == (2680764i64)) {
                    _underscores_0 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2680711i64;
                } else if (__value__ == (2680816i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L214"
                    if (_sawdot_4) {
                        _gotoNext = 2680844i64;
                    } else {
                        _gotoNext = 2680869i64;
                    };
                } else if (__value__ == (2680844i64)) {
                    _loopBreak = true;
                    _gotoNext = 2680711i64;
                } else if (__value__ == (2680869i64)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2680711i64;
                } else if (__value__ == (2680909i64)) {
                    _sawdigits_5 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L223"
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2680982i64;
                    } else {
                        _gotoNext = 2681038i64;
                    };
                } else if (__value__ == (2680982i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L224"
                    _dp_8--;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2680711i64;
                } else if (__value__ == (2681038i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L227"
                    _nd_6++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L228"
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2681072i64;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2681162i64;
                    } else {
                        _gotoNext = 2681189i64;
                    };
                } else if (__value__ == (2681072i64)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L231"
                    _ndMant_7++;
                    _gotoNext = 2681189i64;
                } else if (__value__ == (2681162i64)) {
                    _trunc = true;
                    _gotoNext = 2681189i64;
                } else if (__value__ == (2681189i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2680711i64;
                } else if (__value__ == (2681201i64)) {
                    _sawdigits_5 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L239"
                    _nd_6++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L240"
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2681313i64;
                    } else {
                        _gotoNext = 2681401i64;
                    };
                } else if (__value__ == (2681313i64)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L243"
                    _ndMant_7++;
                    _gotoNext = 2681428i64;
                } else if (__value__ == (2681401i64)) {
                    _gotoNext = 2681401i64;
                    _trunc = true;
                    0i64;
                    _gotoNext = 2681428i64;
                } else if (__value__ == (2681428i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2680711i64;
                } else if (__value__ == (2681443i64)) {
                    _gotoNext = 2681453i64;
                } else if (__value__ == (2681453i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L251"
                    if (!_sawdigits_5) {
                        _gotoNext = 2681467i64;
                    } else {
                        _gotoNext = 2681482i64;
                    };
                } else if (__value__ == (2681467i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L252"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681482i64;
                } else if (__value__ == (2681482i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L254"
                    if (!_sawdot_4) {
                        _gotoNext = 2681493i64;
                    } else {
                        _gotoNext = 2681510i64;
                    };
                } else if (__value__ == (2681493i64)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2681510i64;
                } else if (__value__ == (2681510i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L258"
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2681524i64;
                    } else {
                        _gotoNext = 2681769i64;
                    };
                } else if (__value__ == (2681524i64)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2681769i64;
                } else if (__value__ == (2681769i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L268"
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2681809i64;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682242i64;
                    } else {
                        _gotoNext = 2682283i64;
                    };
                } else if (__value__ == (2681809i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L269"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L270"
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2681834i64;
                    } else {
                        _gotoNext = 2681852i64;
                    };
                } else if (__value__ == (2681834i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L271"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681852i64;
                } else if (__value__ == (2681852i64)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L274"
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2681880i64;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2681913i64;
                    } else {
                        _gotoNext = 2681942i64;
                    };
                } else if (__value__ == (2681880i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L275"
                    _i++;
                    _gotoNext = 2681942i64;
                } else if (__value__ == (2681913i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L277"
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2681942i64;
                } else if (__value__ == (2681942i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L280"
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2681985i64;
                    } else {
                        _gotoNext = 2682003i64;
                    };
                } else if (__value__ == (2681985i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L281"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682003i64;
                } else if (__value__ == (2682003i64)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 2682012i64;
                } else if (__value__ == (2682012i64)) {
                    //"file://#L0"
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2682081i64;
                    } else {
                        _gotoNext = 2682204i64;
                    };
                } else if (__value__ == (2682077i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L284"
                    _i++;
                    _gotoNext = 2682012i64;
                } else if (__value__ == (2682081i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L285"
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2682101i64;
                    } else {
                        _gotoNext = 2682147i64;
                    };
                } else if (__value__ == (2682101i64)) {
                    _underscores_0 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L284"
                    _i++;
                    _gotoNext = 2682012i64;
                } else if (__value__ == (2682147i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L289"
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2682160i64;
                    } else {
                        _gotoNext = 2682077i64;
                    };
                } else if (__value__ == (2682160i64)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2682077i64;
                } else if (__value__ == (2682204i64)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2682283i64;
                } else if (__value__ == (2682242i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L296"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682283i64;
                } else if (__value__ == (2682283i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L299"
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682300i64;
                    } else {
                        _gotoNext = 2682327i64;
                    };
                } else if (__value__ == (2682300i64)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2682327i64;
                } else if (__value__ == (2682327i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L303"
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2682366i64;
                    } else {
                        _gotoNext = 2682382i64;
                    };
                } else if (__value__ == (2682366i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L304"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682382i64;
                } else if (__value__ == (2682382i64)) {
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
