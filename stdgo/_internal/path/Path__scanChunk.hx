package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2718217:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2718195:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2718109i32;
                } else if (__value__ == (2718109i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2718151i32;
                    } else {
                        _gotoNext = 2718195i32;
                    };
                } else if (__value__ == (2718151i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2718109i32;
                } else if (__value__ == (2718195i32)) {
                    _inrange_2718195 = false;
                    _gotoNext = 2718223i32;
                } else if (__value__ == (2718223i32)) {
                    _i_2718217 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2718230i32;
                } else if (__value__ == (2718230i32)) {
                    if (!scanBreak && ((_i_2718217 < (_pattern.length) : Bool))) {
                        _gotoNext = 2718263i32;
                    } else {
                        _gotoNext = 2718512i32;
                    };
                } else if (__value__ == (2718259i32)) {
                    _i_2718217++;
                    _gotoNext = 2718230i32;
                } else if (__value__ == (2718263i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2718267i32;
                } else if (__value__ == (2718267i32)) {
                    {
                        final __value__ = _pattern[(_i_2718217 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2718289i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2718396i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2718426i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2718457i32;
                        } else {
                            _gotoNext = 2718259i32;
                        };
                    };
                } else if (__value__ == (2718289i32)) {
                    if (((_i_2718217 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2718379i32;
                    } else {
                        _gotoNext = 2718259i32;
                    };
                } else if (__value__ == (2718379i32)) {
                    _i_2718217++;
                    _gotoNext = 2718259i32;
                } else if (__value__ == (2718396i32)) {
                    _inrange_2718195 = true;
                    _gotoNext = 2718259i32;
                } else if (__value__ == (2718426i32)) {
                    _inrange_2718195 = false;
                    _gotoNext = 2718259i32;
                } else if (__value__ == (2718457i32)) {
                    if (!_inrange_2718195) {
                        _gotoNext = 2718482i32;
                    } else {
                        _gotoNext = 2718259i32;
                    };
                } else if (__value__ == (2718482i32)) {
                    scanBreak = true;
                    _gotoNext = 2718230i32;
                } else if (__value__ == (2718512i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2718217) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2718217) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
