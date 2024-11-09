package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3868739:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3868717:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3868631i32;
                } else if (__value__ == (3868631i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3868673i32;
                    } else {
                        _gotoNext = 3868717i32;
                    };
                } else if (__value__ == (3868673i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3868631i32;
                } else if (__value__ == (3868717i32)) {
                    _inrange_3868717 = false;
                    _gotoNext = 3868745i32;
                } else if (__value__ == (3868745i32)) {
                    _i_3868739 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3868752i32;
                } else if (__value__ == (3868752i32)) {
                    if (!scanBreak && ((_i_3868739 < (_pattern.length) : Bool))) {
                        _gotoNext = 3868785i32;
                    } else {
                        _gotoNext = 3869077i32;
                    };
                } else if (__value__ == (3868781i32)) {
                    _i_3868739++;
                    _gotoNext = 3868752i32;
                } else if (__value__ == (3868785i32)) {
                    _gotoNext = 3868789i32;
                } else if (__value__ == (3868789i32)) {
                    {
                        final __value__ = _pattern[(_i_3868739 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3868811i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3868961i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3868991i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3869022i32;
                        } else {
                            _gotoNext = 3868781i32;
                        };
                    };
                } else if (__value__ == (3868811i32)) {
                    if (true) {
                        _gotoNext = 3868854i32;
                    } else {
                        _gotoNext = 3868781i32;
                    };
                } else if (__value__ == (3868854i32)) {
                    if (((_i_3868739 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3868937i32;
                    } else {
                        _gotoNext = 3868781i32;
                    };
                } else if (__value__ == (3868937i32)) {
                    _i_3868739++;
                    _gotoNext = 3868781i32;
                } else if (__value__ == (3868961i32)) {
                    _inrange_3868717 = true;
                    _gotoNext = 3868781i32;
                } else if (__value__ == (3868991i32)) {
                    _inrange_3868717 = false;
                    _gotoNext = 3868781i32;
                } else if (__value__ == (3869022i32)) {
                    if (!_inrange_3868717) {
                        _gotoNext = 3869047i32;
                    } else {
                        _gotoNext = 3868781i32;
                    };
                } else if (__value__ == (3869047i32)) {
                    scanBreak = true;
                    _gotoNext = 3868752i32;
                } else if (__value__ == (3869077i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3868739) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3868739) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
