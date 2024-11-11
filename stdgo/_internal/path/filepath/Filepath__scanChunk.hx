package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_4032637:Bool = false;
        var scanBreak = false;
        var _i_4032659:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4032551i32;
                } else if (__value__ == (4032551i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4032593i32;
                    } else {
                        _gotoNext = 4032637i32;
                    };
                } else if (__value__ == (4032593i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4032551i32;
                } else if (__value__ == (4032637i32)) {
                    _inrange_4032637 = false;
                    _gotoNext = 4032665i32;
                } else if (__value__ == (4032665i32)) {
                    _i_4032659 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4032672i32;
                } else if (__value__ == (4032672i32)) {
                    if (!scanBreak && ((_i_4032659 < (_pattern.length) : Bool))) {
                        _gotoNext = 4032705i32;
                    } else {
                        _gotoNext = 4032997i32;
                    };
                } else if (__value__ == (4032701i32)) {
                    _i_4032659++;
                    _gotoNext = 4032672i32;
                } else if (__value__ == (4032705i32)) {
                    _gotoNext = 4032709i32;
                } else if (__value__ == (4032709i32)) {
                    {
                        final __value__ = _pattern[(_i_4032659 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4032731i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4032881i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4032911i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4032942i32;
                        } else {
                            _gotoNext = 4032701i32;
                        };
                    };
                } else if (__value__ == (4032731i32)) {
                    if (true) {
                        _gotoNext = 4032774i32;
                    } else {
                        _gotoNext = 4032701i32;
                    };
                } else if (__value__ == (4032774i32)) {
                    if (((_i_4032659 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4032857i32;
                    } else {
                        _gotoNext = 4032701i32;
                    };
                } else if (__value__ == (4032857i32)) {
                    _i_4032659++;
                    _gotoNext = 4032701i32;
                } else if (__value__ == (4032881i32)) {
                    _inrange_4032637 = true;
                    _gotoNext = 4032701i32;
                } else if (__value__ == (4032911i32)) {
                    _inrange_4032637 = false;
                    _gotoNext = 4032701i32;
                } else if (__value__ == (4032942i32)) {
                    if (!_inrange_4032637) {
                        _gotoNext = 4032967i32;
                    } else {
                        _gotoNext = 4032701i32;
                    };
                } else if (__value__ == (4032967i32)) {
                    scanBreak = true;
                    _gotoNext = 4032672i32;
                } else if (__value__ == (4032997i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4032659) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4032659) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
