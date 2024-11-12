package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4047232:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4047210:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4047124i32;
                } else if (__value__ == (4047124i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4047166i32;
                    } else {
                        _gotoNext = 4047210i32;
                    };
                } else if (__value__ == (4047166i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4047124i32;
                } else if (__value__ == (4047210i32)) {
                    _inrange_4047210 = false;
                    _gotoNext = 4047238i32;
                } else if (__value__ == (4047238i32)) {
                    _i_4047232 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4047245i32;
                } else if (__value__ == (4047245i32)) {
                    if (!scanBreak && ((_i_4047232 < (_pattern.length) : Bool))) {
                        _gotoNext = 4047278i32;
                    } else {
                        _gotoNext = 4047570i32;
                    };
                } else if (__value__ == (4047274i32)) {
                    _i_4047232++;
                    _gotoNext = 4047245i32;
                } else if (__value__ == (4047278i32)) {
                    _gotoNext = 4047282i32;
                } else if (__value__ == (4047282i32)) {
                    {
                        final __value__ = _pattern[(_i_4047232 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4047304i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4047454i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4047484i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4047515i32;
                        } else {
                            _gotoNext = 4047274i32;
                        };
                    };
                } else if (__value__ == (4047304i32)) {
                    if (true) {
                        _gotoNext = 4047347i32;
                    } else {
                        _gotoNext = 4047274i32;
                    };
                } else if (__value__ == (4047347i32)) {
                    if (((_i_4047232 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4047430i32;
                    } else {
                        _gotoNext = 4047274i32;
                    };
                } else if (__value__ == (4047430i32)) {
                    _i_4047232++;
                    _gotoNext = 4047274i32;
                } else if (__value__ == (4047454i32)) {
                    _inrange_4047210 = true;
                    _gotoNext = 4047274i32;
                } else if (__value__ == (4047484i32)) {
                    _inrange_4047210 = false;
                    _gotoNext = 4047274i32;
                } else if (__value__ == (4047515i32)) {
                    if (!_inrange_4047210) {
                        _gotoNext = 4047540i32;
                    } else {
                        _gotoNext = 4047274i32;
                    };
                } else if (__value__ == (4047540i32)) {
                    scanBreak = true;
                    _gotoNext = 4047245i32;
                } else if (__value__ == (4047570i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4047232) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4047232) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
