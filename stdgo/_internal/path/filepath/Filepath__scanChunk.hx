package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3908032:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3908010:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3907924i32;
                } else if (__value__ == (3907924i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3907966i32;
                    } else {
                        _gotoNext = 3908010i32;
                    };
                } else if (__value__ == (3907966i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3907924i32;
                } else if (__value__ == (3908010i32)) {
                    _inrange_3908010 = false;
                    _gotoNext = 3908038i32;
                } else if (__value__ == (3908038i32)) {
                    _i_3908032 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3908045i32;
                } else if (__value__ == (3908045i32)) {
                    if (!scanBreak && ((_i_3908032 < (_pattern.length) : Bool))) {
                        _gotoNext = 3908078i32;
                    } else {
                        _gotoNext = 3908370i32;
                    };
                } else if (__value__ == (3908074i32)) {
                    _i_3908032++;
                    _gotoNext = 3908045i32;
                } else if (__value__ == (3908078i32)) {
                    _gotoNext = 3908082i32;
                } else if (__value__ == (3908082i32)) {
                    {
                        final __value__ = _pattern[(_i_3908032 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3908104i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3908254i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3908284i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3908315i32;
                        } else {
                            _gotoNext = 3908074i32;
                        };
                    };
                } else if (__value__ == (3908104i32)) {
                    if (true) {
                        _gotoNext = 3908147i32;
                    } else {
                        _gotoNext = 3908074i32;
                    };
                } else if (__value__ == (3908147i32)) {
                    if (((_i_3908032 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3908230i32;
                    } else {
                        _gotoNext = 3908074i32;
                    };
                } else if (__value__ == (3908230i32)) {
                    _i_3908032++;
                    _gotoNext = 3908074i32;
                } else if (__value__ == (3908254i32)) {
                    _inrange_3908010 = true;
                    _gotoNext = 3908074i32;
                } else if (__value__ == (3908284i32)) {
                    _inrange_3908010 = false;
                    _gotoNext = 3908074i32;
                } else if (__value__ == (3908315i32)) {
                    if (!_inrange_3908010) {
                        _gotoNext = 3908340i32;
                    } else {
                        _gotoNext = 3908074i32;
                    };
                } else if (__value__ == (3908340i32)) {
                    scanBreak = true;
                    _gotoNext = 3908045i32;
                } else if (__value__ == (3908370i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3908032) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3908032) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
