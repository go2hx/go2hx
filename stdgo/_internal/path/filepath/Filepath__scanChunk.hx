package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_3966209:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3966187:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3966101i32;
                } else if (__value__ == (3966101i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3966143i32;
                    } else {
                        _gotoNext = 3966187i32;
                    };
                } else if (__value__ == (3966143i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3966101i32;
                } else if (__value__ == (3966187i32)) {
                    _inrange_3966187 = false;
                    _gotoNext = 3966215i32;
                } else if (__value__ == (3966215i32)) {
                    _i_3966209 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3966222i32;
                } else if (__value__ == (3966222i32)) {
                    if (!scanBreak && ((_i_3966209 < (_pattern.length) : Bool))) {
                        _gotoNext = 3966255i32;
                    } else {
                        _gotoNext = 3966547i32;
                    };
                } else if (__value__ == (3966251i32)) {
                    _i_3966209++;
                    _gotoNext = 3966222i32;
                } else if (__value__ == (3966255i32)) {
                    _gotoNext = 3966259i32;
                } else if (__value__ == (3966259i32)) {
                    {
                        final __value__ = _pattern[(_i_3966209 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3966281i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3966431i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3966461i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3966492i32;
                        } else {
                            _gotoNext = 3966251i32;
                        };
                    };
                } else if (__value__ == (3966281i32)) {
                    if (true) {
                        _gotoNext = 3966324i32;
                    } else {
                        _gotoNext = 3966251i32;
                    };
                } else if (__value__ == (3966324i32)) {
                    if (((_i_3966209 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3966407i32;
                    } else {
                        _gotoNext = 3966251i32;
                    };
                } else if (__value__ == (3966407i32)) {
                    _i_3966209++;
                    _gotoNext = 3966251i32;
                } else if (__value__ == (3966431i32)) {
                    _inrange_3966187 = true;
                    _gotoNext = 3966251i32;
                } else if (__value__ == (3966461i32)) {
                    _inrange_3966187 = false;
                    _gotoNext = 3966251i32;
                } else if (__value__ == (3966492i32)) {
                    if (!_inrange_3966187) {
                        _gotoNext = 3966517i32;
                    } else {
                        _gotoNext = 3966251i32;
                    };
                } else if (__value__ == (3966517i32)) {
                    scanBreak = true;
                    _gotoNext = 3966222i32;
                } else if (__value__ == (3966547i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3966209) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3966209) : stdgo.GoString)?.__copy__() };
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
