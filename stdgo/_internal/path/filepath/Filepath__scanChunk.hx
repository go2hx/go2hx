package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3944717:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3944695:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3944609i32;
                } else if (__value__ == (3944609i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3944651i32;
                    } else {
                        _gotoNext = 3944695i32;
                    };
                } else if (__value__ == (3944651i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3944609i32;
                } else if (__value__ == (3944695i32)) {
                    _inrange_3944695 = false;
                    _gotoNext = 3944723i32;
                } else if (__value__ == (3944723i32)) {
                    _i_3944717 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3944730i32;
                } else if (__value__ == (3944730i32)) {
                    if (!scanBreak && ((_i_3944717 < (_pattern.length) : Bool))) {
                        _gotoNext = 3944763i32;
                    } else {
                        _gotoNext = 3945055i32;
                    };
                } else if (__value__ == (3944759i32)) {
                    _i_3944717++;
                    _gotoNext = 3944730i32;
                } else if (__value__ == (3944763i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3944767i32;
                } else if (__value__ == (3944767i32)) {
                    {
                        final __value__ = _pattern[(_i_3944717 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3944789i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3944939i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3944969i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3945000i32;
                        } else {
                            _gotoNext = 3944759i32;
                        };
                    };
                } else if (__value__ == (3944789i32)) {
                    if (true) {
                        _gotoNext = 3944832i32;
                    } else {
                        _gotoNext = 3944759i32;
                    };
                } else if (__value__ == (3944832i32)) {
                    if (((_i_3944717 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3944915i32;
                    } else {
                        _gotoNext = 3944759i32;
                    };
                } else if (__value__ == (3944915i32)) {
                    _i_3944717++;
                    _gotoNext = 3944759i32;
                } else if (__value__ == (3944939i32)) {
                    _inrange_3944695 = true;
                    _gotoNext = 3944759i32;
                } else if (__value__ == (3944969i32)) {
                    _inrange_3944695 = false;
                    _gotoNext = 3944759i32;
                } else if (__value__ == (3945000i32)) {
                    if (!_inrange_3944695) {
                        _gotoNext = 3945025i32;
                    } else {
                        _gotoNext = 3944759i32;
                    };
                } else if (__value__ == (3945025i32)) {
                    scanBreak = true;
                    _gotoNext = 3944730i32;
                } else if (__value__ == (3945055i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3944717) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3944717) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
