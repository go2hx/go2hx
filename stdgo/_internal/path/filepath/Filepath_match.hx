package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4035655:stdgo.Error = (null : stdgo.Error);
        var _ok_4035651:Bool = false;
        var _t_4035648:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4035384:Bool = false;
        var patternBreak = false;
        var _err_4036104:stdgo.Error = (null : stdgo.Error);
        var _ok_4036100:Bool = false;
        var _t_4036097:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4036040:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_4035400:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4035345i32;
                } else if (__value__ == (4035345i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4035355i32;
                } else if (__value__ == (4035355i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4035376i32;
                    } else {
                        _gotoNext = 4036406i32;
                    };
                } else if (__value__ == (4035376i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4035384 = __tmp__._0;
                        _chunk_4035400 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4035384 && (_chunk_4035400 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4035482i32;
                    } else {
                        _gotoNext = 4035648i32;
                    };
                } else if (__value__ == (4035482i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4035648i32;
                } else if (__value__ == (4035648i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4035400?.__copy__(), _name?.__copy__());
                        _t_4035648 = __tmp__._0?.__copy__();
                        _ok_4035651 = __tmp__._1;
                        _err_4035655 = __tmp__._2;
                    };
                    if ((_ok_4035651 && (((_t_4035648.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4035886i32;
                    } else {
                        _gotoNext = 4035918i32;
                    };
                } else if (__value__ == (4035886i32)) {
                    _name = _t_4035648?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4035355i32;
                } else if (__value__ == (4035918i32)) {
                    if (_err_4035655 != null) {
                        _gotoNext = 4035932i32;
                    } else {
                        _gotoNext = 4035961i32;
                    };
                } else if (__value__ == (4035932i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4035655 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4035961i32;
                } else if (__value__ == (4035961i32)) {
                    if (_star_4035384) {
                        _gotoNext = 4035969i32;
                    } else {
                        _gotoNext = 4036384i32;
                    };
                } else if (__value__ == (4035969i32)) {
                    _i_4036040 = (0 : stdgo.GoInt);
                    _gotoNext = 4036036i32;
                } else if (__value__ == (4036036i32)) {
                    if (((_i_4036040 < (_name.length) : Bool) && (_name[(_i_4036040 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4036091i32;
                    } else {
                        _gotoNext = 4036384i32;
                    };
                } else if (__value__ == (4036087i32)) {
                    _i_4036040++;
                    _gotoNext = 4036036i32;
                } else if (__value__ == (4036091i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4035400?.__copy__(), (_name.__slice__((_i_4036040 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4036097 = __tmp__._0?.__copy__();
                        _ok_4036100 = __tmp__._1;
                        _err_4036104 = __tmp__._2;
                    };
                    if (_ok_4036100) {
                        _gotoNext = 4036151i32;
                    } else {
                        _gotoNext = 4036328i32;
                    };
                } else if (__value__ == (4036151i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4036097.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4036258i32;
                    } else {
                        _gotoNext = 4036287i32;
                    };
                } else if (__value__ == (4036258i32)) {
                    _i_4036040++;
                    _gotoNext = 4036036i32;
                } else if (__value__ == (4036287i32)) {
                    _name = _t_4036097?.__copy__();
                    _gotoNext = 4035355i32;
                } else if (__value__ == (4036328i32)) {
                    if (_err_4036104 != null) {
                        _gotoNext = 4036342i32;
                    } else {
                        _gotoNext = 4036087i32;
                    };
                } else if (__value__ == (4036342i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4036104 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4036087i32;
                } else if (__value__ == (4036384i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4035355i32;
                } else if (__value__ == (4036406i32)) {
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
