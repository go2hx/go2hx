package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_4068314:Bool = false;
        var scanBreak = false;
        var _i_4068336:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4068228i32;
                } else if (__value__ == (4068228i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4068270i32;
                    } else {
                        _gotoNext = 4068314i32;
                    };
                } else if (__value__ == (4068270i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4068228i32;
                } else if (__value__ == (4068314i32)) {
                    _inrange_4068314 = false;
                    _gotoNext = 4068342i32;
                } else if (__value__ == (4068342i32)) {
                    _i_4068336 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4068349i32;
                } else if (__value__ == (4068349i32)) {
                    if (!scanBreak && ((_i_4068336 < (_pattern.length) : Bool))) {
                        _gotoNext = 4068382i32;
                    } else {
                        _gotoNext = 4068674i32;
                    };
                } else if (__value__ == (4068378i32)) {
                    _i_4068336++;
                    _gotoNext = 4068349i32;
                } else if (__value__ == (4068382i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4068386i32;
                } else if (__value__ == (4068386i32)) {
                    {
                        final __value__ = _pattern[(_i_4068336 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4068408i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4068558i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4068588i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4068619i32;
                        } else {
                            _gotoNext = 4068378i32;
                        };
                    };
                } else if (__value__ == (4068408i32)) {
                    if (true) {
                        _gotoNext = 4068451i32;
                    } else {
                        _gotoNext = 4068378i32;
                    };
                } else if (__value__ == (4068451i32)) {
                    if (((_i_4068336 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4068534i32;
                    } else {
                        _gotoNext = 4068378i32;
                    };
                } else if (__value__ == (4068534i32)) {
                    _i_4068336++;
                    _gotoNext = 4068378i32;
                } else if (__value__ == (4068558i32)) {
                    _inrange_4068314 = true;
                    _gotoNext = 4068378i32;
                } else if (__value__ == (4068588i32)) {
                    _inrange_4068314 = false;
                    _gotoNext = 4068378i32;
                } else if (__value__ == (4068619i32)) {
                    if (!_inrange_4068314) {
                        _gotoNext = 4068644i32;
                    } else {
                        _gotoNext = 4068378i32;
                    };
                } else if (__value__ == (4068644i32)) {
                    scanBreak = true;
                    _gotoNext = 4068349i32;
                } else if (__value__ == (4068674i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4068336) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4068336) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
