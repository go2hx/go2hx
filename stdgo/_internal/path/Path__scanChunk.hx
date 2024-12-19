package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2960543:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2960521:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2960435i32;
                } else if (__value__ == (2960435i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2960477i32;
                    } else {
                        _gotoNext = 2960521i32;
                    };
                } else if (__value__ == (2960477i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2960435i32;
                } else if (__value__ == (2960521i32)) {
                    _inrange_2960521 = false;
                    _gotoNext = 2960549i32;
                } else if (__value__ == (2960549i32)) {
                    _i_2960543 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2960556i32;
                } else if (__value__ == (2960556i32)) {
                    if (!scanBreak && ((_i_2960543 < (_pattern.length) : Bool))) {
                        _gotoNext = 2960589i32;
                    } else {
                        _gotoNext = 2960838i32;
                    };
                } else if (__value__ == (2960585i32)) {
                    _i_2960543++;
                    _gotoNext = 2960556i32;
                } else if (__value__ == (2960589i32)) {
                    _gotoNext = 2960593i32;
                } else if (__value__ == (2960593i32)) {
                    {
                        final __value__ = _pattern[(_i_2960543 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2960615i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2960722i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2960752i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2960783i32;
                        } else {
                            _gotoNext = 2960585i32;
                        };
                    };
                } else if (__value__ == (2960615i32)) {
                    if (((_i_2960543 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2960705i32;
                    } else {
                        _gotoNext = 2960585i32;
                    };
                } else if (__value__ == (2960705i32)) {
                    _i_2960543++;
                    _gotoNext = 2960585i32;
                } else if (__value__ == (2960722i32)) {
                    _inrange_2960521 = true;
                    _gotoNext = 2960585i32;
                } else if (__value__ == (2960752i32)) {
                    _inrange_2960521 = false;
                    _gotoNext = 2960585i32;
                } else if (__value__ == (2960783i32)) {
                    if (!_inrange_2960521) {
                        _gotoNext = 2960808i32;
                    } else {
                        _gotoNext = 2960585i32;
                    };
                } else if (__value__ == (2960808i32)) {
                    scanBreak = true;
                    _gotoNext = 2960556i32;
                } else if (__value__ == (2960838i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2960543) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2960543) : stdgo.GoString)?.__copy__() };
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
