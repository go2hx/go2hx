package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3071931:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3071909:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3071823i32;
                } else if (__value__ == (3071823i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3071865i32;
                    } else {
                        _gotoNext = 3071909i32;
                    };
                } else if (__value__ == (3071865i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3071823i32;
                } else if (__value__ == (3071909i32)) {
                    _inrange_3071909 = false;
                    _gotoNext = 3071937i32;
                } else if (__value__ == (3071937i32)) {
                    _i_3071931 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3071944i32;
                } else if (__value__ == (3071944i32)) {
                    if (!scanBreak && ((_i_3071931 < (_pattern.length) : Bool))) {
                        _gotoNext = 3071977i32;
                    } else {
                        _gotoNext = 3072226i32;
                    };
                } else if (__value__ == (3071973i32)) {
                    _i_3071931++;
                    _gotoNext = 3071944i32;
                } else if (__value__ == (3071977i32)) {
                    _gotoNext = 3071981i32;
                } else if (__value__ == (3071981i32)) {
                    {
                        final __value__ = _pattern[(_i_3071931 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3072003i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3072110i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3072140i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3072171i32;
                        } else {
                            _gotoNext = 3071973i32;
                        };
                    };
                } else if (__value__ == (3072003i32)) {
                    if (((_i_3071931 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3072093i32;
                    } else {
                        _gotoNext = 3071973i32;
                    };
                } else if (__value__ == (3072093i32)) {
                    _i_3071931++;
                    _gotoNext = 3071973i32;
                } else if (__value__ == (3072110i32)) {
                    _inrange_3071909 = true;
                    _gotoNext = 3071973i32;
                } else if (__value__ == (3072140i32)) {
                    _inrange_3071909 = false;
                    _gotoNext = 3071973i32;
                } else if (__value__ == (3072171i32)) {
                    if (!_inrange_3071909) {
                        _gotoNext = 3072196i32;
                    } else {
                        _gotoNext = 3071973i32;
                    };
                } else if (__value__ == (3072196i32)) {
                    scanBreak = true;
                    _gotoNext = 3071944i32;
                } else if (__value__ == (3072226i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3071931) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3071931) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
