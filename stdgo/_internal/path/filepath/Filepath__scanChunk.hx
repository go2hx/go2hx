package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3991690:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3991668:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3991582i32;
                } else if (__value__ == (3991582i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3991624i32;
                    } else {
                        _gotoNext = 3991668i32;
                    };
                } else if (__value__ == (3991624i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3991582i32;
                } else if (__value__ == (3991668i32)) {
                    _inrange_3991668 = false;
                    _gotoNext = 3991696i32;
                } else if (__value__ == (3991696i32)) {
                    _i_3991690 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3991703i32;
                } else if (__value__ == (3991703i32)) {
                    if (!scanBreak && ((_i_3991690 < (_pattern.length) : Bool))) {
                        _gotoNext = 3991736i32;
                    } else {
                        _gotoNext = 3992028i32;
                    };
                } else if (__value__ == (3991732i32)) {
                    _i_3991690++;
                    _gotoNext = 3991703i32;
                } else if (__value__ == (3991736i32)) {
                    _gotoNext = 3991740i32;
                } else if (__value__ == (3991740i32)) {
                    {
                        final __value__ = _pattern[(_i_3991690 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3991762i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3991912i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3991942i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3991973i32;
                        } else {
                            _gotoNext = 3991732i32;
                        };
                    };
                } else if (__value__ == (3991762i32)) {
                    if (true) {
                        _gotoNext = 3991805i32;
                    } else {
                        _gotoNext = 3991732i32;
                    };
                } else if (__value__ == (3991805i32)) {
                    if (((_i_3991690 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3991888i32;
                    } else {
                        _gotoNext = 3991732i32;
                    };
                } else if (__value__ == (3991888i32)) {
                    _i_3991690++;
                    _gotoNext = 3991732i32;
                } else if (__value__ == (3991912i32)) {
                    _inrange_3991668 = true;
                    _gotoNext = 3991732i32;
                } else if (__value__ == (3991942i32)) {
                    _inrange_3991668 = false;
                    _gotoNext = 3991732i32;
                } else if (__value__ == (3991973i32)) {
                    if (!_inrange_3991668) {
                        _gotoNext = 3991998i32;
                    } else {
                        _gotoNext = 3991732i32;
                    };
                } else if (__value__ == (3991998i32)) {
                    scanBreak = true;
                    _gotoNext = 3991703i32;
                } else if (__value__ == (3992028i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3991690) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3991690) : stdgo.GoString)?.__copy__() };
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
