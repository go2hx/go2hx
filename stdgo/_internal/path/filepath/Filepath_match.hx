package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _star_3990358:Bool = false;
        var _chunk_3990374:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3991078:stdgo.Error = (null : stdgo.Error);
        var _ok_3991074:Bool = false;
        var _t_3991071:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3991014:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3990629:stdgo.Error = (null : stdgo.Error);
        var _ok_3990625:Bool = false;
        var _t_3990622:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3990319i32;
                } else if (__value__ == (3990319i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3990329i32;
                } else if (__value__ == (3990329i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3990350i32;
                    } else {
                        _gotoNext = 3991380i32;
                    };
                } else if (__value__ == (3990350i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3990358 = __tmp__._0;
                        _chunk_3990374 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3990358 && (_chunk_3990374 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3990456i32;
                    } else {
                        _gotoNext = 3990622i32;
                    };
                } else if (__value__ == (3990456i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3990622i32;
                } else if (__value__ == (3990622i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3990374?.__copy__(), _name?.__copy__());
                        _t_3990622 = __tmp__._0?.__copy__();
                        _ok_3990625 = __tmp__._1;
                        _err_3990629 = __tmp__._2;
                    };
                    if ((_ok_3990625 && (((_t_3990622.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3990860i32;
                    } else {
                        _gotoNext = 3990892i32;
                    };
                } else if (__value__ == (3990860i32)) {
                    _name = _t_3990622?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3990329i32;
                } else if (__value__ == (3990892i32)) {
                    if (_err_3990629 != null) {
                        _gotoNext = 3990906i32;
                    } else {
                        _gotoNext = 3990935i32;
                    };
                } else if (__value__ == (3990906i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3990629 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3990935i32;
                } else if (__value__ == (3990935i32)) {
                    if (_star_3990358) {
                        _gotoNext = 3990943i32;
                    } else {
                        _gotoNext = 3991358i32;
                    };
                } else if (__value__ == (3990943i32)) {
                    _i_3991014 = (0 : stdgo.GoInt);
                    _gotoNext = 3991010i32;
                } else if (__value__ == (3991010i32)) {
                    if (((_i_3991014 < (_name.length) : Bool) && (_name[(_i_3991014 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3991065i32;
                    } else {
                        _gotoNext = 3991358i32;
                    };
                } else if (__value__ == (3991061i32)) {
                    _i_3991014++;
                    _gotoNext = 3991010i32;
                } else if (__value__ == (3991065i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3990374?.__copy__(), (_name.__slice__((_i_3991014 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3991071 = __tmp__._0?.__copy__();
                        _ok_3991074 = __tmp__._1;
                        _err_3991078 = __tmp__._2;
                    };
                    if (_ok_3991074) {
                        _gotoNext = 3991125i32;
                    } else {
                        _gotoNext = 3991302i32;
                    };
                } else if (__value__ == (3991125i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3991071.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3991232i32;
                    } else {
                        _gotoNext = 3991261i32;
                    };
                } else if (__value__ == (3991232i32)) {
                    _i_3991014++;
                    _gotoNext = 3991010i32;
                } else if (__value__ == (3991261i32)) {
                    _name = _t_3991071?.__copy__();
                    _gotoNext = 3990329i32;
                } else if (__value__ == (3991302i32)) {
                    if (_err_3991078 != null) {
                        _gotoNext = 3991316i32;
                    } else {
                        _gotoNext = 3991061i32;
                    };
                } else if (__value__ == (3991316i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3991078 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3991061i32;
                } else if (__value__ == (3991358i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3990329i32;
                } else if (__value__ == (3991380i32)) {
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
