package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_4118582:Bool = false;
        var patternBreak = false;
        var _err_4119302:stdgo.Error = (null : stdgo.Error);
        var _ok_4119298:Bool = false;
        var _i_4119238:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_4118598:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_4118849:Bool = false;
        var _t_4118846:stdgo.GoString = ("" : stdgo.GoString);
        var _t_4119295:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4118853:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4118543i32;
                } else if (__value__ == (4118543i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4118553i32;
                } else if (__value__ == (4118553i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4118574i32;
                    } else {
                        _gotoNext = 4119604i32;
                    };
                } else if (__value__ == (4118574i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4118582 = __tmp__._0;
                        _chunk_4118598 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4118582 && (_chunk_4118598 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4118680i32;
                    } else {
                        _gotoNext = 4118846i32;
                    };
                } else if (__value__ == (4118680i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4118846i32;
                } else if (__value__ == (4118846i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4118598?.__copy__(), _name?.__copy__());
                        _t_4118846 = __tmp__._0?.__copy__();
                        _ok_4118849 = __tmp__._1;
                        _err_4118853 = __tmp__._2;
                    };
                    if ((_ok_4118849 && (((_t_4118846.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4119084i32;
                    } else {
                        _gotoNext = 4119116i32;
                    };
                } else if (__value__ == (4119084i32)) {
                    _name = _t_4118846?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4118553i32;
                } else if (__value__ == (4119116i32)) {
                    if (_err_4118853 != null) {
                        _gotoNext = 4119130i32;
                    } else {
                        _gotoNext = 4119159i32;
                    };
                } else if (__value__ == (4119130i32)) {
                    return { _0 : false, _1 : _err_4118853 };
                    _gotoNext = 4119159i32;
                } else if (__value__ == (4119159i32)) {
                    if (_star_4118582) {
                        _gotoNext = 4119167i32;
                    } else {
                        _gotoNext = 4119582i32;
                    };
                } else if (__value__ == (4119167i32)) {
                    _i_4119238 = (0 : stdgo.GoInt);
                    _gotoNext = 4119234i32;
                } else if (__value__ == (4119234i32)) {
                    if (((_i_4119238 < (_name.length) : Bool) && (_name[(_i_4119238 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4119289i32;
                    } else {
                        _gotoNext = 4119582i32;
                    };
                } else if (__value__ == (4119285i32)) {
                    _i_4119238++;
                    _gotoNext = 4119234i32;
                } else if (__value__ == (4119289i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4118598?.__copy__(), (_name.__slice__((_i_4119238 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4119295 = __tmp__._0?.__copy__();
                        _ok_4119298 = __tmp__._1;
                        _err_4119302 = __tmp__._2;
                    };
                    if (_ok_4119298) {
                        _gotoNext = 4119349i32;
                    } else {
                        _gotoNext = 4119526i32;
                    };
                } else if (__value__ == (4119349i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4119295.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4119456i32;
                    } else {
                        _gotoNext = 4119485i32;
                    };
                } else if (__value__ == (4119456i32)) {
                    _i_4119238++;
                    _gotoNext = 4119234i32;
                } else if (__value__ == (4119485i32)) {
                    _name = _t_4119295?.__copy__();
                    _gotoNext = 4118553i32;
                } else if (__value__ == (4119526i32)) {
                    if (_err_4119302 != null) {
                        _gotoNext = 4119540i32;
                    } else {
                        _gotoNext = 4119285i32;
                    };
                } else if (__value__ == (4119540i32)) {
                    return { _0 : false, _1 : _err_4119302 };
                    _gotoNext = 4119285i32;
                } else if (__value__ == (4119582i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4118553i32;
                } else if (__value__ == (4119604i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
