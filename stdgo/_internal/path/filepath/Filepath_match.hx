package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4057621:stdgo.Error = (null : stdgo.Error);
        var _ok_4057617:Bool = false;
        var _ok_4057168:Bool = false;
        var _t_4057165:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _t_4057614:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4057557:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4057172:stdgo.Error = (null : stdgo.Error);
        var _chunk_4056917:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4056901:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4056862i32;
                } else if (__value__ == (4056862i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4056872i32;
                } else if (__value__ == (4056872i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4056893i32;
                    } else {
                        _gotoNext = 4057923i32;
                    };
                } else if (__value__ == (4056893i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4056901 = __tmp__._0;
                        _chunk_4056917 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4056901 && (_chunk_4056917 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4056999i32;
                    } else {
                        _gotoNext = 4057165i32;
                    };
                } else if (__value__ == (4056999i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4057165i32;
                } else if (__value__ == (4057165i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4056917?.__copy__(), _name?.__copy__());
                        _t_4057165 = __tmp__._0?.__copy__();
                        _ok_4057168 = __tmp__._1;
                        _err_4057172 = __tmp__._2;
                    };
                    if ((_ok_4057168 && (((_t_4057165.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4057403i32;
                    } else {
                        _gotoNext = 4057435i32;
                    };
                } else if (__value__ == (4057403i32)) {
                    _name = _t_4057165?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4056872i32;
                } else if (__value__ == (4057435i32)) {
                    if (_err_4057172 != null) {
                        _gotoNext = 4057449i32;
                    } else {
                        _gotoNext = 4057478i32;
                    };
                } else if (__value__ == (4057449i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4057172 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4057478i32;
                } else if (__value__ == (4057478i32)) {
                    if (_star_4056901) {
                        _gotoNext = 4057486i32;
                    } else {
                        _gotoNext = 4057901i32;
                    };
                } else if (__value__ == (4057486i32)) {
                    _i_4057557 = (0 : stdgo.GoInt);
                    _gotoNext = 4057553i32;
                } else if (__value__ == (4057553i32)) {
                    if (((_i_4057557 < (_name.length) : Bool) && (_name[(_i_4057557 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4057608i32;
                    } else {
                        _gotoNext = 4057901i32;
                    };
                } else if (__value__ == (4057604i32)) {
                    _i_4057557++;
                    _gotoNext = 4057553i32;
                } else if (__value__ == (4057608i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4056917?.__copy__(), (_name.__slice__((_i_4057557 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4057614 = __tmp__._0?.__copy__();
                        _ok_4057617 = __tmp__._1;
                        _err_4057621 = __tmp__._2;
                    };
                    if (_ok_4057617) {
                        _gotoNext = 4057668i32;
                    } else {
                        _gotoNext = 4057845i32;
                    };
                } else if (__value__ == (4057668i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4057614.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4057775i32;
                    } else {
                        _gotoNext = 4057804i32;
                    };
                } else if (__value__ == (4057775i32)) {
                    _i_4057557++;
                    _gotoNext = 4057553i32;
                } else if (__value__ == (4057804i32)) {
                    _name = _t_4057614?.__copy__();
                    _gotoNext = 4056872i32;
                } else if (__value__ == (4057845i32)) {
                    if (_err_4057621 != null) {
                        _gotoNext = 4057859i32;
                    } else {
                        _gotoNext = 4057604i32;
                    };
                } else if (__value__ == (4057859i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4057621 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4057604i32;
                } else if (__value__ == (4057901i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4056872i32;
                } else if (__value__ == (4057923i32)) {
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
