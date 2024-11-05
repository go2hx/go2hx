package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4119914:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4119892:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4119806i32;
                } else if (__value__ == (4119806i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4119848i32;
                    } else {
                        _gotoNext = 4119892i32;
                    };
                } else if (__value__ == (4119848i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4119806i32;
                } else if (__value__ == (4119892i32)) {
                    _inrange_4119892 = false;
                    _gotoNext = 4119920i32;
                } else if (__value__ == (4119920i32)) {
                    _i_4119914 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4119927i32;
                } else if (__value__ == (4119927i32)) {
                    if (!scanBreak && ((_i_4119914 < (_pattern.length) : Bool))) {
                        _gotoNext = 4119960i32;
                    } else {
                        _gotoNext = 4120252i32;
                    };
                } else if (__value__ == (4119956i32)) {
                    _i_4119914++;
                    _gotoNext = 4119927i32;
                } else if (__value__ == (4119960i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4119964i32;
                } else if (__value__ == (4119964i32)) {
                    {
                        final __value__ = _pattern[(_i_4119914 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4119986i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4120136i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4120166i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4120197i32;
                        } else {
                            _gotoNext = 4119956i32;
                        };
                    };
                } else if (__value__ == (4119986i32)) {
                    if (true) {
                        _gotoNext = 4120029i32;
                    } else {
                        _gotoNext = 4119956i32;
                    };
                } else if (__value__ == (4120029i32)) {
                    if (((_i_4119914 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4120112i32;
                    } else {
                        _gotoNext = 4119956i32;
                    };
                } else if (__value__ == (4120112i32)) {
                    _i_4119914++;
                    _gotoNext = 4119956i32;
                } else if (__value__ == (4120136i32)) {
                    _inrange_4119892 = true;
                    _gotoNext = 4119956i32;
                } else if (__value__ == (4120166i32)) {
                    _inrange_4119892 = false;
                    _gotoNext = 4119956i32;
                } else if (__value__ == (4120197i32)) {
                    if (!_inrange_4119892) {
                        _gotoNext = 4120222i32;
                    } else {
                        _gotoNext = 4119956i32;
                    };
                } else if (__value__ == (4120222i32)) {
                    scanBreak = true;
                    _gotoNext = 4119927i32;
                } else if (__value__ == (4120252i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4119914) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4119914) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
