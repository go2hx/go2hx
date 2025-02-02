package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_3968709:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3969165:stdgo.Error = (null : stdgo.Error);
        var _ok_3969161:Bool = false;
        var _t_3969158:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3969101:stdgo.GoInt = (0 : stdgo.GoInt);
        var patternBreak = false;
        var _err_3968716:stdgo.Error = (null : stdgo.Error);
        var _ok_3968712:Bool = false;
        var _chunk_3968461:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3968445:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3968406i32;
                } else if (__value__ == (3968406i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3968416i32;
                } else if (__value__ == (3968416i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3968437i32;
                    } else {
                        _gotoNext = 3969467i32;
                    };
                } else if (__value__ == (3968437i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3968445 = @:tmpset0 __tmp__._0;
                        _chunk_3968461 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3968445 && (_chunk_3968461 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3968543i32;
                    } else {
                        _gotoNext = 3968709i32;
                    };
                } else if (__value__ == (3968543i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3968709i32;
                } else if (__value__ == (3968709i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3968461?.__copy__(), _name?.__copy__());
                        _t_3968709 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3968712 = @:tmpset0 __tmp__._1;
                        _err_3968716 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3968712 && (((_t_3968709.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3968947i32;
                    } else {
                        _gotoNext = 3968979i32;
                    };
                } else if (__value__ == (3968947i32)) {
                    _name = _t_3968709?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3968416i32;
                } else if (__value__ == (3968979i32)) {
                    if (_err_3968716 != null) {
                        _gotoNext = 3968993i32;
                    } else {
                        _gotoNext = 3969022i32;
                    };
                } else if (__value__ == (3968993i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3968716 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3969022i32;
                } else if (__value__ == (3969022i32)) {
                    if (_star_3968445) {
                        _gotoNext = 3969030i32;
                    } else {
                        _gotoNext = 3969445i32;
                    };
                } else if (__value__ == (3969030i32)) {
                    _i_3969101 = (0 : stdgo.GoInt);
                    _gotoNext = 3969097i32;
                } else if (__value__ == (3969097i32)) {
                    if (((_i_3969101 < (_name.length) : Bool) && (_name[(_i_3969101 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3969152i32;
                    } else {
                        _gotoNext = 3969445i32;
                    };
                } else if (__value__ == (3969148i32)) {
                    _i_3969101++;
                    _gotoNext = 3969097i32;
                } else if (__value__ == (3969152i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3968461?.__copy__(), (_name.__slice__((_i_3969101 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3969158 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3969161 = @:tmpset0 __tmp__._1;
                        _err_3969165 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3969161) {
                        _gotoNext = 3969212i32;
                    } else {
                        _gotoNext = 3969389i32;
                    };
                } else if (__value__ == (3969212i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3969158.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3969319i32;
                    } else {
                        _gotoNext = 3969348i32;
                    };
                } else if (__value__ == (3969319i32)) {
                    _i_3969101++;
                    _gotoNext = 3969097i32;
                } else if (__value__ == (3969348i32)) {
                    _name = _t_3969158?.__copy__();
                    _gotoNext = 3968416i32;
                } else if (__value__ == (3969389i32)) {
                    if (_err_3969165 != null) {
                        _gotoNext = 3969403i32;
                    } else {
                        _gotoNext = 3969148i32;
                    };
                } else if (__value__ == (3969403i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3969165 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3969148i32;
                } else if (__value__ == (3969445i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3968416i32;
                } else if (__value__ == (3969467i32)) {
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
