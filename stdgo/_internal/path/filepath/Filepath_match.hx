package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_4031594:Bool = false;
        var _star_4031327:Bool = false;
        var _i_4031983:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4031598:stdgo.Error = (null : stdgo.Error);
        var _t_4031591:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4031343:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_4032047:stdgo.Error = (null : stdgo.Error);
        var _ok_4032043:Bool = false;
        var _t_4032040:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4031288i32;
                } else if (__value__ == (4031288i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4031298i32;
                } else if (__value__ == (4031298i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4031319i32;
                    } else {
                        _gotoNext = 4032349i32;
                    };
                } else if (__value__ == (4031319i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4031327 = __tmp__._0;
                        _chunk_4031343 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4031327 && (_chunk_4031343 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4031425i32;
                    } else {
                        _gotoNext = 4031591i32;
                    };
                } else if (__value__ == (4031425i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4031591i32;
                } else if (__value__ == (4031591i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4031343?.__copy__(), _name?.__copy__());
                        _t_4031591 = __tmp__._0?.__copy__();
                        _ok_4031594 = __tmp__._1;
                        _err_4031598 = __tmp__._2;
                    };
                    if ((_ok_4031594 && (((_t_4031591.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4031829i32;
                    } else {
                        _gotoNext = 4031861i32;
                    };
                } else if (__value__ == (4031829i32)) {
                    _name = _t_4031591?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4031298i32;
                } else if (__value__ == (4031861i32)) {
                    if (_err_4031598 != null) {
                        _gotoNext = 4031875i32;
                    } else {
                        _gotoNext = 4031904i32;
                    };
                } else if (__value__ == (4031875i32)) {
                    return { _0 : false, _1 : _err_4031598 };
                    _gotoNext = 4031904i32;
                } else if (__value__ == (4031904i32)) {
                    if (_star_4031327) {
                        _gotoNext = 4031912i32;
                    } else {
                        _gotoNext = 4032327i32;
                    };
                } else if (__value__ == (4031912i32)) {
                    _i_4031983 = (0 : stdgo.GoInt);
                    _gotoNext = 4031979i32;
                } else if (__value__ == (4031979i32)) {
                    if (((_i_4031983 < (_name.length) : Bool) && (_name[(_i_4031983 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4032034i32;
                    } else {
                        _gotoNext = 4032327i32;
                    };
                } else if (__value__ == (4032030i32)) {
                    _i_4031983++;
                    _gotoNext = 4031979i32;
                } else if (__value__ == (4032034i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4031343?.__copy__(), (_name.__slice__((_i_4031983 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4032040 = __tmp__._0?.__copy__();
                        _ok_4032043 = __tmp__._1;
                        _err_4032047 = __tmp__._2;
                    };
                    if (_ok_4032043) {
                        _gotoNext = 4032094i32;
                    } else {
                        _gotoNext = 4032271i32;
                    };
                } else if (__value__ == (4032094i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4032040.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4032201i32;
                    } else {
                        _gotoNext = 4032230i32;
                    };
                } else if (__value__ == (4032201i32)) {
                    _i_4031983++;
                    _gotoNext = 4031979i32;
                } else if (__value__ == (4032230i32)) {
                    _name = _t_4032040?.__copy__();
                    _gotoNext = 4031298i32;
                } else if (__value__ == (4032271i32)) {
                    if (_err_4032047 != null) {
                        _gotoNext = 4032285i32;
                    } else {
                        _gotoNext = 4032030i32;
                    };
                } else if (__value__ == (4032285i32)) {
                    return { _0 : false, _1 : _err_4032047 };
                    _gotoNext = 4032030i32;
                } else if (__value__ == (4032327i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4031298i32;
                } else if (__value__ == (4032349i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
