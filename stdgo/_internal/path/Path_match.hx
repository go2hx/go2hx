package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2700536:Bool = false;
        var _chunk_2700289:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2701452:stdgo.Error = (null : stdgo.Error);
        var _err_2700983:stdgo.Error = (null : stdgo.Error);
        var _t_2700976:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2700540:stdgo.Error = (null : stdgo.Error);
        var _t_2700533:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2700273:Bool = false;
        var _ok_2700979:Bool = false;
        var _i_2700925:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2700234i32;
                } else if (__value__ == (2700234i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2700244i32;
                } else if (__value__ == (2700244i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2700265i32;
                    } else {
                        _gotoNext = 2701550i32;
                    };
                } else if (__value__ == (2700265i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2700273 = @:tmpset0 __tmp__._0;
                        _chunk_2700289 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2700273 && (_chunk_2700289 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2700371i32;
                    } else {
                        _gotoNext = 2700533i32;
                    };
                } else if (__value__ == (2700371i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2700533i32;
                } else if (__value__ == (2700533i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2700289?.__copy__(), _name?.__copy__());
                        _t_2700533 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2700536 = @:tmpset0 __tmp__._1;
                        _err_2700540 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2700536 && (((_t_2700533.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2700771i32;
                    } else {
                        _gotoNext = 2700803i32;
                    };
                } else if (__value__ == (2700771i32)) {
                    _name = _t_2700533?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2700244i32;
                } else if (__value__ == (2700803i32)) {
                    if (_err_2700540 != null) {
                        _gotoNext = 2700817i32;
                    } else {
                        _gotoNext = 2700846i32;
                    };
                } else if (__value__ == (2700817i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2700540 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2700846i32;
                } else if (__value__ == (2700846i32)) {
                    if (_star_2700273) {
                        _gotoNext = 2700854i32;
                    } else {
                        _gotoNext = 2701375i32;
                    };
                } else if (__value__ == (2700854i32)) {
                    _i_2700925 = (0 : stdgo.GoInt);
                    _gotoNext = 2700921i32;
                } else if (__value__ == (2700921i32)) {
                    if (((_i_2700925 < (_name.length) : Bool) && (_name[(_i_2700925 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2700970i32;
                    } else {
                        _gotoNext = 2701375i32;
                    };
                } else if (__value__ == (2700966i32)) {
                    _i_2700925++;
                    _gotoNext = 2700921i32;
                } else if (__value__ == (2700970i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2700289?.__copy__(), (_name.__slice__((_i_2700925 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2700976 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2700979 = @:tmpset0 __tmp__._1;
                        _err_2700983 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2700979) {
                        _gotoNext = 2701030i32;
                    } else {
                        _gotoNext = 2701207i32;
                    };
                } else if (__value__ == (2701030i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2700976.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2701137i32;
                    } else {
                        _gotoNext = 2701166i32;
                    };
                } else if (__value__ == (2701137i32)) {
                    _i_2700925++;
                    _gotoNext = 2700921i32;
                } else if (__value__ == (2701166i32)) {
                    _name = _t_2700976?.__copy__();
                    _gotoNext = 2700244i32;
                } else if (__value__ == (2701207i32)) {
                    if (_err_2700983 != null) {
                        _gotoNext = 2701221i32;
                    } else {
                        _gotoNext = 2700966i32;
                    };
                } else if (__value__ == (2701221i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2700983 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2700966i32;
                } else if (__value__ == (2701375i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2701375i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2701396i32;
                    } else {
                        _gotoNext = 2701528i32;
                    };
                } else if (__value__ == (2701396i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2700289 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2700289?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2701452 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2701452 != null) {
                            _gotoNext = 2701493i32;
                        } else {
                            _gotoNext = 2701375i32;
                        };
                    };
                } else if (__value__ == (2701493i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2701452 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2701375i32;
                } else if (__value__ == (2701528i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2700244i32;
                } else if (__value__ == (2701550i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
