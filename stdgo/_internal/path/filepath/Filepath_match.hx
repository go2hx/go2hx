package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_4046311:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4045926:stdgo.Error = (null : stdgo.Error);
        var _t_4045919:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4046375:stdgo.Error = (null : stdgo.Error);
        var _chunk_4045671:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4045655:Bool = false;
        var patternBreak = false;
        var _ok_4046371:Bool = false;
        var _t_4046368:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_4045922:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4045616i32;
                } else if (__value__ == (4045616i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4045626i32;
                } else if (__value__ == (4045626i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4045647i32;
                    } else {
                        _gotoNext = 4046677i32;
                    };
                } else if (__value__ == (4045647i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4045655 = @:tmpset0 __tmp__._0;
                        _chunk_4045671 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4045655 && (_chunk_4045671 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4045753i32;
                    } else {
                        _gotoNext = 4045919i32;
                    };
                } else if (__value__ == (4045753i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4045919i32;
                } else if (__value__ == (4045919i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4045671?.__copy__(), _name?.__copy__());
                        _t_4045919 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4045922 = @:tmpset0 __tmp__._1;
                        _err_4045926 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4045922 && (((_t_4045919.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4046157i32;
                    } else {
                        _gotoNext = 4046189i32;
                    };
                } else if (__value__ == (4046157i32)) {
                    _name = _t_4045919?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4045626i32;
                } else if (__value__ == (4046189i32)) {
                    if (_err_4045926 != null) {
                        _gotoNext = 4046203i32;
                    } else {
                        _gotoNext = 4046232i32;
                    };
                } else if (__value__ == (4046203i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4045926 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4046232i32;
                } else if (__value__ == (4046232i32)) {
                    if (_star_4045655) {
                        _gotoNext = 4046240i32;
                    } else {
                        _gotoNext = 4046655i32;
                    };
                } else if (__value__ == (4046240i32)) {
                    _i_4046311 = (0 : stdgo.GoInt);
                    _gotoNext = 4046307i32;
                } else if (__value__ == (4046307i32)) {
                    if (((_i_4046311 < (_name.length) : Bool) && (_name[(_i_4046311 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4046362i32;
                    } else {
                        _gotoNext = 4046655i32;
                    };
                } else if (__value__ == (4046358i32)) {
                    _i_4046311++;
                    _gotoNext = 4046307i32;
                } else if (__value__ == (4046362i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4045671?.__copy__(), (_name.__slice__((_i_4046311 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4046368 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4046371 = @:tmpset0 __tmp__._1;
                        _err_4046375 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4046371) {
                        _gotoNext = 4046422i32;
                    } else {
                        _gotoNext = 4046599i32;
                    };
                } else if (__value__ == (4046422i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4046368.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4046529i32;
                    } else {
                        _gotoNext = 4046558i32;
                    };
                } else if (__value__ == (4046529i32)) {
                    _i_4046311++;
                    _gotoNext = 4046307i32;
                } else if (__value__ == (4046558i32)) {
                    _name = _t_4046368?.__copy__();
                    _gotoNext = 4045626i32;
                } else if (__value__ == (4046599i32)) {
                    if (_err_4046375 != null) {
                        _gotoNext = 4046613i32;
                    } else {
                        _gotoNext = 4046358i32;
                    };
                } else if (__value__ == (4046613i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4046375 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4046358i32;
                } else if (__value__ == (4046655i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4045626i32;
                } else if (__value__ == (4046677i32)) {
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
