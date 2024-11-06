package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2770973:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2770951:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2770865i32;
                } else if (__value__ == (2770865i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2770907i32;
                    } else {
                        _gotoNext = 2770951i32;
                    };
                } else if (__value__ == (2770907i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2770865i32;
                } else if (__value__ == (2770951i32)) {
                    _inrange_2770951 = false;
                    _gotoNext = 2770979i32;
                } else if (__value__ == (2770979i32)) {
                    _i_2770973 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2770986i32;
                } else if (__value__ == (2770986i32)) {
                    if (!scanBreak && ((_i_2770973 < (_pattern.length) : Bool))) {
                        _gotoNext = 2771019i32;
                    } else {
                        _gotoNext = 2771268i32;
                    };
                } else if (__value__ == (2771015i32)) {
                    _i_2770973++;
                    _gotoNext = 2770986i32;
                } else if (__value__ == (2771019i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2771023i32;
                } else if (__value__ == (2771023i32)) {
                    {
                        final __value__ = _pattern[(_i_2770973 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2771045i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2771152i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2771182i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2771213i32;
                        } else {
                            _gotoNext = 2771015i32;
                        };
                    };
                } else if (__value__ == (2771045i32)) {
                    if (((_i_2770973 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2771135i32;
                    } else {
                        _gotoNext = 2771015i32;
                    };
                } else if (__value__ == (2771135i32)) {
                    _i_2770973++;
                    _gotoNext = 2771015i32;
                } else if (__value__ == (2771152i32)) {
                    _inrange_2770951 = true;
                    _gotoNext = 2771015i32;
                } else if (__value__ == (2771182i32)) {
                    _inrange_2770951 = false;
                    _gotoNext = 2771015i32;
                } else if (__value__ == (2771213i32)) {
                    if (!_inrange_2770951) {
                        _gotoNext = 2771238i32;
                    } else {
                        _gotoNext = 2771015i32;
                    };
                } else if (__value__ == (2771238i32)) {
                    scanBreak = true;
                    _gotoNext = 2770986i32;
                } else if (__value__ == (2771268i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2770973) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2770973) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
