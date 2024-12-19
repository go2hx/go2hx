package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2914759:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2914737:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2914651i32;
                } else if (__value__ == (2914651i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2914693i32;
                    } else {
                        _gotoNext = 2914737i32;
                    };
                } else if (__value__ == (2914693i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2914651i32;
                } else if (__value__ == (2914737i32)) {
                    _inrange_2914737 = false;
                    _gotoNext = 2914765i32;
                } else if (__value__ == (2914765i32)) {
                    _i_2914759 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2914772i32;
                } else if (__value__ == (2914772i32)) {
                    if (!scanBreak && ((_i_2914759 < (_pattern.length) : Bool))) {
                        _gotoNext = 2914805i32;
                    } else {
                        _gotoNext = 2915054i32;
                    };
                } else if (__value__ == (2914801i32)) {
                    _i_2914759++;
                    _gotoNext = 2914772i32;
                } else if (__value__ == (2914805i32)) {
                    _gotoNext = 2914809i32;
                } else if (__value__ == (2914809i32)) {
                    {
                        final __value__ = _pattern[(_i_2914759 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2914831i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2914938i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2914968i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2914999i32;
                        } else {
                            _gotoNext = 2914801i32;
                        };
                    };
                } else if (__value__ == (2914831i32)) {
                    if (((_i_2914759 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2914921i32;
                    } else {
                        _gotoNext = 2914801i32;
                    };
                } else if (__value__ == (2914921i32)) {
                    _i_2914759++;
                    _gotoNext = 2914801i32;
                } else if (__value__ == (2914938i32)) {
                    _inrange_2914737 = true;
                    _gotoNext = 2914801i32;
                } else if (__value__ == (2914968i32)) {
                    _inrange_2914737 = false;
                    _gotoNext = 2914801i32;
                } else if (__value__ == (2914999i32)) {
                    if (!_inrange_2914737) {
                        _gotoNext = 2915024i32;
                    } else {
                        _gotoNext = 2914801i32;
                    };
                } else if (__value__ == (2915024i32)) {
                    scanBreak = true;
                    _gotoNext = 2914772i32;
                } else if (__value__ == (2915054i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2914759) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2914759) : stdgo.GoString)?.__copy__() };
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
