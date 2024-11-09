package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3976037:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3976015:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3975929i32;
                } else if (__value__ == (3975929i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3975971i32;
                    } else {
                        _gotoNext = 3976015i32;
                    };
                } else if (__value__ == (3975971i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3975929i32;
                } else if (__value__ == (3976015i32)) {
                    _inrange_3976015 = false;
                    _gotoNext = 3976043i32;
                } else if (__value__ == (3976043i32)) {
                    _i_3976037 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3976050i32;
                } else if (__value__ == (3976050i32)) {
                    if (!scanBreak && ((_i_3976037 < (_pattern.length) : Bool))) {
                        _gotoNext = 3976083i32;
                    } else {
                        _gotoNext = 3976375i32;
                    };
                } else if (__value__ == (3976079i32)) {
                    _i_3976037++;
                    _gotoNext = 3976050i32;
                } else if (__value__ == (3976083i32)) {
                    _gotoNext = 3976087i32;
                } else if (__value__ == (3976087i32)) {
                    {
                        final __value__ = _pattern[(_i_3976037 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3976109i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3976259i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3976289i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3976320i32;
                        } else {
                            _gotoNext = 3976079i32;
                        };
                    };
                } else if (__value__ == (3976109i32)) {
                    if (true) {
                        _gotoNext = 3976152i32;
                    } else {
                        _gotoNext = 3976079i32;
                    };
                } else if (__value__ == (3976152i32)) {
                    if (((_i_3976037 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3976235i32;
                    } else {
                        _gotoNext = 3976079i32;
                    };
                } else if (__value__ == (3976235i32)) {
                    _i_3976037++;
                    _gotoNext = 3976079i32;
                } else if (__value__ == (3976259i32)) {
                    _inrange_3976015 = true;
                    _gotoNext = 3976079i32;
                } else if (__value__ == (3976289i32)) {
                    _inrange_3976015 = false;
                    _gotoNext = 3976079i32;
                } else if (__value__ == (3976320i32)) {
                    if (!_inrange_3976015) {
                        _gotoNext = 3976345i32;
                    } else {
                        _gotoNext = 3976079i32;
                    };
                } else if (__value__ == (3976345i32)) {
                    scanBreak = true;
                    _gotoNext = 3976050i32;
                } else if (__value__ == (3976375i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3976037) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3976037) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
