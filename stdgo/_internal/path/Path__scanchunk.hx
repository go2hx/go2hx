package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_2723825:Bool = false;
        var scanBreak = false;
        var _i_2723847:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2723739i32;
                } else if (__value__ == (2723739i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2723781i32;
                    } else {
                        _gotoNext = 2723825i32;
                    };
                } else if (__value__ == (2723781i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2723739i32;
                } else if (__value__ == (2723825i32)) {
                    _inrange_2723825 = false;
                    _gotoNext = 2723853i32;
                } else if (__value__ == (2723853i32)) {
                    _i_2723847 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2723860i32;
                } else if (__value__ == (2723860i32)) {
                    if (!scanBreak && ((_i_2723847 < (_pattern.length) : Bool))) {
                        _gotoNext = 2723893i32;
                    } else {
                        _gotoNext = 2724142i32;
                    };
                } else if (__value__ == (2723889i32)) {
                    _i_2723847++;
                    _gotoNext = 2723860i32;
                } else if (__value__ == (2723893i32)) {
                    _gotoNext = 2723897i32;
                } else if (__value__ == (2723897i32)) {
                    {
                        final __value__ = _pattern[(_i_2723847 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2723919i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2724026i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2724056i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2724087i32;
                        } else {
                            _gotoNext = 2723889i32;
                        };
                    };
                } else if (__value__ == (2723919i32)) {
                    if (((_i_2723847 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2724009i32;
                    } else {
                        _gotoNext = 2723889i32;
                    };
                } else if (__value__ == (2724009i32)) {
                    _i_2723847++;
                    _gotoNext = 2723889i32;
                } else if (__value__ == (2724026i32)) {
                    _inrange_2723825 = true;
                    _gotoNext = 2723889i32;
                } else if (__value__ == (2724056i32)) {
                    _inrange_2723825 = false;
                    _gotoNext = 2723889i32;
                } else if (__value__ == (2724087i32)) {
                    if (!_inrange_2723825) {
                        _gotoNext = 2724112i32;
                    } else {
                        _gotoNext = 2723889i32;
                    };
                } else if (__value__ == (2724112i32)) {
                    scanBreak = true;
                    _gotoNext = 2723860i32;
                } else if (__value__ == (2724142i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2723847) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2723847) : stdgo.GoString)?.__copy__() };
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
