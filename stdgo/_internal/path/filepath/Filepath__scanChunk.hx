package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_3869574:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3869552:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3869466i32;
                } else if (__value__ == (3869466i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3869508i32;
                    } else {
                        _gotoNext = 3869552i32;
                    };
                } else if (__value__ == (3869508i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3869466i32;
                } else if (__value__ == (3869552i32)) {
                    _inrange_3869552 = false;
                    _gotoNext = 3869580i32;
                } else if (__value__ == (3869580i32)) {
                    _i_3869574 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3869587i32;
                } else if (__value__ == (3869587i32)) {
                    if (!scanBreak && ((_i_3869574 < (_pattern.length) : Bool))) {
                        _gotoNext = 3869620i32;
                    } else {
                        _gotoNext = 3869912i32;
                    };
                } else if (__value__ == (3869616i32)) {
                    _i_3869574++;
                    _gotoNext = 3869587i32;
                } else if (__value__ == (3869620i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3869624i32;
                } else if (__value__ == (3869624i32)) {
                    {
                        final __value__ = _pattern[(_i_3869574 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3869646i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3869796i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3869826i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3869857i32;
                        } else {
                            _gotoNext = 3869616i32;
                        };
                    };
                } else if (__value__ == (3869646i32)) {
                    if (true) {
                        _gotoNext = 3869689i32;
                    } else {
                        _gotoNext = 3869616i32;
                    };
                } else if (__value__ == (3869689i32)) {
                    if (((_i_3869574 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3869772i32;
                    } else {
                        _gotoNext = 3869616i32;
                    };
                } else if (__value__ == (3869772i32)) {
                    _i_3869574++;
                    _gotoNext = 3869616i32;
                } else if (__value__ == (3869796i32)) {
                    _inrange_3869552 = true;
                    _gotoNext = 3869616i32;
                } else if (__value__ == (3869826i32)) {
                    _inrange_3869552 = false;
                    _gotoNext = 3869616i32;
                } else if (__value__ == (3869857i32)) {
                    if (!_inrange_3869552) {
                        _gotoNext = 3869882i32;
                    } else {
                        _gotoNext = 3869616i32;
                    };
                } else if (__value__ == (3869882i32)) {
                    scanBreak = true;
                    _gotoNext = 3869587i32;
                } else if (__value__ == (3869912i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3869574) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3869574) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
