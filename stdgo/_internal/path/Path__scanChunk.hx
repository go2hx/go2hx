package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_2596993:Bool = false;
        var scanBreak = false;
        var _i_2597015:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2596907i32;
                } else if (__value__ == (2596907i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2596949i32;
                    } else {
                        _gotoNext = 2596993i32;
                    };
                } else if (__value__ == (2596949i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2596907i32;
                } else if (__value__ == (2596993i32)) {
                    _inrange_2596993 = false;
                    _gotoNext = 2597021i32;
                } else if (__value__ == (2597021i32)) {
                    _i_2597015 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2597028i32;
                } else if (__value__ == (2597028i32)) {
                    if (!scanBreak && ((_i_2597015 < (_pattern.length) : Bool))) {
                        _gotoNext = 2597061i32;
                    } else {
                        _gotoNext = 2597310i32;
                    };
                } else if (__value__ == (2597057i32)) {
                    _i_2597015++;
                    _gotoNext = 2597028i32;
                } else if (__value__ == (2597061i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2597065i32;
                } else if (__value__ == (2597065i32)) {
                    {
                        final __value__ = _pattern[(_i_2597015 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2597087i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2597194i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2597224i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2597255i32;
                        } else {
                            _gotoNext = 2597057i32;
                        };
                    };
                } else if (__value__ == (2597087i32)) {
                    if (((_i_2597015 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2597177i32;
                    } else {
                        _gotoNext = 2597057i32;
                    };
                } else if (__value__ == (2597177i32)) {
                    _i_2597015++;
                    _gotoNext = 2597057i32;
                } else if (__value__ == (2597194i32)) {
                    _inrange_2596993 = true;
                    _gotoNext = 2597057i32;
                } else if (__value__ == (2597224i32)) {
                    _inrange_2596993 = false;
                    _gotoNext = 2597057i32;
                } else if (__value__ == (2597255i32)) {
                    if (!_inrange_2596993) {
                        _gotoNext = 2597280i32;
                    } else {
                        _gotoNext = 2597057i32;
                    };
                } else if (__value__ == (2597280i32)) {
                    scanBreak = true;
                    _gotoNext = 2597028i32;
                } else if (__value__ == (2597310i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2597015) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2597015) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
