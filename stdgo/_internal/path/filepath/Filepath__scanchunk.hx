package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_3948236:Bool = false;
        var scanBreak = false;
        var _i_3948258:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3948150i32;
                } else if (__value__ == (3948150i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3948192i32;
                    } else {
                        _gotoNext = 3948236i32;
                    };
                } else if (__value__ == (3948192i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3948150i32;
                } else if (__value__ == (3948236i32)) {
                    _inrange_3948236 = false;
                    _gotoNext = 3948264i32;
                } else if (__value__ == (3948264i32)) {
                    _i_3948258 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3948271i32;
                } else if (__value__ == (3948271i32)) {
                    if (!scanBreak && ((_i_3948258 < (_pattern.length) : Bool))) {
                        _gotoNext = 3948304i32;
                    } else {
                        _gotoNext = 3948596i32;
                    };
                } else if (__value__ == (3948300i32)) {
                    _i_3948258++;
                    _gotoNext = 3948271i32;
                } else if (__value__ == (3948304i32)) {
                    _gotoNext = 3948308i32;
                } else if (__value__ == (3948308i32)) {
                    {
                        final __value__ = _pattern[(_i_3948258 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3948330i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3948480i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3948510i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3948541i32;
                        } else {
                            _gotoNext = 3948300i32;
                        };
                    };
                } else if (__value__ == (3948330i32)) {
                    if (true) {
                        _gotoNext = 3948373i32;
                    } else {
                        _gotoNext = 3948300i32;
                    };
                } else if (__value__ == (3948373i32)) {
                    if (((_i_3948258 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3948456i32;
                    } else {
                        _gotoNext = 3948300i32;
                    };
                } else if (__value__ == (3948456i32)) {
                    _i_3948258++;
                    _gotoNext = 3948300i32;
                } else if (__value__ == (3948480i32)) {
                    _inrange_3948236 = true;
                    _gotoNext = 3948300i32;
                } else if (__value__ == (3948510i32)) {
                    _inrange_3948236 = false;
                    _gotoNext = 3948300i32;
                } else if (__value__ == (3948541i32)) {
                    if (!_inrange_3948236) {
                        _gotoNext = 3948566i32;
                    } else {
                        _gotoNext = 3948300i32;
                    };
                } else if (__value__ == (3948566i32)) {
                    scanBreak = true;
                    _gotoNext = 3948271i32;
                } else if (__value__ == (3948596i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3948258) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3948258) : stdgo.GoString)?.__copy__() };
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
