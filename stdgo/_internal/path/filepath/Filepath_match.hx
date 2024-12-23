package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_4054612:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4054348:Bool = false;
        var patternBreak = false;
        var _err_4055068:stdgo.Error = (null : stdgo.Error);
        var _ok_4055064:Bool = false;
        var _t_4055061:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4054619:stdgo.Error = (null : stdgo.Error);
        var _ok_4054615:Bool = false;
        var _i_4055004:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_4054364:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4054309i32;
                } else if (__value__ == (4054309i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4054319i32;
                } else if (__value__ == (4054319i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4054340i32;
                    } else {
                        _gotoNext = 4055370i32;
                    };
                } else if (__value__ == (4054340i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4054348 = __tmp__._0;
                        _chunk_4054364 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4054348 && (_chunk_4054364 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4054446i32;
                    } else {
                        _gotoNext = 4054612i32;
                    };
                } else if (__value__ == (4054446i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4054612i32;
                } else if (__value__ == (4054612i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4054364?.__copy__(), _name?.__copy__());
                        _t_4054612 = __tmp__._0?.__copy__();
                        _ok_4054615 = __tmp__._1;
                        _err_4054619 = __tmp__._2;
                    };
                    if ((_ok_4054615 && (((_t_4054612.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4054850i32;
                    } else {
                        _gotoNext = 4054882i32;
                    };
                } else if (__value__ == (4054850i32)) {
                    _name = _t_4054612?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4054319i32;
                } else if (__value__ == (4054882i32)) {
                    if (_err_4054619 != null) {
                        _gotoNext = 4054896i32;
                    } else {
                        _gotoNext = 4054925i32;
                    };
                } else if (__value__ == (4054896i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4054619 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4054925i32;
                } else if (__value__ == (4054925i32)) {
                    if (_star_4054348) {
                        _gotoNext = 4054933i32;
                    } else {
                        _gotoNext = 4055348i32;
                    };
                } else if (__value__ == (4054933i32)) {
                    _i_4055004 = (0 : stdgo.GoInt);
                    _gotoNext = 4055000i32;
                } else if (__value__ == (4055000i32)) {
                    if (((_i_4055004 < (_name.length) : Bool) && (_name[(_i_4055004 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4055055i32;
                    } else {
                        _gotoNext = 4055348i32;
                    };
                } else if (__value__ == (4055051i32)) {
                    _i_4055004++;
                    _gotoNext = 4055000i32;
                } else if (__value__ == (4055055i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4054364?.__copy__(), (_name.__slice__((_i_4055004 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4055061 = __tmp__._0?.__copy__();
                        _ok_4055064 = __tmp__._1;
                        _err_4055068 = __tmp__._2;
                    };
                    if (_ok_4055064) {
                        _gotoNext = 4055115i32;
                    } else {
                        _gotoNext = 4055292i32;
                    };
                } else if (__value__ == (4055115i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4055061.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4055222i32;
                    } else {
                        _gotoNext = 4055251i32;
                    };
                } else if (__value__ == (4055222i32)) {
                    _i_4055004++;
                    _gotoNext = 4055000i32;
                } else if (__value__ == (4055251i32)) {
                    _name = _t_4055061?.__copy__();
                    _gotoNext = 4054319i32;
                } else if (__value__ == (4055292i32)) {
                    if (_err_4055068 != null) {
                        _gotoNext = 4055306i32;
                    } else {
                        _gotoNext = 4055051i32;
                    };
                } else if (__value__ == (4055306i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4055068 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4055051i32;
                } else if (__value__ == (4055348i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4054319i32;
                } else if (__value__ == (4055370i32)) {
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
