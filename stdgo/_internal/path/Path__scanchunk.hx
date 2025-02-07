package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_2732699:Bool = false;
        var scanBreak = false;
        var _i_2732721:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2732613i32;
                } else if (__value__ == (2732613i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2732655i32;
                    } else {
                        _gotoNext = 2732699i32;
                    };
                } else if (__value__ == (2732655i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2732613i32;
                } else if (__value__ == (2732699i32)) {
                    _inrange_2732699 = false;
                    _gotoNext = 2732727i32;
                } else if (__value__ == (2732727i32)) {
                    _i_2732721 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2732734i32;
                } else if (__value__ == (2732734i32)) {
                    if (!scanBreak && ((_i_2732721 < (_pattern.length) : Bool))) {
                        _gotoNext = 2732767i32;
                    } else {
                        _gotoNext = 2733016i32;
                    };
                } else if (__value__ == (2732763i32)) {
                    _i_2732721++;
                    _gotoNext = 2732734i32;
                } else if (__value__ == (2732767i32)) {
                    _gotoNext = 2732771i32;
                } else if (__value__ == (2732771i32)) {
                    {
                        final __value__ = _pattern[(_i_2732721 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2732793i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2732900i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2732930i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2732961i32;
                        } else {
                            _gotoNext = 2732763i32;
                        };
                    };
                } else if (__value__ == (2732793i32)) {
                    if (((_i_2732721 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2732883i32;
                    } else {
                        _gotoNext = 2732763i32;
                    };
                } else if (__value__ == (2732883i32)) {
                    _i_2732721++;
                    _gotoNext = 2732763i32;
                } else if (__value__ == (2732900i32)) {
                    _inrange_2732699 = true;
                    _gotoNext = 2732763i32;
                } else if (__value__ == (2732930i32)) {
                    _inrange_2732699 = false;
                    _gotoNext = 2732763i32;
                } else if (__value__ == (2732961i32)) {
                    if (!_inrange_2732699) {
                        _gotoNext = 2732986i32;
                    } else {
                        _gotoNext = 2732763i32;
                    };
                } else if (__value__ == (2732986i32)) {
                    scanBreak = true;
                    _gotoNext = 2732734i32;
                } else if (__value__ == (2733016i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2732721) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2732721) : stdgo.GoString)?.__copy__() };
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
