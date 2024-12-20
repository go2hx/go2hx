package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_3969476:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_3968820:Bool = false;
        var _t_3969084:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3968836:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_3969540:stdgo.Error = (null : stdgo.Error);
        var _ok_3969536:Bool = false;
        var _t_3969533:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3969091:stdgo.Error = (null : stdgo.Error);
        var _ok_3969087:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3968781i32;
                } else if (__value__ == (3968781i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3968791i32;
                } else if (__value__ == (3968791i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3968812i32;
                    } else {
                        _gotoNext = 3969842i32;
                    };
                } else if (__value__ == (3968812i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3968820 = __tmp__._0;
                        _chunk_3968836 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3968820 && (_chunk_3968836 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3968918i32;
                    } else {
                        _gotoNext = 3969084i32;
                    };
                } else if (__value__ == (3968918i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3969084i32;
                } else if (__value__ == (3969084i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3968836?.__copy__(), _name?.__copy__());
                        _t_3969084 = __tmp__._0?.__copy__();
                        _ok_3969087 = __tmp__._1;
                        _err_3969091 = __tmp__._2;
                    };
                    if ((_ok_3969087 && (((_t_3969084.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3969322i32;
                    } else {
                        _gotoNext = 3969354i32;
                    };
                } else if (__value__ == (3969322i32)) {
                    _name = _t_3969084?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3968791i32;
                } else if (__value__ == (3969354i32)) {
                    if (_err_3969091 != null) {
                        _gotoNext = 3969368i32;
                    } else {
                        _gotoNext = 3969397i32;
                    };
                } else if (__value__ == (3969368i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3969091 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3969397i32;
                } else if (__value__ == (3969397i32)) {
                    if (_star_3968820) {
                        _gotoNext = 3969405i32;
                    } else {
                        _gotoNext = 3969820i32;
                    };
                } else if (__value__ == (3969405i32)) {
                    _i_3969476 = (0 : stdgo.GoInt);
                    _gotoNext = 3969472i32;
                } else if (__value__ == (3969472i32)) {
                    if (((_i_3969476 < (_name.length) : Bool) && (_name[(_i_3969476 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3969527i32;
                    } else {
                        _gotoNext = 3969820i32;
                    };
                } else if (__value__ == (3969523i32)) {
                    _i_3969476++;
                    _gotoNext = 3969472i32;
                } else if (__value__ == (3969527i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3968836?.__copy__(), (_name.__slice__((_i_3969476 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3969533 = __tmp__._0?.__copy__();
                        _ok_3969536 = __tmp__._1;
                        _err_3969540 = __tmp__._2;
                    };
                    if (_ok_3969536) {
                        _gotoNext = 3969587i32;
                    } else {
                        _gotoNext = 3969764i32;
                    };
                } else if (__value__ == (3969587i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3969533.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3969694i32;
                    } else {
                        _gotoNext = 3969723i32;
                    };
                } else if (__value__ == (3969694i32)) {
                    _i_3969476++;
                    _gotoNext = 3969472i32;
                } else if (__value__ == (3969723i32)) {
                    _name = _t_3969533?.__copy__();
                    _gotoNext = 3968791i32;
                } else if (__value__ == (3969764i32)) {
                    if (_err_3969540 != null) {
                        _gotoNext = 3969778i32;
                    } else {
                        _gotoNext = 3969523i32;
                    };
                } else if (__value__ == (3969778i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3969540 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3969523i32;
                } else if (__value__ == (3969820i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3968791i32;
                } else if (__value__ == (3969842i32)) {
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
