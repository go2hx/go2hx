package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_4051500:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4051252:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4051236:Bool = false;
        var patternBreak = false;
        var _err_4051956:stdgo.Error = (null : stdgo.Error);
        var _ok_4051952:Bool = false;
        var _t_4051949:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4051892:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4051507:stdgo.Error = (null : stdgo.Error);
        var _ok_4051503:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4051197i32;
                } else if (__value__ == (4051197i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4051207i32;
                } else if (__value__ == (4051207i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4051228i32;
                    } else {
                        _gotoNext = 4052258i32;
                    };
                } else if (__value__ == (4051228i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4051236 = __tmp__._0;
                        _chunk_4051252 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4051236 && (_chunk_4051252 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4051334i32;
                    } else {
                        _gotoNext = 4051500i32;
                    };
                } else if (__value__ == (4051334i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4051500i32;
                } else if (__value__ == (4051500i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4051252?.__copy__(), _name?.__copy__());
                        _t_4051500 = __tmp__._0?.__copy__();
                        _ok_4051503 = __tmp__._1;
                        _err_4051507 = __tmp__._2;
                    };
                    if ((_ok_4051503 && (((_t_4051500.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4051738i32;
                    } else {
                        _gotoNext = 4051770i32;
                    };
                } else if (__value__ == (4051738i32)) {
                    _name = _t_4051500?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4051207i32;
                } else if (__value__ == (4051770i32)) {
                    if (_err_4051507 != null) {
                        _gotoNext = 4051784i32;
                    } else {
                        _gotoNext = 4051813i32;
                    };
                } else if (__value__ == (4051784i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4051507 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4051813i32;
                } else if (__value__ == (4051813i32)) {
                    if (_star_4051236) {
                        _gotoNext = 4051821i32;
                    } else {
                        _gotoNext = 4052236i32;
                    };
                } else if (__value__ == (4051821i32)) {
                    _i_4051892 = (0 : stdgo.GoInt);
                    _gotoNext = 4051888i32;
                } else if (__value__ == (4051888i32)) {
                    if (((_i_4051892 < (_name.length) : Bool) && (_name[(_i_4051892 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4051943i32;
                    } else {
                        _gotoNext = 4052236i32;
                    };
                } else if (__value__ == (4051939i32)) {
                    _i_4051892++;
                    _gotoNext = 4051888i32;
                } else if (__value__ == (4051943i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4051252?.__copy__(), (_name.__slice__((_i_4051892 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4051949 = __tmp__._0?.__copy__();
                        _ok_4051952 = __tmp__._1;
                        _err_4051956 = __tmp__._2;
                    };
                    if (_ok_4051952) {
                        _gotoNext = 4052003i32;
                    } else {
                        _gotoNext = 4052180i32;
                    };
                } else if (__value__ == (4052003i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4051949.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4052110i32;
                    } else {
                        _gotoNext = 4052139i32;
                    };
                } else if (__value__ == (4052110i32)) {
                    _i_4051892++;
                    _gotoNext = 4051888i32;
                } else if (__value__ == (4052139i32)) {
                    _name = _t_4051949?.__copy__();
                    _gotoNext = 4051207i32;
                } else if (__value__ == (4052180i32)) {
                    if (_err_4051956 != null) {
                        _gotoNext = 4052194i32;
                    } else {
                        _gotoNext = 4051939i32;
                    };
                } else if (__value__ == (4052194i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4051956 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4051939i32;
                } else if (__value__ == (4052236i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4051207i32;
                } else if (__value__ == (4052258i32)) {
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
