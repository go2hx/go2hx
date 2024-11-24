package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2866201:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2866179:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2866093i32;
                } else if (__value__ == (2866093i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2866135i32;
                    } else {
                        _gotoNext = 2866179i32;
                    };
                } else if (__value__ == (2866135i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2866093i32;
                } else if (__value__ == (2866179i32)) {
                    _inrange_2866179 = false;
                    _gotoNext = 2866207i32;
                } else if (__value__ == (2866207i32)) {
                    _i_2866201 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2866214i32;
                } else if (__value__ == (2866214i32)) {
                    if (!scanBreak && ((_i_2866201 < (_pattern.length) : Bool))) {
                        _gotoNext = 2866247i32;
                    } else {
                        _gotoNext = 2866496i32;
                    };
                } else if (__value__ == (2866243i32)) {
                    _i_2866201++;
                    _gotoNext = 2866214i32;
                } else if (__value__ == (2866247i32)) {
                    _gotoNext = 2866251i32;
                } else if (__value__ == (2866251i32)) {
                    {
                        final __value__ = _pattern[(_i_2866201 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2866273i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2866380i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2866410i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2866441i32;
                        } else {
                            _gotoNext = 2866243i32;
                        };
                    };
                } else if (__value__ == (2866273i32)) {
                    if (((_i_2866201 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2866363i32;
                    } else {
                        _gotoNext = 2866243i32;
                    };
                } else if (__value__ == (2866363i32)) {
                    _i_2866201++;
                    _gotoNext = 2866243i32;
                } else if (__value__ == (2866380i32)) {
                    _inrange_2866179 = true;
                    _gotoNext = 2866243i32;
                } else if (__value__ == (2866410i32)) {
                    _inrange_2866179 = false;
                    _gotoNext = 2866243i32;
                } else if (__value__ == (2866441i32)) {
                    if (!_inrange_2866179) {
                        _gotoNext = 2866466i32;
                    } else {
                        _gotoNext = 2866243i32;
                    };
                } else if (__value__ == (2866466i32)) {
                    scanBreak = true;
                    _gotoNext = 2866214i32;
                } else if (__value__ == (2866496i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2866201) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2866201) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
