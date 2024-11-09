package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3964715:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3964693:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3964607i32;
                } else if (__value__ == (3964607i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3964649i32;
                    } else {
                        _gotoNext = 3964693i32;
                    };
                } else if (__value__ == (3964649i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3964607i32;
                } else if (__value__ == (3964693i32)) {
                    _inrange_3964693 = false;
                    _gotoNext = 3964721i32;
                } else if (__value__ == (3964721i32)) {
                    _i_3964715 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3964728i32;
                } else if (__value__ == (3964728i32)) {
                    if (!scanBreak && ((_i_3964715 < (_pattern.length) : Bool))) {
                        _gotoNext = 3964761i32;
                    } else {
                        _gotoNext = 3965053i32;
                    };
                } else if (__value__ == (3964757i32)) {
                    _i_3964715++;
                    _gotoNext = 3964728i32;
                } else if (__value__ == (3964761i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3964765i32;
                } else if (__value__ == (3964765i32)) {
                    {
                        final __value__ = _pattern[(_i_3964715 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3964787i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3964937i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3964967i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3964998i32;
                        } else {
                            _gotoNext = 3964757i32;
                        };
                    };
                } else if (__value__ == (3964787i32)) {
                    if (true) {
                        _gotoNext = 3964830i32;
                    } else {
                        _gotoNext = 3964757i32;
                    };
                } else if (__value__ == (3964830i32)) {
                    if (((_i_3964715 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3964913i32;
                    } else {
                        _gotoNext = 3964757i32;
                    };
                } else if (__value__ == (3964913i32)) {
                    _i_3964715++;
                    _gotoNext = 3964757i32;
                } else if (__value__ == (3964937i32)) {
                    _inrange_3964693 = true;
                    _gotoNext = 3964757i32;
                } else if (__value__ == (3964967i32)) {
                    _inrange_3964693 = false;
                    _gotoNext = 3964757i32;
                } else if (__value__ == (3964998i32)) {
                    if (!_inrange_3964693) {
                        _gotoNext = 3965023i32;
                    } else {
                        _gotoNext = 3964757i32;
                    };
                } else if (__value__ == (3965023i32)) {
                    scanBreak = true;
                    _gotoNext = 3964728i32;
                } else if (__value__ == (3965053i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3964715) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3964715) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
