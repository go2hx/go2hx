package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4067724:stdgo.Error = (null : stdgo.Error);
        var _ok_4067720:Bool = false;
        var _t_4067717:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4067660:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4067275:stdgo.Error = (null : stdgo.Error);
        var _t_4067268:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4067020:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _ok_4067271:Bool = false;
        var _star_4067004:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4066965i32;
                } else if (__value__ == (4066965i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4066975i32;
                } else if (__value__ == (4066975i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4066996i32;
                    } else {
                        _gotoNext = 4068026i32;
                    };
                } else if (__value__ == (4066996i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4067004 = __tmp__._0;
                        _chunk_4067020 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4067004 && (_chunk_4067020 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4067102i32;
                    } else {
                        _gotoNext = 4067268i32;
                    };
                } else if (__value__ == (4067102i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4067268i32;
                } else if (__value__ == (4067268i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4067020?.__copy__(), _name?.__copy__());
                        _t_4067268 = __tmp__._0?.__copy__();
                        _ok_4067271 = __tmp__._1;
                        _err_4067275 = __tmp__._2;
                    };
                    if ((_ok_4067271 && (((_t_4067268.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4067506i32;
                    } else {
                        _gotoNext = 4067538i32;
                    };
                } else if (__value__ == (4067506i32)) {
                    _name = _t_4067268?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4066975i32;
                } else if (__value__ == (4067538i32)) {
                    if (_err_4067275 != null) {
                        _gotoNext = 4067552i32;
                    } else {
                        _gotoNext = 4067581i32;
                    };
                } else if (__value__ == (4067552i32)) {
                    return { _0 : false, _1 : _err_4067275 };
                    _gotoNext = 4067581i32;
                } else if (__value__ == (4067581i32)) {
                    if (_star_4067004) {
                        _gotoNext = 4067589i32;
                    } else {
                        _gotoNext = 4068004i32;
                    };
                } else if (__value__ == (4067589i32)) {
                    _i_4067660 = (0 : stdgo.GoInt);
                    _gotoNext = 4067656i32;
                } else if (__value__ == (4067656i32)) {
                    if (((_i_4067660 < (_name.length) : Bool) && (_name[(_i_4067660 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4067711i32;
                    } else {
                        _gotoNext = 4068004i32;
                    };
                } else if (__value__ == (4067707i32)) {
                    _i_4067660++;
                    _gotoNext = 4067656i32;
                } else if (__value__ == (4067711i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4067020?.__copy__(), (_name.__slice__((_i_4067660 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4067717 = __tmp__._0?.__copy__();
                        _ok_4067720 = __tmp__._1;
                        _err_4067724 = __tmp__._2;
                    };
                    if (_ok_4067720) {
                        _gotoNext = 4067771i32;
                    } else {
                        _gotoNext = 4067948i32;
                    };
                } else if (__value__ == (4067771i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4067717.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4067878i32;
                    } else {
                        _gotoNext = 4067907i32;
                    };
                } else if (__value__ == (4067878i32)) {
                    _i_4067660++;
                    _gotoNext = 4067656i32;
                } else if (__value__ == (4067907i32)) {
                    _name = _t_4067717?.__copy__();
                    _gotoNext = 4066975i32;
                } else if (__value__ == (4067948i32)) {
                    if (_err_4067724 != null) {
                        _gotoNext = 4067962i32;
                    } else {
                        _gotoNext = 4067707i32;
                    };
                } else if (__value__ == (4067962i32)) {
                    return { _0 : false, _1 : _err_4067724 };
                    _gotoNext = 4067707i32;
                } else if (__value__ == (4068004i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4066975i32;
                } else if (__value__ == (4068026i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
