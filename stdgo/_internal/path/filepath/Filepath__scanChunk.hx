package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3969578:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3969556:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3969470i32;
                } else if (__value__ == (3969470i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3969512i32;
                    } else {
                        _gotoNext = 3969556i32;
                    };
                } else if (__value__ == (3969512i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3969470i32;
                } else if (__value__ == (3969556i32)) {
                    _inrange_3969556 = false;
                    _gotoNext = 3969584i32;
                } else if (__value__ == (3969584i32)) {
                    _i_3969578 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3969591i32;
                } else if (__value__ == (3969591i32)) {
                    if (!scanBreak && ((_i_3969578 < (_pattern.length) : Bool))) {
                        _gotoNext = 3969624i32;
                    } else {
                        _gotoNext = 3969916i32;
                    };
                } else if (__value__ == (3969620i32)) {
                    _i_3969578++;
                    _gotoNext = 3969591i32;
                } else if (__value__ == (3969624i32)) {
                    _gotoNext = 3969628i32;
                } else if (__value__ == (3969628i32)) {
                    {
                        final __value__ = _pattern[(_i_3969578 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3969650i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3969800i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3969830i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3969861i32;
                        } else {
                            _gotoNext = 3969620i32;
                        };
                    };
                } else if (__value__ == (3969650i32)) {
                    if (true) {
                        _gotoNext = 3969693i32;
                    } else {
                        _gotoNext = 3969620i32;
                    };
                } else if (__value__ == (3969693i32)) {
                    if (((_i_3969578 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3969776i32;
                    } else {
                        _gotoNext = 3969620i32;
                    };
                } else if (__value__ == (3969776i32)) {
                    _i_3969578++;
                    _gotoNext = 3969620i32;
                } else if (__value__ == (3969800i32)) {
                    _inrange_3969556 = true;
                    _gotoNext = 3969620i32;
                } else if (__value__ == (3969830i32)) {
                    _inrange_3969556 = false;
                    _gotoNext = 3969620i32;
                } else if (__value__ == (3969861i32)) {
                    if (!_inrange_3969556) {
                        _gotoNext = 3969886i32;
                    } else {
                        _gotoNext = 3969620i32;
                    };
                } else if (__value__ == (3969886i32)) {
                    scanBreak = true;
                    _gotoNext = 3969591i32;
                } else if (__value__ == (3969916i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3969578) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3969578) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
