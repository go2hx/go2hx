package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3968962:Bool = false;
        var _chunk_3968262:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3968246:Bool = false;
        var _err_3968517:stdgo.Error = (null : stdgo.Error);
        var _ok_3968513:Bool = false;
        var _t_3968510:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_3968966:stdgo.Error = (null : stdgo.Error);
        var _t_3968959:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3968902:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3968207i32;
                } else if (__value__ == (3968207i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3968217i32;
                } else if (__value__ == (3968217i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3968238i32;
                    } else {
                        _gotoNext = 3969268i32;
                    };
                } else if (__value__ == (3968238i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3968246 = __tmp__._0;
                        _chunk_3968262 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3968246 && (_chunk_3968262 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3968344i32;
                    } else {
                        _gotoNext = 3968510i32;
                    };
                } else if (__value__ == (3968344i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3968510i32;
                } else if (__value__ == (3968510i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3968262?.__copy__(), _name?.__copy__());
                        _t_3968510 = __tmp__._0?.__copy__();
                        _ok_3968513 = __tmp__._1;
                        _err_3968517 = __tmp__._2;
                    };
                    if ((_ok_3968513 && (((_t_3968510.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3968748i32;
                    } else {
                        _gotoNext = 3968780i32;
                    };
                } else if (__value__ == (3968748i32)) {
                    _name = _t_3968510?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3968217i32;
                } else if (__value__ == (3968780i32)) {
                    if (_err_3968517 != null) {
                        _gotoNext = 3968794i32;
                    } else {
                        _gotoNext = 3968823i32;
                    };
                } else if (__value__ == (3968794i32)) {
                    return { _0 : false, _1 : _err_3968517 };
                    _gotoNext = 3968823i32;
                } else if (__value__ == (3968823i32)) {
                    if (_star_3968246) {
                        _gotoNext = 3968831i32;
                    } else {
                        _gotoNext = 3969246i32;
                    };
                } else if (__value__ == (3968831i32)) {
                    _i_3968902 = (0 : stdgo.GoInt);
                    _gotoNext = 3968898i32;
                } else if (__value__ == (3968898i32)) {
                    if (((_i_3968902 < (_name.length) : Bool) && (_name[(_i_3968902 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3968953i32;
                    } else {
                        _gotoNext = 3969246i32;
                    };
                } else if (__value__ == (3968949i32)) {
                    _i_3968902++;
                    _gotoNext = 3968898i32;
                } else if (__value__ == (3968953i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3968262?.__copy__(), (_name.__slice__((_i_3968902 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3968959 = __tmp__._0?.__copy__();
                        _ok_3968962 = __tmp__._1;
                        _err_3968966 = __tmp__._2;
                    };
                    if (_ok_3968962) {
                        _gotoNext = 3969013i32;
                    } else {
                        _gotoNext = 3969190i32;
                    };
                } else if (__value__ == (3969013i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3968959.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3969120i32;
                    } else {
                        _gotoNext = 3969149i32;
                    };
                } else if (__value__ == (3969120i32)) {
                    _i_3968902++;
                    _gotoNext = 3968898i32;
                } else if (__value__ == (3969149i32)) {
                    _name = _t_3968959?.__copy__();
                    _gotoNext = 3968217i32;
                } else if (__value__ == (3969190i32)) {
                    if (_err_3968966 != null) {
                        _gotoNext = 3969204i32;
                    } else {
                        _gotoNext = 3968949i32;
                    };
                } else if (__value__ == (3969204i32)) {
                    return { _0 : false, _1 : _err_3968966 };
                    _gotoNext = 3968949i32;
                } else if (__value__ == (3969246i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3968217i32;
                } else if (__value__ == (3969268i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
