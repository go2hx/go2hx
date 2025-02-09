package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_4087226:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4087204:Bool = false;
        var scanBreak = false;
        var _i_3943971:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4087118i32;
                } else if (__value__ == (4087118i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4087160i32;
                    } else {
                        _gotoNext = 4087204i32;
                    };
                } else if (__value__ == (4087160i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4087118i32;
                } else if (__value__ == (4087204i32)) {
                    _inrange_4087204 = false;
                    _gotoNext = 4087232i32;
                } else if (__value__ == (4087232i32)) {
                    _i_4087226 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4087239i32;
                } else if (__value__ == (4087239i32)) {
                    if (!scanBreak && ((_i_4087226 < (_pattern.length) : Bool))) {
                        _gotoNext = 4087272i32;
                    } else {
                        _gotoNext = 4087564i32;
                    };
                } else if (__value__ == (4087268i32)) {
                    _i_4087226++;
                    _gotoNext = 4087239i32;
                } else if (__value__ == (4087272i32)) {
                    _gotoNext = 4087276i32;
                } else if (__value__ == (4087276i32)) {
                    {
                        final __value__ = _pattern[(_i_4087226 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4087298i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4087448i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4087478i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4087509i32;
                        } else {
                            _gotoNext = 4087268i32;
                        };
                    };
                } else if (__value__ == (4087298i32)) {
                    if (true) {
                        _gotoNext = 4087341i32;
                    } else {
                        _gotoNext = 4087268i32;
                    };
                } else if (__value__ == (4087341i32)) {
                    if (((_i_4087226 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4087424i32;
                    } else {
                        _gotoNext = 4087268i32;
                    };
                } else if (__value__ == (4087424i32)) {
                    _i_4087226++;
                    _gotoNext = 4087268i32;
                } else if (__value__ == (4087448i32)) {
                    _inrange_4087204 = true;
                    _gotoNext = 4087268i32;
                } else if (__value__ == (4087478i32)) {
                    _inrange_4087204 = false;
                    _gotoNext = 4087268i32;
                } else if (__value__ == (4087509i32)) {
                    if (!_inrange_4087204) {
                        _gotoNext = 4087534i32;
                    } else {
                        _gotoNext = 4087268i32;
                    };
                } else if (__value__ == (4087534i32)) {
                    scanBreak = true;
                    _gotoNext = 4087239i32;
                } else if (__value__ == (4087564i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4087226) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4087226) : stdgo.GoString)?.__copy__() };
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
