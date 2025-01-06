package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_3943772:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3943750:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3943664i32;
                } else if (__value__ == (3943664i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3943706i32;
                    } else {
                        _gotoNext = 3943750i32;
                    };
                } else if (__value__ == (3943706i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3943664i32;
                } else if (__value__ == (3943750i32)) {
                    _inrange_3943750 = false;
                    _gotoNext = 3943778i32;
                } else if (__value__ == (3943778i32)) {
                    _i_3943772 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3943785i32;
                } else if (__value__ == (3943785i32)) {
                    if (!scanBreak && ((_i_3943772 < (_pattern.length) : Bool))) {
                        _gotoNext = 3943818i32;
                    } else {
                        _gotoNext = 3944110i32;
                    };
                } else if (__value__ == (3943814i32)) {
                    _i_3943772++;
                    _gotoNext = 3943785i32;
                } else if (__value__ == (3943818i32)) {
                    _gotoNext = 3943822i32;
                } else if (__value__ == (3943822i32)) {
                    {
                        final __value__ = _pattern[(_i_3943772 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3943844i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3943994i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3944024i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3944055i32;
                        } else {
                            _gotoNext = 3943814i32;
                        };
                    };
                } else if (__value__ == (3943844i32)) {
                    if (true) {
                        _gotoNext = 3943887i32;
                    } else {
                        _gotoNext = 3943814i32;
                    };
                } else if (__value__ == (3943887i32)) {
                    if (((_i_3943772 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3943970i32;
                    } else {
                        _gotoNext = 3943814i32;
                    };
                } else if (__value__ == (3943970i32)) {
                    _i_3943772++;
                    _gotoNext = 3943814i32;
                } else if (__value__ == (3943994i32)) {
                    _inrange_3943750 = true;
                    _gotoNext = 3943814i32;
                } else if (__value__ == (3944024i32)) {
                    _inrange_3943750 = false;
                    _gotoNext = 3943814i32;
                } else if (__value__ == (3944055i32)) {
                    if (!_inrange_3943750) {
                        _gotoNext = 3944080i32;
                    } else {
                        _gotoNext = 3943814i32;
                    };
                } else if (__value__ == (3944080i32)) {
                    scanBreak = true;
                    _gotoNext = 3943785i32;
                } else if (__value__ == (3944110i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3943772) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3943772) : stdgo.GoString)?.__copy__() };
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
