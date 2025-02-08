package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3966475:stdgo.Error = (null : stdgo.Error);
        var _star_3966204:Bool = false;
        var patternBreak = false;
        var _ok_3966920:Bool = false;
        var _i_3966860:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3966471:Bool = false;
        var _t_3966468:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3966220:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3966924:stdgo.Error = (null : stdgo.Error);
        var _t_3966917:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3966165i32;
                } else if (__value__ == (3966165i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3966175i32;
                } else if (__value__ == (3966175i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3966196i32;
                    } else {
                        _gotoNext = 3967226i32;
                    };
                } else if (__value__ == (3966196i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_3966204 = @:tmpset0 __tmp__._0;
                        _chunk_3966220 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3966204 && (_chunk_3966220 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3966302i32;
                    } else {
                        _gotoNext = 3966468i32;
                    };
                } else if (__value__ == (3966302i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3966468i32;
                } else if (__value__ == (3966468i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3966220?.__copy__(), _name?.__copy__());
                        _t_3966468 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3966471 = @:tmpset0 __tmp__._1;
                        _err_3966475 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3966471 && (((_t_3966468.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3966706i32;
                    } else {
                        _gotoNext = 3966738i32;
                    };
                } else if (__value__ == (3966706i32)) {
                    _name = _t_3966468?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3966175i32;
                } else if (__value__ == (3966738i32)) {
                    if (_err_3966475 != null) {
                        _gotoNext = 3966752i32;
                    } else {
                        _gotoNext = 3966781i32;
                    };
                } else if (__value__ == (3966752i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3966475 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3966781i32;
                } else if (__value__ == (3966781i32)) {
                    if (_star_3966204) {
                        _gotoNext = 3966789i32;
                    } else {
                        _gotoNext = 3967204i32;
                    };
                } else if (__value__ == (3966789i32)) {
                    _i_3966860 = (0 : stdgo.GoInt);
                    _gotoNext = 3966856i32;
                } else if (__value__ == (3966856i32)) {
                    if (((_i_3966860 < (_name.length) : Bool) && (_name[(_i_3966860 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3966911i32;
                    } else {
                        _gotoNext = 3967204i32;
                    };
                } else if (__value__ == (3966907i32)) {
                    _i_3966860++;
                    _gotoNext = 3966856i32;
                } else if (__value__ == (3966911i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3966220?.__copy__(), (_name.__slice__((_i_3966860 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3966917 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3966920 = @:tmpset0 __tmp__._1;
                        _err_3966924 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3966920) {
                        _gotoNext = 3966971i32;
                    } else {
                        _gotoNext = 3967148i32;
                    };
                } else if (__value__ == (3966971i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3966917.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3967078i32;
                    } else {
                        _gotoNext = 3967107i32;
                    };
                } else if (__value__ == (3967078i32)) {
                    _i_3966860++;
                    _gotoNext = 3966856i32;
                } else if (__value__ == (3967107i32)) {
                    _name = _t_3966917?.__copy__();
                    _gotoNext = 3966175i32;
                } else if (__value__ == (3967148i32)) {
                    if (_err_3966924 != null) {
                        _gotoNext = 3967162i32;
                    } else {
                        _gotoNext = 3966907i32;
                    };
                } else if (__value__ == (3967162i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3966924 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3966907i32;
                } else if (__value__ == (3967204i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3966175i32;
                } else if (__value__ == (3967226i32)) {
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
