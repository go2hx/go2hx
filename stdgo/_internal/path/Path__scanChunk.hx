package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_2888268:Bool = false;
        var scanBreak = false;
        var _i_2888290:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2888182i32;
                } else if (__value__ == (2888182i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2888224i32;
                    } else {
                        _gotoNext = 2888268i32;
                    };
                } else if (__value__ == (2888224i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2888182i32;
                } else if (__value__ == (2888268i32)) {
                    _inrange_2888268 = false;
                    _gotoNext = 2888296i32;
                } else if (__value__ == (2888296i32)) {
                    _i_2888290 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2888303i32;
                } else if (__value__ == (2888303i32)) {
                    if (!scanBreak && ((_i_2888290 < (_pattern.length) : Bool))) {
                        _gotoNext = 2888336i32;
                    } else {
                        _gotoNext = 2888585i32;
                    };
                } else if (__value__ == (2888332i32)) {
                    _i_2888290++;
                    _gotoNext = 2888303i32;
                } else if (__value__ == (2888336i32)) {
                    _gotoNext = 2888340i32;
                } else if (__value__ == (2888340i32)) {
                    {
                        final __value__ = _pattern[(_i_2888290 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2888362i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2888469i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2888499i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2888530i32;
                        } else {
                            _gotoNext = 2888332i32;
                        };
                    };
                } else if (__value__ == (2888362i32)) {
                    if (((_i_2888290 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2888452i32;
                    } else {
                        _gotoNext = 2888332i32;
                    };
                } else if (__value__ == (2888452i32)) {
                    _i_2888290++;
                    _gotoNext = 2888332i32;
                } else if (__value__ == (2888469i32)) {
                    _inrange_2888268 = true;
                    _gotoNext = 2888332i32;
                } else if (__value__ == (2888499i32)) {
                    _inrange_2888268 = false;
                    _gotoNext = 2888332i32;
                } else if (__value__ == (2888530i32)) {
                    if (!_inrange_2888268) {
                        _gotoNext = 2888555i32;
                    } else {
                        _gotoNext = 2888332i32;
                    };
                } else if (__value__ == (2888555i32)) {
                    scanBreak = true;
                    _gotoNext = 2888303i32;
                } else if (__value__ == (2888585i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2888290) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2888290) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
