package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_2654795:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2654773:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2654687i32;
                } else if (__value__ == (2654687i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2654729i32;
                    } else {
                        _gotoNext = 2654773i32;
                    };
                } else if (__value__ == (2654729i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2654687i32;
                } else if (__value__ == (2654773i32)) {
                    _inrange_2654773 = false;
                    _gotoNext = 2654801i32;
                } else if (__value__ == (2654801i32)) {
                    _i_2654795 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2654808i32;
                } else if (__value__ == (2654808i32)) {
                    if (!scanBreak && ((_i_2654795 < (_pattern.length) : Bool))) {
                        _gotoNext = 2654841i32;
                    } else {
                        _gotoNext = 2655090i32;
                    };
                } else if (__value__ == (2654837i32)) {
                    _i_2654795++;
                    _gotoNext = 2654808i32;
                } else if (__value__ == (2654841i32)) {
                    _gotoNext = 2654845i32;
                } else if (__value__ == (2654845i32)) {
                    {
                        final __value__ = _pattern[(_i_2654795 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2654867i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2654974i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2655004i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2655035i32;
                        } else {
                            _gotoNext = 2654837i32;
                        };
                    };
                } else if (__value__ == (2654867i32)) {
                    if (((_i_2654795 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2654957i32;
                    } else {
                        _gotoNext = 2654837i32;
                    };
                } else if (__value__ == (2654957i32)) {
                    _i_2654795++;
                    _gotoNext = 2654837i32;
                } else if (__value__ == (2654974i32)) {
                    _inrange_2654773 = true;
                    _gotoNext = 2654837i32;
                } else if (__value__ == (2655004i32)) {
                    _inrange_2654773 = false;
                    _gotoNext = 2654837i32;
                } else if (__value__ == (2655035i32)) {
                    if (!_inrange_2654773) {
                        _gotoNext = 2655060i32;
                    } else {
                        _gotoNext = 2654837i32;
                    };
                } else if (__value__ == (2655060i32)) {
                    scanBreak = true;
                    _gotoNext = 2654808i32;
                } else if (__value__ == (2655090i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2654795) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2654795) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
