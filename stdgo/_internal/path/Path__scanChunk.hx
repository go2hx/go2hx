package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3023025:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3023003:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3022917i32;
                } else if (__value__ == (3022917i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3022959i32;
                    } else {
                        _gotoNext = 3023003i32;
                    };
                } else if (__value__ == (3022959i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3022917i32;
                } else if (__value__ == (3023003i32)) {
                    _inrange_3023003 = false;
                    _gotoNext = 3023031i32;
                } else if (__value__ == (3023031i32)) {
                    _i_3023025 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3023038i32;
                } else if (__value__ == (3023038i32)) {
                    if (!scanBreak && ((_i_3023025 < (_pattern.length) : Bool))) {
                        _gotoNext = 3023071i32;
                    } else {
                        _gotoNext = 3023320i32;
                    };
                } else if (__value__ == (3023067i32)) {
                    _i_3023025++;
                    _gotoNext = 3023038i32;
                } else if (__value__ == (3023071i32)) {
                    _gotoNext = 3023075i32;
                } else if (__value__ == (3023075i32)) {
                    {
                        final __value__ = _pattern[(_i_3023025 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3023097i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3023204i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3023234i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3023265i32;
                        } else {
                            _gotoNext = 3023067i32;
                        };
                    };
                } else if (__value__ == (3023097i32)) {
                    if (((_i_3023025 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3023187i32;
                    } else {
                        _gotoNext = 3023067i32;
                    };
                } else if (__value__ == (3023187i32)) {
                    _i_3023025++;
                    _gotoNext = 3023067i32;
                } else if (__value__ == (3023204i32)) {
                    _inrange_3023003 = true;
                    _gotoNext = 3023067i32;
                } else if (__value__ == (3023234i32)) {
                    _inrange_3023003 = false;
                    _gotoNext = 3023067i32;
                } else if (__value__ == (3023265i32)) {
                    if (!_inrange_3023003) {
                        _gotoNext = 3023290i32;
                    } else {
                        _gotoNext = 3023067i32;
                    };
                } else if (__value__ == (3023290i32)) {
                    scanBreak = true;
                    _gotoNext = 3023038i32;
                } else if (__value__ == (3023320i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3023025) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3023025) : stdgo.GoString)?.__copy__() };
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
