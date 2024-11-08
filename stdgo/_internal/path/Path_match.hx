package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2714593:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2714201:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2713957:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2713941:Bool = false;
        var patternBreak = false;
        var _err_2715120:stdgo.Error = (null : stdgo.Error);
        var _err_2714651:stdgo.Error = (null : stdgo.Error);
        var _ok_2714647:Bool = false;
        var _t_2714644:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2714208:stdgo.Error = (null : stdgo.Error);
        var _ok_2714204:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2713902i32;
                } else if (__value__ == (2713902i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2713912i32;
                } else if (__value__ == (2713912i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2713933i32;
                    } else {
                        _gotoNext = 2715218i32;
                    };
                } else if (__value__ == (2713933i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2713941 = __tmp__._0;
                        _chunk_2713957 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2713941 && (_chunk_2713957 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2714039i32;
                    } else {
                        _gotoNext = 2714201i32;
                    };
                } else if (__value__ == (2714039i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2714201i32;
                } else if (__value__ == (2714201i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2713957?.__copy__(), _name?.__copy__());
                        _t_2714201 = __tmp__._0?.__copy__();
                        _ok_2714204 = __tmp__._1;
                        _err_2714208 = __tmp__._2;
                    };
                    if ((_ok_2714204 && (((_t_2714201.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2714439i32;
                    } else {
                        _gotoNext = 2714471i32;
                    };
                } else if (__value__ == (2714439i32)) {
                    _name = _t_2714201?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2713912i32;
                } else if (__value__ == (2714471i32)) {
                    if (_err_2714208 != null) {
                        _gotoNext = 2714485i32;
                    } else {
                        _gotoNext = 2714514i32;
                    };
                } else if (__value__ == (2714485i32)) {
                    return { _0 : false, _1 : _err_2714208 };
                    _gotoNext = 2714514i32;
                } else if (__value__ == (2714514i32)) {
                    if (_star_2713941) {
                        _gotoNext = 2714522i32;
                    } else {
                        _gotoNext = 2715043i32;
                    };
                } else if (__value__ == (2714522i32)) {
                    _i_2714593 = (0 : stdgo.GoInt);
                    _gotoNext = 2714589i32;
                } else if (__value__ == (2714589i32)) {
                    if (((_i_2714593 < (_name.length) : Bool) && (_name[(_i_2714593 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2714638i32;
                    } else {
                        _gotoNext = 2715043i32;
                    };
                } else if (__value__ == (2714634i32)) {
                    _i_2714593++;
                    _gotoNext = 2714589i32;
                } else if (__value__ == (2714638i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2713957?.__copy__(), (_name.__slice__((_i_2714593 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2714644 = __tmp__._0?.__copy__();
                        _ok_2714647 = __tmp__._1;
                        _err_2714651 = __tmp__._2;
                    };
                    if (_ok_2714647) {
                        _gotoNext = 2714698i32;
                    } else {
                        _gotoNext = 2714875i32;
                    };
                } else if (__value__ == (2714698i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2714644.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2714805i32;
                    } else {
                        _gotoNext = 2714834i32;
                    };
                } else if (__value__ == (2714805i32)) {
                    _i_2714593++;
                    _gotoNext = 2714589i32;
                } else if (__value__ == (2714834i32)) {
                    _name = _t_2714644?.__copy__();
                    _gotoNext = 2713912i32;
                } else if (__value__ == (2714875i32)) {
                    if (_err_2714651 != null) {
                        _gotoNext = 2714889i32;
                    } else {
                        _gotoNext = 2714634i32;
                    };
                } else if (__value__ == (2714889i32)) {
                    return { _0 : false, _1 : _err_2714651 };
                    _gotoNext = 2714634i32;
                } else if (__value__ == (2715043i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2715043i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2715064i32;
                    } else {
                        _gotoNext = 2715196i32;
                    };
                } else if (__value__ == (2715064i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2713957 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2713957?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2715120 = __tmp__._2;
                        };
                        if (_err_2715120 != null) {
                            _gotoNext = 2715161i32;
                        } else {
                            _gotoNext = 2715196i32;
                        };
                    };
                } else if (__value__ == (2715161i32)) {
                    return { _0 : false, _1 : _err_2715120 };
                    _gotoNext = 2715196i32;
                } else if (__value__ == (2715196i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2713912i32;
                } else if (__value__ == (2715218i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
