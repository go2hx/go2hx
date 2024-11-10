package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2721048:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2721026:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2720940i32;
                } else if (__value__ == (2720940i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2720982i32;
                    } else {
                        _gotoNext = 2721026i32;
                    };
                } else if (__value__ == (2720982i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2720940i32;
                } else if (__value__ == (2721026i32)) {
                    _inrange_2721026 = false;
                    _gotoNext = 2721054i32;
                } else if (__value__ == (2721054i32)) {
                    _i_2721048 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2721061i32;
                } else if (__value__ == (2721061i32)) {
                    if (!scanBreak && ((_i_2721048 < (_pattern.length) : Bool))) {
                        _gotoNext = 2721094i32;
                    } else {
                        _gotoNext = 2721343i32;
                    };
                } else if (__value__ == (2721090i32)) {
                    _i_2721048++;
                    _gotoNext = 2721061i32;
                } else if (__value__ == (2721094i32)) {
                    _gotoNext = 2721098i32;
                } else if (__value__ == (2721098i32)) {
                    {
                        final __value__ = _pattern[(_i_2721048 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2721120i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2721227i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2721257i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2721288i32;
                        } else {
                            _gotoNext = 2721090i32;
                        };
                    };
                } else if (__value__ == (2721120i32)) {
                    if (((_i_2721048 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2721210i32;
                    } else {
                        _gotoNext = 2721090i32;
                    };
                } else if (__value__ == (2721210i32)) {
                    _i_2721048++;
                    _gotoNext = 2721090i32;
                } else if (__value__ == (2721227i32)) {
                    _inrange_2721026 = true;
                    _gotoNext = 2721090i32;
                } else if (__value__ == (2721257i32)) {
                    _inrange_2721026 = false;
                    _gotoNext = 2721090i32;
                } else if (__value__ == (2721288i32)) {
                    if (!_inrange_2721026) {
                        _gotoNext = 2721313i32;
                    } else {
                        _gotoNext = 2721090i32;
                    };
                } else if (__value__ == (2721313i32)) {
                    scanBreak = true;
                    _gotoNext = 2721061i32;
                } else if (__value__ == (2721343i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2721048) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2721048) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
