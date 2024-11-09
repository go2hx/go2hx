package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3967249:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3967227:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3967141i32;
                } else if (__value__ == (3967141i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3967183i32;
                    } else {
                        _gotoNext = 3967227i32;
                    };
                } else if (__value__ == (3967183i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3967141i32;
                } else if (__value__ == (3967227i32)) {
                    _inrange_3967227 = false;
                    _gotoNext = 3967255i32;
                } else if (__value__ == (3967255i32)) {
                    _i_3967249 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3967262i32;
                } else if (__value__ == (3967262i32)) {
                    if (!scanBreak && ((_i_3967249 < (_pattern.length) : Bool))) {
                        _gotoNext = 3967295i32;
                    } else {
                        _gotoNext = 3967587i32;
                    };
                } else if (__value__ == (3967291i32)) {
                    _i_3967249++;
                    _gotoNext = 3967262i32;
                } else if (__value__ == (3967295i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3967299i32;
                } else if (__value__ == (3967299i32)) {
                    {
                        final __value__ = _pattern[(_i_3967249 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3967321i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3967471i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3967501i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3967532i32;
                        } else {
                            _gotoNext = 3967291i32;
                        };
                    };
                } else if (__value__ == (3967321i32)) {
                    if (true) {
                        _gotoNext = 3967364i32;
                    } else {
                        _gotoNext = 3967291i32;
                    };
                } else if (__value__ == (3967364i32)) {
                    if (((_i_3967249 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3967447i32;
                    } else {
                        _gotoNext = 3967291i32;
                    };
                } else if (__value__ == (3967447i32)) {
                    _i_3967249++;
                    _gotoNext = 3967291i32;
                } else if (__value__ == (3967471i32)) {
                    _inrange_3967227 = true;
                    _gotoNext = 3967291i32;
                } else if (__value__ == (3967501i32)) {
                    _inrange_3967227 = false;
                    _gotoNext = 3967291i32;
                } else if (__value__ == (3967532i32)) {
                    if (!_inrange_3967227) {
                        _gotoNext = 3967557i32;
                    } else {
                        _gotoNext = 3967291i32;
                    };
                } else if (__value__ == (3967557i32)) {
                    scanBreak = true;
                    _gotoNext = 3967262i32;
                } else if (__value__ == (3967587i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3967249) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3967249) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
