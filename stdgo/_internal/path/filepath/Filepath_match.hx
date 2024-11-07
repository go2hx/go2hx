package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_4098760:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4098703:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4098318:stdgo.Error = (null : stdgo.Error);
        var _ok_4098314:Bool = false;
        var _ok_4098763:Bool = false;
        var _t_4098311:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4098063:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4098047:Bool = false;
        var patternBreak = false;
        var _err_4098767:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4098008i32;
                } else if (__value__ == (4098008i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4098018i32;
                } else if (__value__ == (4098018i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4098039i32;
                    } else {
                        _gotoNext = 4099069i32;
                    };
                } else if (__value__ == (4098039i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4098047 = __tmp__._0;
                        _chunk_4098063 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4098047 && (_chunk_4098063 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4098145i32;
                    } else {
                        _gotoNext = 4098311i32;
                    };
                } else if (__value__ == (4098145i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4098311i32;
                } else if (__value__ == (4098311i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4098063?.__copy__(), _name?.__copy__());
                        _t_4098311 = __tmp__._0?.__copy__();
                        _ok_4098314 = __tmp__._1;
                        _err_4098318 = __tmp__._2;
                    };
                    if ((_ok_4098314 && (((_t_4098311.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4098549i32;
                    } else {
                        _gotoNext = 4098581i32;
                    };
                } else if (__value__ == (4098549i32)) {
                    _name = _t_4098311?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4098018i32;
                } else if (__value__ == (4098581i32)) {
                    if (_err_4098318 != null) {
                        _gotoNext = 4098595i32;
                    } else {
                        _gotoNext = 4098624i32;
                    };
                } else if (__value__ == (4098595i32)) {
                    return { _0 : false, _1 : _err_4098318 };
                    _gotoNext = 4098624i32;
                } else if (__value__ == (4098624i32)) {
                    if (_star_4098047) {
                        _gotoNext = 4098632i32;
                    } else {
                        _gotoNext = 4099047i32;
                    };
                } else if (__value__ == (4098632i32)) {
                    _i_4098703 = (0 : stdgo.GoInt);
                    _gotoNext = 4098699i32;
                } else if (__value__ == (4098699i32)) {
                    if (((_i_4098703 < (_name.length) : Bool) && (_name[(_i_4098703 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4098754i32;
                    } else {
                        _gotoNext = 4099047i32;
                    };
                } else if (__value__ == (4098750i32)) {
                    _i_4098703++;
                    _gotoNext = 4098699i32;
                } else if (__value__ == (4098754i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4098063?.__copy__(), (_name.__slice__((_i_4098703 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4098760 = __tmp__._0?.__copy__();
                        _ok_4098763 = __tmp__._1;
                        _err_4098767 = __tmp__._2;
                    };
                    if (_ok_4098763) {
                        _gotoNext = 4098814i32;
                    } else {
                        _gotoNext = 4098991i32;
                    };
                } else if (__value__ == (4098814i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4098760.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4098921i32;
                    } else {
                        _gotoNext = 4098950i32;
                    };
                } else if (__value__ == (4098921i32)) {
                    _i_4098703++;
                    _gotoNext = 4098699i32;
                } else if (__value__ == (4098950i32)) {
                    _name = _t_4098760?.__copy__();
                    _gotoNext = 4098018i32;
                } else if (__value__ == (4098991i32)) {
                    if (_err_4098767 != null) {
                        _gotoNext = 4099005i32;
                    } else {
                        _gotoNext = 4098750i32;
                    };
                } else if (__value__ == (4099005i32)) {
                    return { _0 : false, _1 : _err_4098767 };
                    _gotoNext = 4098750i32;
                } else if (__value__ == (4099047i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4098018i32;
                } else if (__value__ == (4099069i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
