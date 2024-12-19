package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3908255:stdgo.Error = (null : stdgo.Error);
        var _ok_3908251:Bool = false;
        var _err_3907806:stdgo.Error = (null : stdgo.Error);
        var _chunk_3907551:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3907535:Bool = false;
        var patternBreak = false;
        var _t_3908248:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3908191:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3907802:Bool = false;
        var _t_3907799:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3907496i32;
                } else if (__value__ == (3907496i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3907506i32;
                } else if (__value__ == (3907506i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3907527i32;
                    } else {
                        _gotoNext = 3908557i32;
                    };
                } else if (__value__ == (3907527i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3907535 = __tmp__._0;
                        _chunk_3907551 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3907535 && (_chunk_3907551 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3907633i32;
                    } else {
                        _gotoNext = 3907799i32;
                    };
                } else if (__value__ == (3907633i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3907799i32;
                } else if (__value__ == (3907799i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3907551?.__copy__(), _name?.__copy__());
                        _t_3907799 = __tmp__._0?.__copy__();
                        _ok_3907802 = __tmp__._1;
                        _err_3907806 = __tmp__._2;
                    };
                    if ((_ok_3907802 && (((_t_3907799.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3908037i32;
                    } else {
                        _gotoNext = 3908069i32;
                    };
                } else if (__value__ == (3908037i32)) {
                    _name = _t_3907799?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3907506i32;
                } else if (__value__ == (3908069i32)) {
                    if (_err_3907806 != null) {
                        _gotoNext = 3908083i32;
                    } else {
                        _gotoNext = 3908112i32;
                    };
                } else if (__value__ == (3908083i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3907806 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3908112i32;
                } else if (__value__ == (3908112i32)) {
                    if (_star_3907535) {
                        _gotoNext = 3908120i32;
                    } else {
                        _gotoNext = 3908535i32;
                    };
                } else if (__value__ == (3908120i32)) {
                    _i_3908191 = (0 : stdgo.GoInt);
                    _gotoNext = 3908187i32;
                } else if (__value__ == (3908187i32)) {
                    if (((_i_3908191 < (_name.length) : Bool) && (_name[(_i_3908191 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3908242i32;
                    } else {
                        _gotoNext = 3908535i32;
                    };
                } else if (__value__ == (3908238i32)) {
                    _i_3908191++;
                    _gotoNext = 3908187i32;
                } else if (__value__ == (3908242i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3907551?.__copy__(), (_name.__slice__((_i_3908191 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3908248 = __tmp__._0?.__copy__();
                        _ok_3908251 = __tmp__._1;
                        _err_3908255 = __tmp__._2;
                    };
                    if (_ok_3908251) {
                        _gotoNext = 3908302i32;
                    } else {
                        _gotoNext = 3908479i32;
                    };
                } else if (__value__ == (3908302i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3908248.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3908409i32;
                    } else {
                        _gotoNext = 3908438i32;
                    };
                } else if (__value__ == (3908409i32)) {
                    _i_3908191++;
                    _gotoNext = 3908187i32;
                } else if (__value__ == (3908438i32)) {
                    _name = _t_3908248?.__copy__();
                    _gotoNext = 3907506i32;
                } else if (__value__ == (3908479i32)) {
                    if (_err_3908255 != null) {
                        _gotoNext = 3908493i32;
                    } else {
                        _gotoNext = 3908238i32;
                    };
                } else if (__value__ == (3908493i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3908255 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3908238i32;
                } else if (__value__ == (3908535i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3907506i32;
                } else if (__value__ == (3908557i32)) {
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
