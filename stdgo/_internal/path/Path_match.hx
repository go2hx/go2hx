package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2685475:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2686394:stdgo.Error = (null : stdgo.Error);
        var _err_2685925:stdgo.Error = (null : stdgo.Error);
        var _ok_2685478:Bool = false;
        var patternBreak = false;
        var _ok_2685921:Bool = false;
        var _t_2685918:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2685867:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2685482:stdgo.Error = (null : stdgo.Error);
        var _chunk_2685231:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2685215:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2685176i32;
                } else if (__value__ == (2685176i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2685186i32;
                } else if (__value__ == (2685186i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2685207i32;
                    } else {
                        _gotoNext = 2686492i32;
                    };
                } else if (__value__ == (2685207i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2685215 = __tmp__._0;
                        _chunk_2685231 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2685215 && (_chunk_2685231 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2685313i32;
                    } else {
                        _gotoNext = 2685475i32;
                    };
                } else if (__value__ == (2685313i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2685475i32;
                } else if (__value__ == (2685475i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2685231?.__copy__(), _name?.__copy__());
                        _t_2685475 = __tmp__._0?.__copy__();
                        _ok_2685478 = __tmp__._1;
                        _err_2685482 = __tmp__._2;
                    };
                    if ((_ok_2685478 && (((_t_2685475.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2685713i32;
                    } else {
                        _gotoNext = 2685745i32;
                    };
                } else if (__value__ == (2685713i32)) {
                    _name = _t_2685475?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2685186i32;
                } else if (__value__ == (2685745i32)) {
                    if (_err_2685482 != null) {
                        _gotoNext = 2685759i32;
                    } else {
                        _gotoNext = 2685788i32;
                    };
                } else if (__value__ == (2685759i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2685482 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2685788i32;
                } else if (__value__ == (2685788i32)) {
                    if (_star_2685215) {
                        _gotoNext = 2685796i32;
                    } else {
                        _gotoNext = 2686317i32;
                    };
                } else if (__value__ == (2685796i32)) {
                    _i_2685867 = (0 : stdgo.GoInt);
                    _gotoNext = 2685863i32;
                } else if (__value__ == (2685863i32)) {
                    if (((_i_2685867 < (_name.length) : Bool) && (_name[(_i_2685867 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2685912i32;
                    } else {
                        _gotoNext = 2686317i32;
                    };
                } else if (__value__ == (2685908i32)) {
                    _i_2685867++;
                    _gotoNext = 2685863i32;
                } else if (__value__ == (2685912i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2685231?.__copy__(), (_name.__slice__((_i_2685867 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2685918 = __tmp__._0?.__copy__();
                        _ok_2685921 = __tmp__._1;
                        _err_2685925 = __tmp__._2;
                    };
                    if (_ok_2685921) {
                        _gotoNext = 2685972i32;
                    } else {
                        _gotoNext = 2686149i32;
                    };
                } else if (__value__ == (2685972i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2685918.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2686079i32;
                    } else {
                        _gotoNext = 2686108i32;
                    };
                } else if (__value__ == (2686079i32)) {
                    _i_2685867++;
                    _gotoNext = 2685863i32;
                } else if (__value__ == (2686108i32)) {
                    _name = _t_2685918?.__copy__();
                    _gotoNext = 2685186i32;
                } else if (__value__ == (2686149i32)) {
                    if (_err_2685925 != null) {
                        _gotoNext = 2686163i32;
                    } else {
                        _gotoNext = 2685908i32;
                    };
                } else if (__value__ == (2686163i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2685925 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2685908i32;
                } else if (__value__ == (2686317i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2686317i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2686338i32;
                    } else {
                        _gotoNext = 2686470i32;
                    };
                } else if (__value__ == (2686338i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2685231 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2685231?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2686394 = __tmp__._2;
                        };
                        if (_err_2686394 != null) {
                            _gotoNext = 2686435i32;
                        } else {
                            _gotoNext = 2686470i32;
                        };
                    };
                } else if (__value__ == (2686435i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2686394 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2686470i32;
                } else if (__value__ == (2686470i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2685186i32;
                } else if (__value__ == (2686492i32)) {
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
