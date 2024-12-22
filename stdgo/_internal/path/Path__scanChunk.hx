package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2891246:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2891224:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2891138i32;
                } else if (__value__ == (2891138i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2891180i32;
                    } else {
                        _gotoNext = 2891224i32;
                    };
                } else if (__value__ == (2891180i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2891138i32;
                } else if (__value__ == (2891224i32)) {
                    _inrange_2891224 = false;
                    _gotoNext = 2891252i32;
                } else if (__value__ == (2891252i32)) {
                    _i_2891246 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2891259i32;
                } else if (__value__ == (2891259i32)) {
                    if (!scanBreak && ((_i_2891246 < (_pattern.length) : Bool))) {
                        _gotoNext = 2891292i32;
                    } else {
                        _gotoNext = 2891541i32;
                    };
                } else if (__value__ == (2891288i32)) {
                    _i_2891246++;
                    _gotoNext = 2891259i32;
                } else if (__value__ == (2891292i32)) {
                    _gotoNext = 2891296i32;
                } else if (__value__ == (2891296i32)) {
                    {
                        final __value__ = _pattern[(_i_2891246 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2891318i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2891425i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2891455i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2891486i32;
                        } else {
                            _gotoNext = 2891288i32;
                        };
                    };
                } else if (__value__ == (2891318i32)) {
                    if (((_i_2891246 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2891408i32;
                    } else {
                        _gotoNext = 2891288i32;
                    };
                } else if (__value__ == (2891408i32)) {
                    _i_2891246++;
                    _gotoNext = 2891288i32;
                } else if (__value__ == (2891425i32)) {
                    _inrange_2891224 = true;
                    _gotoNext = 2891288i32;
                } else if (__value__ == (2891455i32)) {
                    _inrange_2891224 = false;
                    _gotoNext = 2891288i32;
                } else if (__value__ == (2891486i32)) {
                    if (!_inrange_2891224) {
                        _gotoNext = 2891511i32;
                    } else {
                        _gotoNext = 2891288i32;
                    };
                } else if (__value__ == (2891511i32)) {
                    scanBreak = true;
                    _gotoNext = 2891259i32;
                } else if (__value__ == (2891541i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2891246) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2891246) : stdgo.GoString)?.__copy__() };
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
