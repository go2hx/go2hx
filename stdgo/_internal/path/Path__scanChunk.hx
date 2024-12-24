package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2602462:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2602440:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2602354i32;
                } else if (__value__ == (2602354i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2602396i32;
                    } else {
                        _gotoNext = 2602440i32;
                    };
                } else if (__value__ == (2602396i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2602354i32;
                } else if (__value__ == (2602440i32)) {
                    _inrange_2602440 = false;
                    _gotoNext = 2602468i32;
                } else if (__value__ == (2602468i32)) {
                    _i_2602462 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2602475i32;
                } else if (__value__ == (2602475i32)) {
                    if (!scanBreak && ((_i_2602462 < (_pattern.length) : Bool))) {
                        _gotoNext = 2602508i32;
                    } else {
                        _gotoNext = 2602757i32;
                    };
                } else if (__value__ == (2602504i32)) {
                    _i_2602462++;
                    _gotoNext = 2602475i32;
                } else if (__value__ == (2602508i32)) {
                    _gotoNext = 2602512i32;
                } else if (__value__ == (2602512i32)) {
                    {
                        final __value__ = _pattern[(_i_2602462 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2602534i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2602641i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2602671i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2602702i32;
                        } else {
                            _gotoNext = 2602504i32;
                        };
                    };
                } else if (__value__ == (2602534i32)) {
                    if (((_i_2602462 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2602624i32;
                    } else {
                        _gotoNext = 2602504i32;
                    };
                } else if (__value__ == (2602624i32)) {
                    _i_2602462++;
                    _gotoNext = 2602504i32;
                } else if (__value__ == (2602641i32)) {
                    _inrange_2602440 = true;
                    _gotoNext = 2602504i32;
                } else if (__value__ == (2602671i32)) {
                    _inrange_2602440 = false;
                    _gotoNext = 2602504i32;
                } else if (__value__ == (2602702i32)) {
                    if (!_inrange_2602440) {
                        _gotoNext = 2602727i32;
                    } else {
                        _gotoNext = 2602504i32;
                    };
                } else if (__value__ == (2602727i32)) {
                    scanBreak = true;
                    _gotoNext = 2602475i32;
                } else if (__value__ == (2602757i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2602462) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2602462) : stdgo.GoString)?.__copy__() };
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
