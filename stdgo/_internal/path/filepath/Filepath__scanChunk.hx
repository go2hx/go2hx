package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4032429:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4032407:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4032321i32;
                } else if (__value__ == (4032321i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4032363i32;
                    } else {
                        _gotoNext = 4032407i32;
                    };
                } else if (__value__ == (4032363i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4032321i32;
                } else if (__value__ == (4032407i32)) {
                    _inrange_4032407 = false;
                    _gotoNext = 4032435i32;
                } else if (__value__ == (4032435i32)) {
                    _i_4032429 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4032442i32;
                } else if (__value__ == (4032442i32)) {
                    if (!scanBreak && ((_i_4032429 < (_pattern.length) : Bool))) {
                        _gotoNext = 4032475i32;
                    } else {
                        _gotoNext = 4032767i32;
                    };
                } else if (__value__ == (4032471i32)) {
                    _i_4032429++;
                    _gotoNext = 4032442i32;
                } else if (__value__ == (4032475i32)) {
                    _gotoNext = 4032479i32;
                } else if (__value__ == (4032479i32)) {
                    {
                        final __value__ = _pattern[(_i_4032429 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4032501i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4032651i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4032681i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4032712i32;
                        } else {
                            _gotoNext = 4032471i32;
                        };
                    };
                } else if (__value__ == (4032501i32)) {
                    if (true) {
                        _gotoNext = 4032544i32;
                    } else {
                        _gotoNext = 4032471i32;
                    };
                } else if (__value__ == (4032544i32)) {
                    if (((_i_4032429 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4032627i32;
                    } else {
                        _gotoNext = 4032471i32;
                    };
                } else if (__value__ == (4032627i32)) {
                    _i_4032429++;
                    _gotoNext = 4032471i32;
                } else if (__value__ == (4032651i32)) {
                    _inrange_4032407 = true;
                    _gotoNext = 4032471i32;
                } else if (__value__ == (4032681i32)) {
                    _inrange_4032407 = false;
                    _gotoNext = 4032471i32;
                } else if (__value__ == (4032712i32)) {
                    if (!_inrange_4032407) {
                        _gotoNext = 4032737i32;
                    } else {
                        _gotoNext = 4032471i32;
                    };
                } else if (__value__ == (4032737i32)) {
                    scanBreak = true;
                    _gotoNext = 4032442i32;
                } else if (__value__ == (4032767i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4032429) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4032429) : stdgo.GoString)?.__copy__() };
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
