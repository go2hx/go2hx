package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2906180:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2906158:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2906072i32;
                } else if (__value__ == (2906072i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2906114i32;
                    } else {
                        _gotoNext = 2906158i32;
                    };
                } else if (__value__ == (2906114i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2906072i32;
                } else if (__value__ == (2906158i32)) {
                    _inrange_2906158 = false;
                    _gotoNext = 2906186i32;
                } else if (__value__ == (2906186i32)) {
                    _i_2906180 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2906193i32;
                } else if (__value__ == (2906193i32)) {
                    if (!scanBreak && ((_i_2906180 < (_pattern.length) : Bool))) {
                        _gotoNext = 2906226i32;
                    } else {
                        _gotoNext = 2906475i32;
                    };
                } else if (__value__ == (2906222i32)) {
                    _i_2906180++;
                    _gotoNext = 2906193i32;
                } else if (__value__ == (2906226i32)) {
                    _gotoNext = 2906230i32;
                } else if (__value__ == (2906230i32)) {
                    {
                        final __value__ = _pattern[(_i_2906180 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2906252i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2906359i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2906389i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2906420i32;
                        } else {
                            _gotoNext = 2906222i32;
                        };
                    };
                } else if (__value__ == (2906252i32)) {
                    if (((_i_2906180 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2906342i32;
                    } else {
                        _gotoNext = 2906222i32;
                    };
                } else if (__value__ == (2906342i32)) {
                    _i_2906180++;
                    _gotoNext = 2906222i32;
                } else if (__value__ == (2906359i32)) {
                    _inrange_2906158 = true;
                    _gotoNext = 2906222i32;
                } else if (__value__ == (2906389i32)) {
                    _inrange_2906158 = false;
                    _gotoNext = 2906222i32;
                } else if (__value__ == (2906420i32)) {
                    if (!_inrange_2906158) {
                        _gotoNext = 2906445i32;
                    } else {
                        _gotoNext = 2906222i32;
                    };
                } else if (__value__ == (2906445i32)) {
                    scanBreak = true;
                    _gotoNext = 2906193i32;
                } else if (__value__ == (2906475i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2906180) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2906180) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
