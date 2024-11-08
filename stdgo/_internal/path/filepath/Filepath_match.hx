package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3904062:Bool = false;
        var _t_3904059:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3904002:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_3903362:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3903346:Bool = false;
        var _err_3904066:stdgo.Error = (null : stdgo.Error);
        var _err_3903617:stdgo.Error = (null : stdgo.Error);
        var _ok_3903613:Bool = false;
        var _t_3903610:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3903307i32;
                } else if (__value__ == (3903307i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3903317i32;
                } else if (__value__ == (3903317i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3903338i32;
                    } else {
                        _gotoNext = 3904368i32;
                    };
                } else if (__value__ == (3903338i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3903346 = __tmp__._0;
                        _chunk_3903362 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3903346 && (_chunk_3903362 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3903444i32;
                    } else {
                        _gotoNext = 3903610i32;
                    };
                } else if (__value__ == (3903444i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3903610i32;
                } else if (__value__ == (3903610i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3903362?.__copy__(), _name?.__copy__());
                        _t_3903610 = __tmp__._0?.__copy__();
                        _ok_3903613 = __tmp__._1;
                        _err_3903617 = __tmp__._2;
                    };
                    if ((_ok_3903613 && (((_t_3903610.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3903848i32;
                    } else {
                        _gotoNext = 3903880i32;
                    };
                } else if (__value__ == (3903848i32)) {
                    _name = _t_3903610?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3903317i32;
                } else if (__value__ == (3903880i32)) {
                    if (_err_3903617 != null) {
                        _gotoNext = 3903894i32;
                    } else {
                        _gotoNext = 3903923i32;
                    };
                } else if (__value__ == (3903894i32)) {
                    return { _0 : false, _1 : _err_3903617 };
                    _gotoNext = 3903923i32;
                } else if (__value__ == (3903923i32)) {
                    if (_star_3903346) {
                        _gotoNext = 3903931i32;
                    } else {
                        _gotoNext = 3904346i32;
                    };
                } else if (__value__ == (3903931i32)) {
                    _i_3904002 = (0 : stdgo.GoInt);
                    _gotoNext = 3903998i32;
                } else if (__value__ == (3903998i32)) {
                    if (((_i_3904002 < (_name.length) : Bool) && (_name[(_i_3904002 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3904053i32;
                    } else {
                        _gotoNext = 3904346i32;
                    };
                } else if (__value__ == (3904049i32)) {
                    _i_3904002++;
                    _gotoNext = 3903998i32;
                } else if (__value__ == (3904053i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3903362?.__copy__(), (_name.__slice__((_i_3904002 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3904059 = __tmp__._0?.__copy__();
                        _ok_3904062 = __tmp__._1;
                        _err_3904066 = __tmp__._2;
                    };
                    if (_ok_3904062) {
                        _gotoNext = 3904113i32;
                    } else {
                        _gotoNext = 3904290i32;
                    };
                } else if (__value__ == (3904113i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3904059.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3904220i32;
                    } else {
                        _gotoNext = 3904249i32;
                    };
                } else if (__value__ == (3904220i32)) {
                    _i_3904002++;
                    _gotoNext = 3903998i32;
                } else if (__value__ == (3904249i32)) {
                    _name = _t_3904059?.__copy__();
                    _gotoNext = 3903317i32;
                } else if (__value__ == (3904290i32)) {
                    if (_err_3904066 != null) {
                        _gotoNext = 3904304i32;
                    } else {
                        _gotoNext = 3904049i32;
                    };
                } else if (__value__ == (3904304i32)) {
                    return { _0 : false, _1 : _err_3904066 };
                    _gotoNext = 3904049i32;
                } else if (__value__ == (3904346i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3903317i32;
                } else if (__value__ == (3904368i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
