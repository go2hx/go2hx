package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2624225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2624203:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2624117i32;
                } else if (__value__ == (2624117i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2624159i32;
                    } else {
                        _gotoNext = 2624203i32;
                    };
                } else if (__value__ == (2624159i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2624117i32;
                } else if (__value__ == (2624203i32)) {
                    _inrange_2624203 = false;
                    _gotoNext = 2624231i32;
                } else if (__value__ == (2624231i32)) {
                    _i_2624225 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2624238i32;
                } else if (__value__ == (2624238i32)) {
                    if (!scanBreak && ((_i_2624225 < (_pattern.length) : Bool))) {
                        _gotoNext = 2624271i32;
                    } else {
                        _gotoNext = 2624520i32;
                    };
                } else if (__value__ == (2624267i32)) {
                    _i_2624225++;
                    _gotoNext = 2624238i32;
                } else if (__value__ == (2624271i32)) {
                    _gotoNext = 2624275i32;
                } else if (__value__ == (2624275i32)) {
                    {
                        final __value__ = _pattern[(_i_2624225 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2624297i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2624404i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2624434i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2624465i32;
                        } else {
                            _gotoNext = 2624267i32;
                        };
                    };
                } else if (__value__ == (2624297i32)) {
                    if (((_i_2624225 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2624387i32;
                    } else {
                        _gotoNext = 2624267i32;
                    };
                } else if (__value__ == (2624387i32)) {
                    _i_2624225++;
                    _gotoNext = 2624267i32;
                } else if (__value__ == (2624404i32)) {
                    _inrange_2624203 = true;
                    _gotoNext = 2624267i32;
                } else if (__value__ == (2624434i32)) {
                    _inrange_2624203 = false;
                    _gotoNext = 2624267i32;
                } else if (__value__ == (2624465i32)) {
                    if (!_inrange_2624203) {
                        _gotoNext = 2624490i32;
                    } else {
                        _gotoNext = 2624267i32;
                    };
                } else if (__value__ == (2624490i32)) {
                    scanBreak = true;
                    _gotoNext = 2624238i32;
                } else if (__value__ == (2624520i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2624225) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2624225) : stdgo.GoString)?.__copy__() };
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
