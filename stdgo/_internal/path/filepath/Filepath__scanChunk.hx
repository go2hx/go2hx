package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3904678:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3904656:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3904570i32;
                } else if (__value__ == (3904570i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3904612i32;
                    } else {
                        _gotoNext = 3904656i32;
                    };
                } else if (__value__ == (3904612i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3904570i32;
                } else if (__value__ == (3904656i32)) {
                    _inrange_3904656 = false;
                    _gotoNext = 3904684i32;
                } else if (__value__ == (3904684i32)) {
                    _i_3904678 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3904691i32;
                } else if (__value__ == (3904691i32)) {
                    if (!scanBreak && ((_i_3904678 < (_pattern.length) : Bool))) {
                        _gotoNext = 3904724i32;
                    } else {
                        _gotoNext = 3905016i32;
                    };
                } else if (__value__ == (3904720i32)) {
                    _i_3904678++;
                    _gotoNext = 3904691i32;
                } else if (__value__ == (3904724i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3904728i32;
                } else if (__value__ == (3904728i32)) {
                    {
                        final __value__ = _pattern[(_i_3904678 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3904750i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3904900i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3904930i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3904961i32;
                        } else {
                            _gotoNext = 3904720i32;
                        };
                    };
                } else if (__value__ == (3904750i32)) {
                    if (true) {
                        _gotoNext = 3904793i32;
                    } else {
                        _gotoNext = 3904720i32;
                    };
                } else if (__value__ == (3904793i32)) {
                    if (((_i_3904678 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3904876i32;
                    } else {
                        _gotoNext = 3904720i32;
                    };
                } else if (__value__ == (3904876i32)) {
                    _i_3904678++;
                    _gotoNext = 3904720i32;
                } else if (__value__ == (3904900i32)) {
                    _inrange_3904656 = true;
                    _gotoNext = 3904720i32;
                } else if (__value__ == (3904930i32)) {
                    _inrange_3904656 = false;
                    _gotoNext = 3904720i32;
                } else if (__value__ == (3904961i32)) {
                    if (!_inrange_3904656) {
                        _gotoNext = 3904986i32;
                    } else {
                        _gotoNext = 3904720i32;
                    };
                } else if (__value__ == (3904986i32)) {
                    scanBreak = true;
                    _gotoNext = 3904691i32;
                } else if (__value__ == (3905016i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3904678) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3904678) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
