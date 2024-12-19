package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2650937:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2650915:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2650829i32;
                } else if (__value__ == (2650829i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2650871i32;
                    } else {
                        _gotoNext = 2650915i32;
                    };
                } else if (__value__ == (2650871i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2650829i32;
                } else if (__value__ == (2650915i32)) {
                    _inrange_2650915 = false;
                    _gotoNext = 2650943i32;
                } else if (__value__ == (2650943i32)) {
                    _i_2650937 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2650950i32;
                } else if (__value__ == (2650950i32)) {
                    if (!scanBreak && ((_i_2650937 < (_pattern.length) : Bool))) {
                        _gotoNext = 2650983i32;
                    } else {
                        _gotoNext = 2651232i32;
                    };
                } else if (__value__ == (2650979i32)) {
                    _i_2650937++;
                    _gotoNext = 2650950i32;
                } else if (__value__ == (2650983i32)) {
                    _gotoNext = 2650987i32;
                } else if (__value__ == (2650987i32)) {
                    {
                        final __value__ = _pattern[(_i_2650937 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2651009i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2651116i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2651146i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2651177i32;
                        } else {
                            _gotoNext = 2650979i32;
                        };
                    };
                } else if (__value__ == (2651009i32)) {
                    if (((_i_2650937 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2651099i32;
                    } else {
                        _gotoNext = 2650979i32;
                    };
                } else if (__value__ == (2651099i32)) {
                    _i_2650937++;
                    _gotoNext = 2650979i32;
                } else if (__value__ == (2651116i32)) {
                    _inrange_2650915 = true;
                    _gotoNext = 2650979i32;
                } else if (__value__ == (2651146i32)) {
                    _inrange_2650915 = false;
                    _gotoNext = 2650979i32;
                } else if (__value__ == (2651177i32)) {
                    if (!_inrange_2650915) {
                        _gotoNext = 2651202i32;
                    } else {
                        _gotoNext = 2650979i32;
                    };
                } else if (__value__ == (2651202i32)) {
                    scanBreak = true;
                    _gotoNext = 2650950i32;
                } else if (__value__ == (2651232i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2650937) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2650937) : stdgo.GoString)?.__copy__() };
                        _star = __tmp__._0;
                        _chunk = __tmp__._1;
                        _rest = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
