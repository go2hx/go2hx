package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2655754:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2655732:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2655646i32;
                } else if (__value__ == (2655646i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2655688i32;
                    } else {
                        _gotoNext = 2655732i32;
                    };
                } else if (__value__ == (2655688i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2655646i32;
                } else if (__value__ == (2655732i32)) {
                    _inrange_2655732 = false;
                    _gotoNext = 2655760i32;
                } else if (__value__ == (2655760i32)) {
                    _i_2655754 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2655767i32;
                } else if (__value__ == (2655767i32)) {
                    if (!scanBreak && ((_i_2655754 < (_pattern.length) : Bool))) {
                        _gotoNext = 2655800i32;
                    } else {
                        _gotoNext = 2656049i32;
                    };
                } else if (__value__ == (2655796i32)) {
                    _i_2655754++;
                    _gotoNext = 2655767i32;
                } else if (__value__ == (2655800i32)) {
                    _gotoNext = 2655804i32;
                } else if (__value__ == (2655804i32)) {
                    {
                        final __value__ = _pattern[(_i_2655754 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2655826i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2655933i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2655963i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2655994i32;
                        } else {
                            _gotoNext = 2655796i32;
                        };
                    };
                } else if (__value__ == (2655826i32)) {
                    if (((_i_2655754 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2655916i32;
                    } else {
                        _gotoNext = 2655796i32;
                    };
                } else if (__value__ == (2655916i32)) {
                    _i_2655754++;
                    _gotoNext = 2655796i32;
                } else if (__value__ == (2655933i32)) {
                    _inrange_2655732 = true;
                    _gotoNext = 2655796i32;
                } else if (__value__ == (2655963i32)) {
                    _inrange_2655732 = false;
                    _gotoNext = 2655796i32;
                } else if (__value__ == (2655994i32)) {
                    if (!_inrange_2655732) {
                        _gotoNext = 2656019i32;
                    } else {
                        _gotoNext = 2655796i32;
                    };
                } else if (__value__ == (2656019i32)) {
                    scanBreak = true;
                    _gotoNext = 2655767i32;
                } else if (__value__ == (2656049i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2655754) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2655754) : stdgo.GoString)?.__copy__() };
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
