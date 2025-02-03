package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4017267:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4017245:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4017159i32;
                } else if (__value__ == (4017159i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4017201i32;
                    } else {
                        _gotoNext = 4017245i32;
                    };
                } else if (__value__ == (4017201i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4017159i32;
                } else if (__value__ == (4017245i32)) {
                    _inrange_4017245 = false;
                    _gotoNext = 4017273i32;
                } else if (__value__ == (4017273i32)) {
                    _i_4017267 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4017280i32;
                } else if (__value__ == (4017280i32)) {
                    if (!scanBreak && ((_i_4017267 < (_pattern.length) : Bool))) {
                        _gotoNext = 4017313i32;
                    } else {
                        _gotoNext = 4017605i32;
                    };
                } else if (__value__ == (4017309i32)) {
                    _i_4017267++;
                    _gotoNext = 4017280i32;
                } else if (__value__ == (4017313i32)) {
                    _gotoNext = 4017317i32;
                } else if (__value__ == (4017317i32)) {
                    {
                        final __value__ = _pattern[(_i_4017267 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4017339i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4017489i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4017519i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4017550i32;
                        } else {
                            _gotoNext = 4017309i32;
                        };
                    };
                } else if (__value__ == (4017339i32)) {
                    if (true) {
                        _gotoNext = 4017382i32;
                    } else {
                        _gotoNext = 4017309i32;
                    };
                } else if (__value__ == (4017382i32)) {
                    if (((_i_4017267 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4017465i32;
                    } else {
                        _gotoNext = 4017309i32;
                    };
                } else if (__value__ == (4017465i32)) {
                    _i_4017267++;
                    _gotoNext = 4017309i32;
                } else if (__value__ == (4017489i32)) {
                    _inrange_4017245 = true;
                    _gotoNext = 4017309i32;
                } else if (__value__ == (4017519i32)) {
                    _inrange_4017245 = false;
                    _gotoNext = 4017309i32;
                } else if (__value__ == (4017550i32)) {
                    if (!_inrange_4017245) {
                        _gotoNext = 4017575i32;
                    } else {
                        _gotoNext = 4017309i32;
                    };
                } else if (__value__ == (4017575i32)) {
                    scanBreak = true;
                    _gotoNext = 4017280i32;
                } else if (__value__ == (4017605i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4017267) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4017267) : stdgo.GoString)?.__copy__() };
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
