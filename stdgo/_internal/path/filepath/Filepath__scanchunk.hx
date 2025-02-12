package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_4036783:Bool = false;
        var scanBreak = false;
        var _i_4036805:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4036697i32;
                } else if (__value__ == (4036697i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4036739i32;
                    } else {
                        _gotoNext = 4036783i32;
                    };
                } else if (__value__ == (4036739i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4036697i32;
                } else if (__value__ == (4036783i32)) {
                    _inrange_4036783 = false;
                    _gotoNext = 4036811i32;
                } else if (__value__ == (4036811i32)) {
                    _i_4036805 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4036818i32;
                } else if (__value__ == (4036818i32)) {
                    if (!scanBreak && ((_i_4036805 < (_pattern.length) : Bool))) {
                        _gotoNext = 4036851i32;
                    } else {
                        _gotoNext = 4037143i32;
                    };
                } else if (__value__ == (4036847i32)) {
                    _i_4036805++;
                    _gotoNext = 4036818i32;
                } else if (__value__ == (4036851i32)) {
                    _gotoNext = 4036855i32;
                } else if (__value__ == (4036855i32)) {
                    {
                        final __value__ = _pattern[(_i_4036805 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4036877i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4037027i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4037057i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4037088i32;
                        } else {
                            _gotoNext = 4036847i32;
                        };
                    };
                } else if (__value__ == (4036877i32)) {
                    if (true) {
                        _gotoNext = 4036920i32;
                    } else {
                        _gotoNext = 4036847i32;
                    };
                } else if (__value__ == (4036920i32)) {
                    if (((_i_4036805 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4037003i32;
                    } else {
                        _gotoNext = 4036847i32;
                    };
                } else if (__value__ == (4037003i32)) {
                    _i_4036805++;
                    _gotoNext = 4036847i32;
                } else if (__value__ == (4037027i32)) {
                    _inrange_4036783 = true;
                    _gotoNext = 4036847i32;
                } else if (__value__ == (4037057i32)) {
                    _inrange_4036783 = false;
                    _gotoNext = 4036847i32;
                } else if (__value__ == (4037088i32)) {
                    if (!_inrange_4036783) {
                        _gotoNext = 4037113i32;
                    } else {
                        _gotoNext = 4036847i32;
                    };
                } else if (__value__ == (4037113i32)) {
                    scanBreak = true;
                    _gotoNext = 4036818i32;
                } else if (__value__ == (4037143i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4036805) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4036805) : stdgo.GoString)?.__copy__() };
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
