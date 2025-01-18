package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_2826236:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2826214:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2826128i32;
                } else if (__value__ == (2826128i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2826170i32;
                    } else {
                        _gotoNext = 2826214i32;
                    };
                } else if (__value__ == (2826170i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2826128i32;
                } else if (__value__ == (2826214i32)) {
                    _inrange_2826214 = false;
                    _gotoNext = 2826242i32;
                } else if (__value__ == (2826242i32)) {
                    _i_2826236 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2826249i32;
                } else if (__value__ == (2826249i32)) {
                    if (!scanBreak && ((_i_2826236 < (_pattern.length) : Bool))) {
                        _gotoNext = 2826282i32;
                    } else {
                        _gotoNext = 2826531i32;
                    };
                } else if (__value__ == (2826278i32)) {
                    _i_2826236++;
                    _gotoNext = 2826249i32;
                } else if (__value__ == (2826282i32)) {
                    _gotoNext = 2826286i32;
                } else if (__value__ == (2826286i32)) {
                    {
                        final __value__ = _pattern[(_i_2826236 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2826308i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2826415i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2826445i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2826476i32;
                        } else {
                            _gotoNext = 2826278i32;
                        };
                    };
                } else if (__value__ == (2826308i32)) {
                    if (((_i_2826236 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2826398i32;
                    } else {
                        _gotoNext = 2826278i32;
                    };
                } else if (__value__ == (2826398i32)) {
                    _i_2826236++;
                    _gotoNext = 2826278i32;
                } else if (__value__ == (2826415i32)) {
                    _inrange_2826214 = true;
                    _gotoNext = 2826278i32;
                } else if (__value__ == (2826445i32)) {
                    _inrange_2826214 = false;
                    _gotoNext = 2826278i32;
                } else if (__value__ == (2826476i32)) {
                    if (!_inrange_2826214) {
                        _gotoNext = 2826501i32;
                    } else {
                        _gotoNext = 2826278i32;
                    };
                } else if (__value__ == (2826501i32)) {
                    scanBreak = true;
                    _gotoNext = 2826249i32;
                } else if (__value__ == (2826531i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2826236) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2826236) : stdgo.GoString)?.__copy__() };
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
