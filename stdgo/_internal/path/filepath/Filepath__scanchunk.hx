package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_3943949:Bool = false;
        var scanBreak = false;
        var _i_4058208:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4058186:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4058100i32;
                } else if (__value__ == (4058100i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4058142i32;
                    } else {
                        _gotoNext = 4058186i32;
                    };
                } else if (__value__ == (4058142i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4058100i32;
                } else if (__value__ == (4058186i32)) {
                    _inrange_4058186 = false;
                    _gotoNext = 4058214i32;
                } else if (__value__ == (4058214i32)) {
                    _i_4058208 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4058221i32;
                } else if (__value__ == (4058221i32)) {
                    if (!scanBreak && ((_i_4058208 < (_pattern.length) : Bool))) {
                        _gotoNext = 4058254i32;
                    } else {
                        _gotoNext = 4058546i32;
                    };
                } else if (__value__ == (4058250i32)) {
                    _i_4058208++;
                    _gotoNext = 4058221i32;
                } else if (__value__ == (4058254i32)) {
                    _gotoNext = 4058258i32;
                } else if (__value__ == (4058258i32)) {
                    {
                        final __value__ = _pattern[(_i_4058208 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4058280i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4058430i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4058460i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4058491i32;
                        } else {
                            _gotoNext = 4058250i32;
                        };
                    };
                } else if (__value__ == (4058280i32)) {
                    if (true) {
                        _gotoNext = 4058323i32;
                    } else {
                        _gotoNext = 4058250i32;
                    };
                } else if (__value__ == (4058323i32)) {
                    if (((_i_4058208 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4058406i32;
                    } else {
                        _gotoNext = 4058250i32;
                    };
                } else if (__value__ == (4058406i32)) {
                    _i_4058208++;
                    _gotoNext = 4058250i32;
                } else if (__value__ == (4058430i32)) {
                    _inrange_4058186 = true;
                    _gotoNext = 4058250i32;
                } else if (__value__ == (4058460i32)) {
                    _inrange_4058186 = false;
                    _gotoNext = 4058250i32;
                } else if (__value__ == (4058491i32)) {
                    if (!_inrange_4058186) {
                        _gotoNext = 4058516i32;
                    } else {
                        _gotoNext = 4058250i32;
                    };
                } else if (__value__ == (4058516i32)) {
                    scanBreak = true;
                    _gotoNext = 4058221i32;
                } else if (__value__ == (4058546i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4058208) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4058208) : stdgo.GoString)?.__copy__() };
                        _star = __tmp__._0;
                        _chunk = __tmp__._1;
                        _rest = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
