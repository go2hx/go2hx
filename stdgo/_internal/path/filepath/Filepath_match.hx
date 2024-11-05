package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3981158:stdgo.Error = (null : stdgo.Error);
        var _chunk_3980454:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3980438:Bool = false;
        var patternBreak = false;
        var _t_3981151:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3981094:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3980709:stdgo.Error = (null : stdgo.Error);
        var _ok_3980705:Bool = false;
        var _t_3980702:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3981154:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3980399i32;
                } else if (__value__ == (3980399i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3980409i32;
                } else if (__value__ == (3980409i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3980430i32;
                    } else {
                        _gotoNext = 3981460i32;
                    };
                } else if (__value__ == (3980430i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3980438 = __tmp__._0;
                        _chunk_3980454 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3980438 && (_chunk_3980454 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3980536i32;
                    } else {
                        _gotoNext = 3980702i32;
                    };
                } else if (__value__ == (3980536i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3980702i32;
                } else if (__value__ == (3980702i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3980454?.__copy__(), _name?.__copy__());
                        _t_3980702 = __tmp__._0?.__copy__();
                        _ok_3980705 = __tmp__._1;
                        _err_3980709 = __tmp__._2;
                    };
                    if ((_ok_3980705 && (((_t_3980702.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3980940i32;
                    } else {
                        _gotoNext = 3980972i32;
                    };
                } else if (__value__ == (3980940i32)) {
                    _name = _t_3980702?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3980409i32;
                } else if (__value__ == (3980972i32)) {
                    if (_err_3980709 != null) {
                        _gotoNext = 3980986i32;
                    } else {
                        _gotoNext = 3981015i32;
                    };
                } else if (__value__ == (3980986i32)) {
                    return { _0 : false, _1 : _err_3980709 };
                    _gotoNext = 3981015i32;
                } else if (__value__ == (3981015i32)) {
                    if (_star_3980438) {
                        _gotoNext = 3981023i32;
                    } else {
                        _gotoNext = 3981438i32;
                    };
                } else if (__value__ == (3981023i32)) {
                    _i_3981094 = (0 : stdgo.GoInt);
                    _gotoNext = 3981090i32;
                } else if (__value__ == (3981090i32)) {
                    if (((_i_3981094 < (_name.length) : Bool) && (_name[(_i_3981094 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3981145i32;
                    } else {
                        _gotoNext = 3981438i32;
                    };
                } else if (__value__ == (3981141i32)) {
                    _i_3981094++;
                    _gotoNext = 3981090i32;
                } else if (__value__ == (3981145i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3980454?.__copy__(), (_name.__slice__((_i_3981094 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3981151 = __tmp__._0?.__copy__();
                        _ok_3981154 = __tmp__._1;
                        _err_3981158 = __tmp__._2;
                    };
                    if (_ok_3981154) {
                        _gotoNext = 3981205i32;
                    } else {
                        _gotoNext = 3981382i32;
                    };
                } else if (__value__ == (3981205i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3981151.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3981312i32;
                    } else {
                        _gotoNext = 3981341i32;
                    };
                } else if (__value__ == (3981312i32)) {
                    _i_3981094++;
                    _gotoNext = 3981090i32;
                } else if (__value__ == (3981341i32)) {
                    _name = _t_3981151?.__copy__();
                    _gotoNext = 3980409i32;
                } else if (__value__ == (3981382i32)) {
                    if (_err_3981158 != null) {
                        _gotoNext = 3981396i32;
                    } else {
                        _gotoNext = 3981141i32;
                    };
                } else if (__value__ == (3981396i32)) {
                    return { _0 : false, _1 : _err_3981158 };
                    _gotoNext = 3981141i32;
                } else if (__value__ == (3981438i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3980409i32;
                } else if (__value__ == (3981460i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
