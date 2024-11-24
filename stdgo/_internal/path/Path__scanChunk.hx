package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2681072:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2681050:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2680964i32;
                } else if (__value__ == (2680964i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2681006i32;
                    } else {
                        _gotoNext = 2681050i32;
                    };
                } else if (__value__ == (2681006i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2680964i32;
                } else if (__value__ == (2681050i32)) {
                    _inrange_2681050 = false;
                    _gotoNext = 2681078i32;
                } else if (__value__ == (2681078i32)) {
                    _i_2681072 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2681085i32;
                } else if (__value__ == (2681085i32)) {
                    if (!scanBreak && ((_i_2681072 < (_pattern.length) : Bool))) {
                        _gotoNext = 2681118i32;
                    } else {
                        _gotoNext = 2681367i32;
                    };
                } else if (__value__ == (2681114i32)) {
                    _i_2681072++;
                    _gotoNext = 2681085i32;
                } else if (__value__ == (2681118i32)) {
                    _gotoNext = 2681122i32;
                } else if (__value__ == (2681122i32)) {
                    {
                        final __value__ = _pattern[(_i_2681072 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2681144i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2681251i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2681281i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2681312i32;
                        } else {
                            _gotoNext = 2681114i32;
                        };
                    };
                } else if (__value__ == (2681144i32)) {
                    if (((_i_2681072 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2681234i32;
                    } else {
                        _gotoNext = 2681114i32;
                    };
                } else if (__value__ == (2681234i32)) {
                    _i_2681072++;
                    _gotoNext = 2681114i32;
                } else if (__value__ == (2681251i32)) {
                    _inrange_2681050 = true;
                    _gotoNext = 2681114i32;
                } else if (__value__ == (2681281i32)) {
                    _inrange_2681050 = false;
                    _gotoNext = 2681114i32;
                } else if (__value__ == (2681312i32)) {
                    if (!_inrange_2681050) {
                        _gotoNext = 2681337i32;
                    } else {
                        _gotoNext = 2681114i32;
                    };
                } else if (__value__ == (2681337i32)) {
                    scanBreak = true;
                    _gotoNext = 2681085i32;
                } else if (__value__ == (2681367i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2681072) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2681072) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
