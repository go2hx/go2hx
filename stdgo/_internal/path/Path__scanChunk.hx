package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_2596391:Bool = false;
        var scanBreak = false;
        var _i_2596413:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2596305i32;
                } else if (__value__ == (2596305i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2596347i32;
                    } else {
                        _gotoNext = 2596391i32;
                    };
                } else if (__value__ == (2596347i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2596305i32;
                } else if (__value__ == (2596391i32)) {
                    _inrange_2596391 = false;
                    _gotoNext = 2596419i32;
                } else if (__value__ == (2596419i32)) {
                    _i_2596413 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2596426i32;
                } else if (__value__ == (2596426i32)) {
                    if (!scanBreak && ((_i_2596413 < (_pattern.length) : Bool))) {
                        _gotoNext = 2596459i32;
                    } else {
                        _gotoNext = 2596708i32;
                    };
                } else if (__value__ == (2596455i32)) {
                    _i_2596413++;
                    _gotoNext = 2596426i32;
                } else if (__value__ == (2596459i32)) {
                    _gotoNext = 2596463i32;
                } else if (__value__ == (2596463i32)) {
                    {
                        final __value__ = _pattern[(_i_2596413 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2596485i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2596592i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2596622i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2596653i32;
                        } else {
                            _gotoNext = 2596455i32;
                        };
                    };
                } else if (__value__ == (2596485i32)) {
                    if (((_i_2596413 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2596575i32;
                    } else {
                        _gotoNext = 2596455i32;
                    };
                } else if (__value__ == (2596575i32)) {
                    _i_2596413++;
                    _gotoNext = 2596455i32;
                } else if (__value__ == (2596592i32)) {
                    _inrange_2596391 = true;
                    _gotoNext = 2596455i32;
                } else if (__value__ == (2596622i32)) {
                    _inrange_2596391 = false;
                    _gotoNext = 2596455i32;
                } else if (__value__ == (2596653i32)) {
                    if (!_inrange_2596391) {
                        _gotoNext = 2596678i32;
                    } else {
                        _gotoNext = 2596455i32;
                    };
                } else if (__value__ == (2596678i32)) {
                    scanBreak = true;
                    _gotoNext = 2596426i32;
                } else if (__value__ == (2596708i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2596413) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2596413) : stdgo.GoString)?.__copy__() };
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
