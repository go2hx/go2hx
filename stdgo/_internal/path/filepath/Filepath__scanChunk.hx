package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3970152:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3970130:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3970044i32;
                } else if (__value__ == (3970044i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3970086i32;
                    } else {
                        _gotoNext = 3970130i32;
                    };
                } else if (__value__ == (3970086i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3970044i32;
                } else if (__value__ == (3970130i32)) {
                    _inrange_3970130 = false;
                    _gotoNext = 3970158i32;
                } else if (__value__ == (3970158i32)) {
                    _i_3970152 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3970165i32;
                } else if (__value__ == (3970165i32)) {
                    if (!scanBreak && ((_i_3970152 < (_pattern.length) : Bool))) {
                        _gotoNext = 3970198i32;
                    } else {
                        _gotoNext = 3970490i32;
                    };
                } else if (__value__ == (3970194i32)) {
                    _i_3970152++;
                    _gotoNext = 3970165i32;
                } else if (__value__ == (3970198i32)) {
                    _gotoNext = 3970202i32;
                } else if (__value__ == (3970202i32)) {
                    {
                        final __value__ = _pattern[(_i_3970152 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3970224i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3970374i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3970404i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3970435i32;
                        } else {
                            _gotoNext = 3970194i32;
                        };
                    };
                } else if (__value__ == (3970224i32)) {
                    if (true) {
                        _gotoNext = 3970267i32;
                    } else {
                        _gotoNext = 3970194i32;
                    };
                } else if (__value__ == (3970267i32)) {
                    if (((_i_3970152 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3970350i32;
                    } else {
                        _gotoNext = 3970194i32;
                    };
                } else if (__value__ == (3970350i32)) {
                    _i_3970152++;
                    _gotoNext = 3970194i32;
                } else if (__value__ == (3970374i32)) {
                    _inrange_3970130 = true;
                    _gotoNext = 3970194i32;
                } else if (__value__ == (3970404i32)) {
                    _inrange_3970130 = false;
                    _gotoNext = 3970194i32;
                } else if (__value__ == (3970435i32)) {
                    if (!_inrange_3970130) {
                        _gotoNext = 3970460i32;
                    } else {
                        _gotoNext = 3970194i32;
                    };
                } else if (__value__ == (3970460i32)) {
                    scanBreak = true;
                    _gotoNext = 3970165i32;
                } else if (__value__ == (3970490i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3970152) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3970152) : stdgo.GoString)?.__copy__() };
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
