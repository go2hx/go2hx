package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4060742:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4060720:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4060634i32;
                } else if (__value__ == (4060634i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4060676i32;
                    } else {
                        _gotoNext = 4060720i32;
                    };
                } else if (__value__ == (4060676i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4060634i32;
                } else if (__value__ == (4060720i32)) {
                    _inrange_4060720 = false;
                    _gotoNext = 4060748i32;
                } else if (__value__ == (4060748i32)) {
                    _i_4060742 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4060755i32;
                } else if (__value__ == (4060755i32)) {
                    if (!scanBreak && ((_i_4060742 < (_pattern.length) : Bool))) {
                        _gotoNext = 4060788i32;
                    } else {
                        _gotoNext = 4061080i32;
                    };
                } else if (__value__ == (4060784i32)) {
                    _i_4060742++;
                    _gotoNext = 4060755i32;
                } else if (__value__ == (4060788i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4060792i32;
                } else if (__value__ == (4060792i32)) {
                    {
                        final __value__ = _pattern[(_i_4060742 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4060814i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4060964i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4060994i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4061025i32;
                        } else {
                            _gotoNext = 4060784i32;
                        };
                    };
                } else if (__value__ == (4060814i32)) {
                    if (true) {
                        _gotoNext = 4060857i32;
                    } else {
                        _gotoNext = 4060784i32;
                    };
                } else if (__value__ == (4060857i32)) {
                    if (((_i_4060742 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4060940i32;
                    } else {
                        _gotoNext = 4060784i32;
                    };
                } else if (__value__ == (4060940i32)) {
                    _i_4060742++;
                    _gotoNext = 4060784i32;
                } else if (__value__ == (4060964i32)) {
                    _inrange_4060720 = true;
                    _gotoNext = 4060784i32;
                } else if (__value__ == (4060994i32)) {
                    _inrange_4060720 = false;
                    _gotoNext = 4060784i32;
                } else if (__value__ == (4061025i32)) {
                    if (!_inrange_4060720) {
                        _gotoNext = 4061050i32;
                    } else {
                        _gotoNext = 4060784i32;
                    };
                } else if (__value__ == (4061050i32)) {
                    scanBreak = true;
                    _gotoNext = 4060755i32;
                } else if (__value__ == (4061080i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4060742) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4060742) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
