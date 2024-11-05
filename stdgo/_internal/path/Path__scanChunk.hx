package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2811059:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2811037:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2810951i32;
                } else if (__value__ == (2810951i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2810993i32;
                    } else {
                        _gotoNext = 2811037i32;
                    };
                } else if (__value__ == (2810993i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2810951i32;
                } else if (__value__ == (2811037i32)) {
                    _inrange_2811037 = false;
                    _gotoNext = 2811065i32;
                } else if (__value__ == (2811065i32)) {
                    _i_2811059 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2811072i32;
                } else if (__value__ == (2811072i32)) {
                    if (!scanBreak && ((_i_2811059 < (_pattern.length) : Bool))) {
                        _gotoNext = 2811105i32;
                    } else {
                        _gotoNext = 2811354i32;
                    };
                } else if (__value__ == (2811101i32)) {
                    _i_2811059++;
                    _gotoNext = 2811072i32;
                } else if (__value__ == (2811105i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2811109i32;
                } else if (__value__ == (2811109i32)) {
                    {
                        final __value__ = _pattern[(_i_2811059 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2811131i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2811238i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2811268i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2811299i32;
                        } else {
                            _gotoNext = 2811101i32;
                        };
                    };
                } else if (__value__ == (2811131i32)) {
                    if (((_i_2811059 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2811221i32;
                    } else {
                        _gotoNext = 2811101i32;
                    };
                } else if (__value__ == (2811221i32)) {
                    _i_2811059++;
                    _gotoNext = 2811101i32;
                } else if (__value__ == (2811238i32)) {
                    _inrange_2811037 = true;
                    _gotoNext = 2811101i32;
                } else if (__value__ == (2811268i32)) {
                    _inrange_2811037 = false;
                    _gotoNext = 2811101i32;
                } else if (__value__ == (2811299i32)) {
                    if (!_inrange_2811037) {
                        _gotoNext = 2811324i32;
                    } else {
                        _gotoNext = 2811101i32;
                    };
                } else if (__value__ == (2811324i32)) {
                    scanBreak = true;
                    _gotoNext = 2811072i32;
                } else if (__value__ == (2811354i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2811059) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2811059) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
