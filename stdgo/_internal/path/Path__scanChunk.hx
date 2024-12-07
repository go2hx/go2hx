package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2717262:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2717240:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2717154i32;
                } else if (__value__ == (2717154i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2717196i32;
                    } else {
                        _gotoNext = 2717240i32;
                    };
                } else if (__value__ == (2717196i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2717154i32;
                } else if (__value__ == (2717240i32)) {
                    _inrange_2717240 = false;
                    _gotoNext = 2717268i32;
                } else if (__value__ == (2717268i32)) {
                    _i_2717262 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2717275i32;
                } else if (__value__ == (2717275i32)) {
                    if (!scanBreak && ((_i_2717262 < (_pattern.length) : Bool))) {
                        _gotoNext = 2717308i32;
                    } else {
                        _gotoNext = 2717557i32;
                    };
                } else if (__value__ == (2717304i32)) {
                    _i_2717262++;
                    _gotoNext = 2717275i32;
                } else if (__value__ == (2717308i32)) {
                    _gotoNext = 2717312i32;
                } else if (__value__ == (2717312i32)) {
                    {
                        final __value__ = _pattern[(_i_2717262 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2717334i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2717441i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2717471i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2717502i32;
                        } else {
                            _gotoNext = 2717304i32;
                        };
                    };
                } else if (__value__ == (2717334i32)) {
                    if (((_i_2717262 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2717424i32;
                    } else {
                        _gotoNext = 2717304i32;
                    };
                } else if (__value__ == (2717424i32)) {
                    _i_2717262++;
                    _gotoNext = 2717304i32;
                } else if (__value__ == (2717441i32)) {
                    _inrange_2717240 = true;
                    _gotoNext = 2717304i32;
                } else if (__value__ == (2717471i32)) {
                    _inrange_2717240 = false;
                    _gotoNext = 2717304i32;
                } else if (__value__ == (2717502i32)) {
                    if (!_inrange_2717240) {
                        _gotoNext = 2717527i32;
                    } else {
                        _gotoNext = 2717304i32;
                    };
                } else if (__value__ == (2717527i32)) {
                    scanBreak = true;
                    _gotoNext = 2717275i32;
                } else if (__value__ == (2717557i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2717262) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2717262) : stdgo.GoString)?.__copy__() };
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
