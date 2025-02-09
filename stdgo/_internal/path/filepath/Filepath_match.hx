package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3974387:Bool = false;
        var _err_3973942:stdgo.Error = (null : stdgo.Error);
        var _t_3973935:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3973687:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3973671:Bool = false;
        var patternBreak = false;
        var _err_3974391:stdgo.Error = (null : stdgo.Error);
        var _t_3974384:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3974327:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3973938:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3973632i32;
                } else if (__value__ == (3973632i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3973642i32;
                } else if (__value__ == (3973642i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3973663i32;
                    } else {
                        _gotoNext = 3974693i32;
                    };
                } else if (__value__ == (3973663i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_3973671 = @:tmpset0 __tmp__._0;
                        _chunk_3973687 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3973671 && (_chunk_3973687 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3973769i32;
                    } else {
                        _gotoNext = 3973935i32;
                    };
                } else if (__value__ == (3973769i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3973935i32;
                } else if (__value__ == (3973935i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3973687?.__copy__(), _name?.__copy__());
                        _t_3973935 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3973938 = @:tmpset0 __tmp__._1;
                        _err_3973942 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3973938 && (((_t_3973935.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3974173i32;
                    } else {
                        _gotoNext = 3974205i32;
                    };
                } else if (__value__ == (3974173i32)) {
                    _name = _t_3973935?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3973642i32;
                } else if (__value__ == (3974205i32)) {
                    if (_err_3973942 != null) {
                        _gotoNext = 3974219i32;
                    } else {
                        _gotoNext = 3974248i32;
                    };
                } else if (__value__ == (3974219i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3973942 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3974248i32;
                } else if (__value__ == (3974248i32)) {
                    if (_star_3973671) {
                        _gotoNext = 3974256i32;
                    } else {
                        _gotoNext = 3974671i32;
                    };
                } else if (__value__ == (3974256i32)) {
                    _i_3974327 = (0 : stdgo.GoInt);
                    _gotoNext = 3974323i32;
                } else if (__value__ == (3974323i32)) {
                    if (((_i_3974327 < (_name.length) : Bool) && (_name[(_i_3974327 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3974378i32;
                    } else {
                        _gotoNext = 3974671i32;
                    };
                } else if (__value__ == (3974374i32)) {
                    _i_3974327++;
                    _gotoNext = 3974323i32;
                } else if (__value__ == (3974378i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3973687?.__copy__(), (_name.__slice__((_i_3974327 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3974384 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3974387 = @:tmpset0 __tmp__._1;
                        _err_3974391 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3974387) {
                        _gotoNext = 3974438i32;
                    } else {
                        _gotoNext = 3974615i32;
                    };
                } else if (__value__ == (3974438i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3974384.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3974545i32;
                    } else {
                        _gotoNext = 3974574i32;
                    };
                } else if (__value__ == (3974545i32)) {
                    _i_3974327++;
                    _gotoNext = 3974323i32;
                } else if (__value__ == (3974574i32)) {
                    _name = _t_3974384?.__copy__();
                    _gotoNext = 3973642i32;
                } else if (__value__ == (3974615i32)) {
                    if (_err_3974391 != null) {
                        _gotoNext = 3974629i32;
                    } else {
                        _gotoNext = 3974374i32;
                    };
                } else if (__value__ == (3974629i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3974391 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3974374i32;
                } else if (__value__ == (3974671i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3973642i32;
                } else if (__value__ == (3974693i32)) {
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
