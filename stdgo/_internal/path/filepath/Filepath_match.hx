package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3942910:stdgo.Error = (null : stdgo.Error);
        var _ok_3942906:Bool = false;
        var _t_3942903:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3942639:Bool = false;
        var _err_3943359:stdgo.Error = (null : stdgo.Error);
        var _t_3943352:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3943295:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_3942655:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _ok_3943355:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3942600i32;
                } else if (__value__ == (3942600i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3942610i32;
                } else if (__value__ == (3942610i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3942631i32;
                    } else {
                        _gotoNext = 3943661i32;
                    };
                } else if (__value__ == (3942631i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3942639 = __tmp__._0;
                        _chunk_3942655 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3942639 && (_chunk_3942655 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3942737i32;
                    } else {
                        _gotoNext = 3942903i32;
                    };
                } else if (__value__ == (3942737i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3942903i32;
                } else if (__value__ == (3942903i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3942655?.__copy__(), _name?.__copy__());
                        _t_3942903 = __tmp__._0?.__copy__();
                        _ok_3942906 = __tmp__._1;
                        _err_3942910 = __tmp__._2;
                    };
                    if ((_ok_3942906 && (((_t_3942903.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3943141i32;
                    } else {
                        _gotoNext = 3943173i32;
                    };
                } else if (__value__ == (3943141i32)) {
                    _name = _t_3942903?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3942610i32;
                } else if (__value__ == (3943173i32)) {
                    if (_err_3942910 != null) {
                        _gotoNext = 3943187i32;
                    } else {
                        _gotoNext = 3943216i32;
                    };
                } else if (__value__ == (3943187i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3942910 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943216i32;
                } else if (__value__ == (3943216i32)) {
                    if (_star_3942639) {
                        _gotoNext = 3943224i32;
                    } else {
                        _gotoNext = 3943639i32;
                    };
                } else if (__value__ == (3943224i32)) {
                    _i_3943295 = (0 : stdgo.GoInt);
                    _gotoNext = 3943291i32;
                } else if (__value__ == (3943291i32)) {
                    if (((_i_3943295 < (_name.length) : Bool) && (_name[(_i_3943295 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3943346i32;
                    } else {
                        _gotoNext = 3943639i32;
                    };
                } else if (__value__ == (3943342i32)) {
                    _i_3943295++;
                    _gotoNext = 3943291i32;
                } else if (__value__ == (3943346i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3942655?.__copy__(), (_name.__slice__((_i_3943295 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3943352 = __tmp__._0?.__copy__();
                        _ok_3943355 = __tmp__._1;
                        _err_3943359 = __tmp__._2;
                    };
                    if (_ok_3943355) {
                        _gotoNext = 3943406i32;
                    } else {
                        _gotoNext = 3943583i32;
                    };
                } else if (__value__ == (3943406i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3943352.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3943513i32;
                    } else {
                        _gotoNext = 3943542i32;
                    };
                } else if (__value__ == (3943513i32)) {
                    _i_3943295++;
                    _gotoNext = 3943291i32;
                } else if (__value__ == (3943542i32)) {
                    _name = _t_3943352?.__copy__();
                    _gotoNext = 3942610i32;
                } else if (__value__ == (3943583i32)) {
                    if (_err_3943359 != null) {
                        _gotoNext = 3943597i32;
                    } else {
                        _gotoNext = 3943342i32;
                    };
                } else if (__value__ == (3943597i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3943359 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943342i32;
                } else if (__value__ == (3943639i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3942610i32;
                } else if (__value__ == (3943661i32)) {
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
