package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4020520:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4020498:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4020412i32;
                } else if (__value__ == (4020412i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4020454i32;
                    } else {
                        _gotoNext = 4020498i32;
                    };
                } else if (__value__ == (4020454i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4020412i32;
                } else if (__value__ == (4020498i32)) {
                    _inrange_4020498 = false;
                    _gotoNext = 4020526i32;
                } else if (__value__ == (4020526i32)) {
                    _i_4020520 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4020533i32;
                } else if (__value__ == (4020533i32)) {
                    if (!scanBreak && ((_i_4020520 < (_pattern.length) : Bool))) {
                        _gotoNext = 4020566i32;
                    } else {
                        _gotoNext = 4020858i32;
                    };
                } else if (__value__ == (4020562i32)) {
                    _i_4020520++;
                    _gotoNext = 4020533i32;
                } else if (__value__ == (4020566i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4020570i32;
                } else if (__value__ == (4020570i32)) {
                    {
                        final __value__ = _pattern[(_i_4020520 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4020592i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4020742i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4020772i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4020803i32;
                        } else {
                            _gotoNext = 4020562i32;
                        };
                    };
                } else if (__value__ == (4020592i32)) {
                    if (true) {
                        _gotoNext = 4020635i32;
                    } else {
                        _gotoNext = 4020562i32;
                    };
                } else if (__value__ == (4020635i32)) {
                    if (((_i_4020520 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4020718i32;
                    } else {
                        _gotoNext = 4020562i32;
                    };
                } else if (__value__ == (4020718i32)) {
                    _i_4020520++;
                    _gotoNext = 4020562i32;
                } else if (__value__ == (4020742i32)) {
                    _inrange_4020498 = true;
                    _gotoNext = 4020562i32;
                } else if (__value__ == (4020772i32)) {
                    _inrange_4020498 = false;
                    _gotoNext = 4020562i32;
                } else if (__value__ == (4020803i32)) {
                    if (!_inrange_4020498) {
                        _gotoNext = 4020828i32;
                    } else {
                        _gotoNext = 4020562i32;
                    };
                } else if (__value__ == (4020828i32)) {
                    scanBreak = true;
                    _gotoNext = 4020533i32;
                } else if (__value__ == (4020858i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4020520) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4020520) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
