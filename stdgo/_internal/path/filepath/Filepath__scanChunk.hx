package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3944806:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3944784:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3944698i32;
                } else if (__value__ == (3944698i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3944740i32;
                    } else {
                        _gotoNext = 3944784i32;
                    };
                } else if (__value__ == (3944740i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3944698i32;
                } else if (__value__ == (3944784i32)) {
                    _inrange_3944784 = false;
                    _gotoNext = 3944812i32;
                } else if (__value__ == (3944812i32)) {
                    _i_3944806 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3944819i32;
                } else if (__value__ == (3944819i32)) {
                    if (!scanBreak && ((_i_3944806 < (_pattern.length) : Bool))) {
                        _gotoNext = 3944852i32;
                    } else {
                        _gotoNext = 3945144i32;
                    };
                } else if (__value__ == (3944848i32)) {
                    _i_3944806++;
                    _gotoNext = 3944819i32;
                } else if (__value__ == (3944852i32)) {
                    _gotoNext = 3944856i32;
                } else if (__value__ == (3944856i32)) {
                    {
                        final __value__ = _pattern[(_i_3944806 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3944878i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3945028i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3945058i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3945089i32;
                        } else {
                            _gotoNext = 3944848i32;
                        };
                    };
                } else if (__value__ == (3944878i32)) {
                    if (true) {
                        _gotoNext = 3944921i32;
                    } else {
                        _gotoNext = 3944848i32;
                    };
                } else if (__value__ == (3944921i32)) {
                    if (((_i_3944806 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3945004i32;
                    } else {
                        _gotoNext = 3944848i32;
                    };
                } else if (__value__ == (3945004i32)) {
                    _i_3944806++;
                    _gotoNext = 3944848i32;
                } else if (__value__ == (3945028i32)) {
                    _inrange_3944784 = true;
                    _gotoNext = 3944848i32;
                } else if (__value__ == (3945058i32)) {
                    _inrange_3944784 = false;
                    _gotoNext = 3944848i32;
                } else if (__value__ == (3945089i32)) {
                    if (!_inrange_3944784) {
                        _gotoNext = 3945114i32;
                    } else {
                        _gotoNext = 3944848i32;
                    };
                } else if (__value__ == (3945114i32)) {
                    scanBreak = true;
                    _gotoNext = 3944819i32;
                } else if (__value__ == (3945144i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3944806) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3944806) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
