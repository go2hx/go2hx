package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2639778:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2639756:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2639670i32;
                } else if (__value__ == (2639670i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2639712i32;
                    } else {
                        _gotoNext = 2639756i32;
                    };
                } else if (__value__ == (2639712i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2639670i32;
                } else if (__value__ == (2639756i32)) {
                    _inrange_2639756 = false;
                    _gotoNext = 2639784i32;
                } else if (__value__ == (2639784i32)) {
                    _i_2639778 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2639791i32;
                } else if (__value__ == (2639791i32)) {
                    if (!scanBreak && ((_i_2639778 < (_pattern.length) : Bool))) {
                        _gotoNext = 2639824i32;
                    } else {
                        _gotoNext = 2640073i32;
                    };
                } else if (__value__ == (2639820i32)) {
                    _i_2639778++;
                    _gotoNext = 2639791i32;
                } else if (__value__ == (2639824i32)) {
                    _gotoNext = 2639828i32;
                } else if (__value__ == (2639828i32)) {
                    {
                        final __value__ = _pattern[(_i_2639778 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2639850i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2639957i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2639987i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2640018i32;
                        } else {
                            _gotoNext = 2639820i32;
                        };
                    };
                } else if (__value__ == (2639850i32)) {
                    if (((_i_2639778 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2639940i32;
                    } else {
                        _gotoNext = 2639820i32;
                    };
                } else if (__value__ == (2639940i32)) {
                    _i_2639778++;
                    _gotoNext = 2639820i32;
                } else if (__value__ == (2639957i32)) {
                    _inrange_2639756 = true;
                    _gotoNext = 2639820i32;
                } else if (__value__ == (2639987i32)) {
                    _inrange_2639756 = false;
                    _gotoNext = 2639820i32;
                } else if (__value__ == (2640018i32)) {
                    if (!_inrange_2639756) {
                        _gotoNext = 2640043i32;
                    } else {
                        _gotoNext = 2639820i32;
                    };
                } else if (__value__ == (2640043i32)) {
                    scanBreak = true;
                    _gotoNext = 2639791i32;
                } else if (__value__ == (2640073i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2639778) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2639778) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
