package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3965003:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3964981:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3964895i32;
                } else if (__value__ == (3964895i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3964937i32;
                    } else {
                        _gotoNext = 3964981i32;
                    };
                } else if (__value__ == (3964937i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3964895i32;
                } else if (__value__ == (3964981i32)) {
                    _inrange_3964981 = false;
                    _gotoNext = 3965009i32;
                } else if (__value__ == (3965009i32)) {
                    _i_3965003 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3965016i32;
                } else if (__value__ == (3965016i32)) {
                    if (!scanBreak && ((_i_3965003 < (_pattern.length) : Bool))) {
                        _gotoNext = 3965049i32;
                    } else {
                        _gotoNext = 3965341i32;
                    };
                } else if (__value__ == (3965045i32)) {
                    _i_3965003++;
                    _gotoNext = 3965016i32;
                } else if (__value__ == (3965049i32)) {
                    _gotoNext = 3965053i32;
                } else if (__value__ == (3965053i32)) {
                    {
                        final __value__ = _pattern[(_i_3965003 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3965075i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3965225i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3965255i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3965286i32;
                        } else {
                            _gotoNext = 3965045i32;
                        };
                    };
                } else if (__value__ == (3965075i32)) {
                    if (true) {
                        _gotoNext = 3965118i32;
                    } else {
                        _gotoNext = 3965045i32;
                    };
                } else if (__value__ == (3965118i32)) {
                    if (((_i_3965003 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3965201i32;
                    } else {
                        _gotoNext = 3965045i32;
                    };
                } else if (__value__ == (3965201i32)) {
                    _i_3965003++;
                    _gotoNext = 3965045i32;
                } else if (__value__ == (3965225i32)) {
                    _inrange_3964981 = true;
                    _gotoNext = 3965045i32;
                } else if (__value__ == (3965255i32)) {
                    _inrange_3964981 = false;
                    _gotoNext = 3965045i32;
                } else if (__value__ == (3965286i32)) {
                    if (!_inrange_3964981) {
                        _gotoNext = 3965311i32;
                    } else {
                        _gotoNext = 3965045i32;
                    };
                } else if (__value__ == (3965311i32)) {
                    scanBreak = true;
                    _gotoNext = 3965016i32;
                } else if (__value__ == (3965341i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3965003) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3965003) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
