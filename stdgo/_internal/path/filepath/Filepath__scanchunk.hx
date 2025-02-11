package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_3518138:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3518116:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3518030i32;
                } else if (__value__ == (3518030i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3518072i32;
                    } else {
                        _gotoNext = 3518116i32;
                    };
                } else if (__value__ == (3518072i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3518030i32;
                } else if (__value__ == (3518116i32)) {
                    _inrange_3518116 = false;
                    _gotoNext = 3518144i32;
                } else if (__value__ == (3518144i32)) {
                    _i_3518138 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3518151i32;
                } else if (__value__ == (3518151i32)) {
                    if (!scanBreak && ((_i_3518138 < (_pattern.length) : Bool))) {
                        _gotoNext = 3518184i32;
                    } else {
                        _gotoNext = 3518476i32;
                    };
                } else if (__value__ == (3518180i32)) {
                    _i_3518138++;
                    _gotoNext = 3518151i32;
                } else if (__value__ == (3518184i32)) {
                    _gotoNext = 3518188i32;
                } else if (__value__ == (3518188i32)) {
                    {
                        final __value__ = _pattern[(_i_3518138 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3518210i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3518360i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3518390i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3518421i32;
                        } else {
                            _gotoNext = 3518180i32;
                        };
                    };
                } else if (__value__ == (3518210i32)) {
                    if (true) {
                        _gotoNext = 3518253i32;
                    } else {
                        _gotoNext = 3518180i32;
                    };
                } else if (__value__ == (3518253i32)) {
                    if (((_i_3518138 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3518336i32;
                    } else {
                        _gotoNext = 3518180i32;
                    };
                } else if (__value__ == (3518336i32)) {
                    _i_3518138++;
                    _gotoNext = 3518180i32;
                } else if (__value__ == (3518360i32)) {
                    _inrange_3518116 = true;
                    _gotoNext = 3518180i32;
                } else if (__value__ == (3518390i32)) {
                    _inrange_3518116 = false;
                    _gotoNext = 3518180i32;
                } else if (__value__ == (3518421i32)) {
                    if (!_inrange_3518116) {
                        _gotoNext = 3518446i32;
                    } else {
                        _gotoNext = 3518180i32;
                    };
                } else if (__value__ == (3518446i32)) {
                    scanBreak = true;
                    _gotoNext = 3518151i32;
                } else if (__value__ == (3518476i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3518138) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3518138) : stdgo.GoString)?.__copy__() };
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
