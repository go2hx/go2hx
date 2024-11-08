package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2897423:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2897401:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2897315i32;
                } else if (__value__ == (2897315i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2897357i32;
                    } else {
                        _gotoNext = 2897401i32;
                    };
                } else if (__value__ == (2897357i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2897315i32;
                } else if (__value__ == (2897401i32)) {
                    _inrange_2897401 = false;
                    _gotoNext = 2897429i32;
                } else if (__value__ == (2897429i32)) {
                    _i_2897423 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2897436i32;
                } else if (__value__ == (2897436i32)) {
                    if (!scanBreak && ((_i_2897423 < (_pattern.length) : Bool))) {
                        _gotoNext = 2897469i32;
                    } else {
                        _gotoNext = 2897718i32;
                    };
                } else if (__value__ == (2897465i32)) {
                    _i_2897423++;
                    _gotoNext = 2897436i32;
                } else if (__value__ == (2897469i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2897473i32;
                } else if (__value__ == (2897473i32)) {
                    {
                        final __value__ = _pattern[(_i_2897423 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2897495i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2897602i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2897632i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2897663i32;
                        } else {
                            _gotoNext = 2897465i32;
                        };
                    };
                } else if (__value__ == (2897495i32)) {
                    if (((_i_2897423 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2897585i32;
                    } else {
                        _gotoNext = 2897465i32;
                    };
                } else if (__value__ == (2897585i32)) {
                    _i_2897423++;
                    _gotoNext = 2897465i32;
                } else if (__value__ == (2897602i32)) {
                    _inrange_2897401 = true;
                    _gotoNext = 2897465i32;
                } else if (__value__ == (2897632i32)) {
                    _inrange_2897401 = false;
                    _gotoNext = 2897465i32;
                } else if (__value__ == (2897663i32)) {
                    if (!_inrange_2897401) {
                        _gotoNext = 2897688i32;
                    } else {
                        _gotoNext = 2897465i32;
                    };
                } else if (__value__ == (2897688i32)) {
                    scanBreak = true;
                    _gotoNext = 2897436i32;
                } else if (__value__ == (2897718i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2897423) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2897423) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
