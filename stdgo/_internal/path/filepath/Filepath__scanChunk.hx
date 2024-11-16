package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_4084309:Bool = false;
        var scanBreak = false;
        var _i_4084331:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4084223i32;
                } else if (__value__ == (4084223i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4084265i32;
                    } else {
                        _gotoNext = 4084309i32;
                    };
                } else if (__value__ == (4084265i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4084223i32;
                } else if (__value__ == (4084309i32)) {
                    _inrange_4084309 = false;
                    _gotoNext = 4084337i32;
                } else if (__value__ == (4084337i32)) {
                    _i_4084331 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4084344i32;
                } else if (__value__ == (4084344i32)) {
                    if (!scanBreak && ((_i_4084331 < (_pattern.length) : Bool))) {
                        _gotoNext = 4084377i32;
                    } else {
                        _gotoNext = 4084669i32;
                    };
                } else if (__value__ == (4084373i32)) {
                    _i_4084331++;
                    _gotoNext = 4084344i32;
                } else if (__value__ == (4084377i32)) {
                    _gotoNext = 4084381i32;
                } else if (__value__ == (4084381i32)) {
                    {
                        final __value__ = _pattern[(_i_4084331 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4084403i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4084553i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4084583i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4084614i32;
                        } else {
                            _gotoNext = 4084373i32;
                        };
                    };
                } else if (__value__ == (4084403i32)) {
                    if (true) {
                        _gotoNext = 4084446i32;
                    } else {
                        _gotoNext = 4084373i32;
                    };
                } else if (__value__ == (4084446i32)) {
                    if (((_i_4084331 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4084529i32;
                    } else {
                        _gotoNext = 4084373i32;
                    };
                } else if (__value__ == (4084529i32)) {
                    _i_4084331++;
                    _gotoNext = 4084373i32;
                } else if (__value__ == (4084553i32)) {
                    _inrange_4084309 = true;
                    _gotoNext = 4084373i32;
                } else if (__value__ == (4084583i32)) {
                    _inrange_4084309 = false;
                    _gotoNext = 4084373i32;
                } else if (__value__ == (4084614i32)) {
                    if (!_inrange_4084309) {
                        _gotoNext = 4084639i32;
                    } else {
                        _gotoNext = 4084373i32;
                    };
                } else if (__value__ == (4084639i32)) {
                    scanBreak = true;
                    _gotoNext = 4084344i32;
                } else if (__value__ == (4084669i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4084331) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4084331) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
