package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3943741:Bool = false;
        var _star_3943474:Bool = false;
        var patternBreak = false;
        var _err_3944194:stdgo.Error = (null : stdgo.Error);
        var _ok_3944190:Bool = false;
        var _t_3944187:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3944130:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3943745:stdgo.Error = (null : stdgo.Error);
        var _t_3943738:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3943490:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3943435i32;
                } else if (__value__ == (3943435i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3943445i32;
                } else if (__value__ == (3943445i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3943466i32;
                    } else {
                        _gotoNext = 3944496i32;
                    };
                } else if (__value__ == (3943466i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3943474 = __tmp__._0;
                        _chunk_3943490 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3943474 && (_chunk_3943490 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3943572i32;
                    } else {
                        _gotoNext = 3943738i32;
                    };
                } else if (__value__ == (3943572i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943738i32;
                } else if (__value__ == (3943738i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3943490?.__copy__(), _name?.__copy__());
                        _t_3943738 = __tmp__._0?.__copy__();
                        _ok_3943741 = __tmp__._1;
                        _err_3943745 = __tmp__._2;
                    };
                    if ((_ok_3943741 && (((_t_3943738.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3943976i32;
                    } else {
                        _gotoNext = 3944008i32;
                    };
                } else if (__value__ == (3943976i32)) {
                    _name = _t_3943738?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3943445i32;
                } else if (__value__ == (3944008i32)) {
                    if (_err_3943745 != null) {
                        _gotoNext = 3944022i32;
                    } else {
                        _gotoNext = 3944051i32;
                    };
                } else if (__value__ == (3944022i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3943745 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3944051i32;
                } else if (__value__ == (3944051i32)) {
                    if (_star_3943474) {
                        _gotoNext = 3944059i32;
                    } else {
                        _gotoNext = 3944474i32;
                    };
                } else if (__value__ == (3944059i32)) {
                    _i_3944130 = (0 : stdgo.GoInt);
                    _gotoNext = 3944126i32;
                } else if (__value__ == (3944126i32)) {
                    if (((_i_3944130 < (_name.length) : Bool) && (_name[(_i_3944130 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3944181i32;
                    } else {
                        _gotoNext = 3944474i32;
                    };
                } else if (__value__ == (3944177i32)) {
                    _i_3944130++;
                    _gotoNext = 3944126i32;
                } else if (__value__ == (3944181i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3943490?.__copy__(), (_name.__slice__((_i_3944130 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3944187 = __tmp__._0?.__copy__();
                        _ok_3944190 = __tmp__._1;
                        _err_3944194 = __tmp__._2;
                    };
                    if (_ok_3944190) {
                        _gotoNext = 3944241i32;
                    } else {
                        _gotoNext = 3944418i32;
                    };
                } else if (__value__ == (3944241i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3944187.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3944348i32;
                    } else {
                        _gotoNext = 3944377i32;
                    };
                } else if (__value__ == (3944348i32)) {
                    _i_3944130++;
                    _gotoNext = 3944126i32;
                } else if (__value__ == (3944377i32)) {
                    _name = _t_3944187?.__copy__();
                    _gotoNext = 3943445i32;
                } else if (__value__ == (3944418i32)) {
                    if (_err_3944194 != null) {
                        _gotoNext = 3944432i32;
                    } else {
                        _gotoNext = 3944177i32;
                    };
                } else if (__value__ == (3944432i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3944194 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3944177i32;
                } else if (__value__ == (3944474i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943445i32;
                } else if (__value__ == (3944496i32)) {
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
