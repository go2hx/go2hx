package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3974715:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3974693:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3974607i32;
                } else if (__value__ == (3974607i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3974649i32;
                    } else {
                        _gotoNext = 3974693i32;
                    };
                } else if (__value__ == (3974649i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3974607i32;
                } else if (__value__ == (3974693i32)) {
                    _inrange_3974693 = false;
                    _gotoNext = 3974721i32;
                } else if (__value__ == (3974721i32)) {
                    _i_3974715 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3974728i32;
                } else if (__value__ == (3974728i32)) {
                    if (!scanBreak && ((_i_3974715 < (_pattern.length) : Bool))) {
                        _gotoNext = 3974761i32;
                    } else {
                        _gotoNext = 3975053i32;
                    };
                } else if (__value__ == (3974757i32)) {
                    _i_3974715++;
                    _gotoNext = 3974728i32;
                } else if (__value__ == (3974761i32)) {
                    _gotoNext = 3974765i32;
                } else if (__value__ == (3974765i32)) {
                    {
                        final __value__ = _pattern[(_i_3974715 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3974787i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3974937i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3974967i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3974998i32;
                        } else {
                            _gotoNext = 3974757i32;
                        };
                    };
                } else if (__value__ == (3974787i32)) {
                    if (true) {
                        _gotoNext = 3974830i32;
                    } else {
                        _gotoNext = 3974757i32;
                    };
                } else if (__value__ == (3974830i32)) {
                    if (((_i_3974715 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3974913i32;
                    } else {
                        _gotoNext = 3974757i32;
                    };
                } else if (__value__ == (3974913i32)) {
                    _i_3974715++;
                    _gotoNext = 3974757i32;
                } else if (__value__ == (3974937i32)) {
                    _inrange_3974693 = true;
                    _gotoNext = 3974757i32;
                } else if (__value__ == (3974967i32)) {
                    _inrange_3974693 = false;
                    _gotoNext = 3974757i32;
                } else if (__value__ == (3974998i32)) {
                    if (!_inrange_3974693) {
                        _gotoNext = 3975023i32;
                    } else {
                        _gotoNext = 3974757i32;
                    };
                } else if (__value__ == (3975023i32)) {
                    scanBreak = true;
                    _gotoNext = 3974728i32;
                } else if (__value__ == (3975053i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3974715) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3974715) : stdgo.GoString)?.__copy__() };
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
