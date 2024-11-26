package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_4021181:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4021159:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4021073i32;
                } else if (__value__ == (4021073i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4021115i32;
                    } else {
                        _gotoNext = 4021159i32;
                    };
                } else if (__value__ == (4021115i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4021073i32;
                } else if (__value__ == (4021159i32)) {
                    _inrange_4021159 = false;
                    _gotoNext = 4021187i32;
                } else if (__value__ == (4021187i32)) {
                    _i_4021181 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4021194i32;
                } else if (__value__ == (4021194i32)) {
                    if (!scanBreak && ((_i_4021181 < (_pattern.length) : Bool))) {
                        _gotoNext = 4021227i32;
                    } else {
                        _gotoNext = 4021519i32;
                    };
                } else if (__value__ == (4021223i32)) {
                    _i_4021181++;
                    _gotoNext = 4021194i32;
                } else if (__value__ == (4021227i32)) {
                    _gotoNext = 4021231i32;
                } else if (__value__ == (4021231i32)) {
                    {
                        final __value__ = _pattern[(_i_4021181 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4021253i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4021403i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4021433i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4021464i32;
                        } else {
                            _gotoNext = 4021223i32;
                        };
                    };
                } else if (__value__ == (4021253i32)) {
                    if (true) {
                        _gotoNext = 4021296i32;
                    } else {
                        _gotoNext = 4021223i32;
                    };
                } else if (__value__ == (4021296i32)) {
                    if (((_i_4021181 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4021379i32;
                    } else {
                        _gotoNext = 4021223i32;
                    };
                } else if (__value__ == (4021379i32)) {
                    _i_4021181++;
                    _gotoNext = 4021223i32;
                } else if (__value__ == (4021403i32)) {
                    _inrange_4021159 = true;
                    _gotoNext = 4021223i32;
                } else if (__value__ == (4021433i32)) {
                    _inrange_4021159 = false;
                    _gotoNext = 4021223i32;
                } else if (__value__ == (4021464i32)) {
                    if (!_inrange_4021159) {
                        _gotoNext = 4021489i32;
                    } else {
                        _gotoNext = 4021223i32;
                    };
                } else if (__value__ == (4021489i32)) {
                    scanBreak = true;
                    _gotoNext = 4021194i32;
                } else if (__value__ == (4021519i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4021181) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4021181) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
