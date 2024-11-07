package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4099379:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4099357:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4099271i32;
                } else if (__value__ == (4099271i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4099313i32;
                    } else {
                        _gotoNext = 4099357i32;
                    };
                } else if (__value__ == (4099313i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4099271i32;
                } else if (__value__ == (4099357i32)) {
                    _inrange_4099357 = false;
                    _gotoNext = 4099385i32;
                } else if (__value__ == (4099385i32)) {
                    _i_4099379 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4099392i32;
                } else if (__value__ == (4099392i32)) {
                    if (!scanBreak && ((_i_4099379 < (_pattern.length) : Bool))) {
                        _gotoNext = 4099425i32;
                    } else {
                        _gotoNext = 4099717i32;
                    };
                } else if (__value__ == (4099421i32)) {
                    _i_4099379++;
                    _gotoNext = 4099392i32;
                } else if (__value__ == (4099425i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4099429i32;
                } else if (__value__ == (4099429i32)) {
                    {
                        final __value__ = _pattern[(_i_4099379 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4099451i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4099601i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4099631i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4099662i32;
                        } else {
                            _gotoNext = 4099421i32;
                        };
                    };
                } else if (__value__ == (4099451i32)) {
                    if (true) {
                        _gotoNext = 4099494i32;
                    } else {
                        _gotoNext = 4099421i32;
                    };
                } else if (__value__ == (4099494i32)) {
                    if (((_i_4099379 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4099577i32;
                    } else {
                        _gotoNext = 4099421i32;
                    };
                } else if (__value__ == (4099577i32)) {
                    _i_4099379++;
                    _gotoNext = 4099421i32;
                } else if (__value__ == (4099601i32)) {
                    _inrange_4099357 = true;
                    _gotoNext = 4099421i32;
                } else if (__value__ == (4099631i32)) {
                    _inrange_4099357 = false;
                    _gotoNext = 4099421i32;
                } else if (__value__ == (4099662i32)) {
                    if (!_inrange_4099357) {
                        _gotoNext = 4099687i32;
                    } else {
                        _gotoNext = 4099421i32;
                    };
                } else if (__value__ == (4099687i32)) {
                    scanBreak = true;
                    _gotoNext = 4099392i32;
                } else if (__value__ == (4099717i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4099379) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4099379) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
