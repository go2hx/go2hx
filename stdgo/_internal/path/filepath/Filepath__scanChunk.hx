package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3965202:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3965180:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3965094i32;
                } else if (__value__ == (3965094i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3965136i32;
                    } else {
                        _gotoNext = 3965180i32;
                    };
                } else if (__value__ == (3965136i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3965094i32;
                } else if (__value__ == (3965180i32)) {
                    _inrange_3965180 = false;
                    _gotoNext = 3965208i32;
                } else if (__value__ == (3965208i32)) {
                    _i_3965202 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3965215i32;
                } else if (__value__ == (3965215i32)) {
                    if (!scanBreak && ((_i_3965202 < (_pattern.length) : Bool))) {
                        _gotoNext = 3965248i32;
                    } else {
                        _gotoNext = 3965540i32;
                    };
                } else if (__value__ == (3965244i32)) {
                    _i_3965202++;
                    _gotoNext = 3965215i32;
                } else if (__value__ == (3965248i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3965252i32;
                } else if (__value__ == (3965252i32)) {
                    {
                        final __value__ = _pattern[(_i_3965202 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3965274i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3965424i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3965454i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3965485i32;
                        } else {
                            _gotoNext = 3965244i32;
                        };
                    };
                } else if (__value__ == (3965274i32)) {
                    if (true) {
                        _gotoNext = 3965317i32;
                    } else {
                        _gotoNext = 3965244i32;
                    };
                } else if (__value__ == (3965317i32)) {
                    if (((_i_3965202 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3965400i32;
                    } else {
                        _gotoNext = 3965244i32;
                    };
                } else if (__value__ == (3965400i32)) {
                    _i_3965202++;
                    _gotoNext = 3965244i32;
                } else if (__value__ == (3965424i32)) {
                    _inrange_3965180 = true;
                    _gotoNext = 3965244i32;
                } else if (__value__ == (3965454i32)) {
                    _inrange_3965180 = false;
                    _gotoNext = 3965244i32;
                } else if (__value__ == (3965485i32)) {
                    if (!_inrange_3965180) {
                        _gotoNext = 3965510i32;
                    } else {
                        _gotoNext = 3965244i32;
                    };
                } else if (__value__ == (3965510i32)) {
                    scanBreak = true;
                    _gotoNext = 3965215i32;
                } else if (__value__ == (3965540i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3965202) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3965202) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
