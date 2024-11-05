package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_3981748:Bool = false;
        var scanBreak = false;
        var _i_3981770:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3981662i32;
                } else if (__value__ == (3981662i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3981704i32;
                    } else {
                        _gotoNext = 3981748i32;
                    };
                } else if (__value__ == (3981704i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3981662i32;
                } else if (__value__ == (3981748i32)) {
                    _inrange_3981748 = false;
                    _gotoNext = 3981776i32;
                } else if (__value__ == (3981776i32)) {
                    _i_3981770 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3981783i32;
                } else if (__value__ == (3981783i32)) {
                    if (!scanBreak && ((_i_3981770 < (_pattern.length) : Bool))) {
                        _gotoNext = 3981816i32;
                    } else {
                        _gotoNext = 3982108i32;
                    };
                } else if (__value__ == (3981812i32)) {
                    _i_3981770++;
                    _gotoNext = 3981783i32;
                } else if (__value__ == (3981816i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3981820i32;
                } else if (__value__ == (3981820i32)) {
                    {
                        final __value__ = _pattern[(_i_3981770 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3981842i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3981992i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3982022i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3982053i32;
                        } else {
                            _gotoNext = 3981812i32;
                        };
                    };
                } else if (__value__ == (3981842i32)) {
                    if (true) {
                        _gotoNext = 3981885i32;
                    } else {
                        _gotoNext = 3981812i32;
                    };
                } else if (__value__ == (3981885i32)) {
                    if (((_i_3981770 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3981968i32;
                    } else {
                        _gotoNext = 3981812i32;
                    };
                } else if (__value__ == (3981968i32)) {
                    _i_3981770++;
                    _gotoNext = 3981812i32;
                } else if (__value__ == (3981992i32)) {
                    _inrange_3981748 = true;
                    _gotoNext = 3981812i32;
                } else if (__value__ == (3982022i32)) {
                    _inrange_3981748 = false;
                    _gotoNext = 3981812i32;
                } else if (__value__ == (3982053i32)) {
                    if (!_inrange_3981748) {
                        _gotoNext = 3982078i32;
                    } else {
                        _gotoNext = 3981812i32;
                    };
                } else if (__value__ == (3982078i32)) {
                    scanBreak = true;
                    _gotoNext = 3981783i32;
                } else if (__value__ == (3982108i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3981770) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3981770) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
