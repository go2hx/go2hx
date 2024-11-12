package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_2756843:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2756821:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2756735i32;
                } else if (__value__ == (2756735i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2756777i32;
                    } else {
                        _gotoNext = 2756821i32;
                    };
                } else if (__value__ == (2756777i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2756735i32;
                } else if (__value__ == (2756821i32)) {
                    _inrange_2756821 = false;
                    _gotoNext = 2756849i32;
                } else if (__value__ == (2756849i32)) {
                    _i_2756843 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2756856i32;
                } else if (__value__ == (2756856i32)) {
                    if (!scanBreak && ((_i_2756843 < (_pattern.length) : Bool))) {
                        _gotoNext = 2756889i32;
                    } else {
                        _gotoNext = 2757138i32;
                    };
                } else if (__value__ == (2756885i32)) {
                    _i_2756843++;
                    _gotoNext = 2756856i32;
                } else if (__value__ == (2756889i32)) {
                    _gotoNext = 2756893i32;
                } else if (__value__ == (2756893i32)) {
                    {
                        final __value__ = _pattern[(_i_2756843 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2756915i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2757022i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2757052i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2757083i32;
                        } else {
                            _gotoNext = 2756885i32;
                        };
                    };
                } else if (__value__ == (2756915i32)) {
                    if (((_i_2756843 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2757005i32;
                    } else {
                        _gotoNext = 2756885i32;
                    };
                } else if (__value__ == (2757005i32)) {
                    _i_2756843++;
                    _gotoNext = 2756885i32;
                } else if (__value__ == (2757022i32)) {
                    _inrange_2756821 = true;
                    _gotoNext = 2756885i32;
                } else if (__value__ == (2757052i32)) {
                    _inrange_2756821 = false;
                    _gotoNext = 2756885i32;
                } else if (__value__ == (2757083i32)) {
                    if (!_inrange_2756821) {
                        _gotoNext = 2757108i32;
                    } else {
                        _gotoNext = 2756885i32;
                    };
                } else if (__value__ == (2757108i32)) {
                    scanBreak = true;
                    _gotoNext = 2756856i32;
                } else if (__value__ == (2757138i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2756843) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2756843) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
