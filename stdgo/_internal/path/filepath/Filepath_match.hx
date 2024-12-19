package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_4043402:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4043345:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4042960:stdgo.Error = (null : stdgo.Error);
        var _ok_4042956:Bool = false;
        var _t_4042953:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4042689:Bool = false;
        var patternBreak = false;
        var _ok_4043405:Bool = false;
        var _err_4043409:stdgo.Error = (null : stdgo.Error);
        var _chunk_4042705:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4042650i32;
                } else if (__value__ == (4042650i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4042660i32;
                } else if (__value__ == (4042660i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4042681i32;
                    } else {
                        _gotoNext = 4043711i32;
                    };
                } else if (__value__ == (4042681i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4042689 = __tmp__._0;
                        _chunk_4042705 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4042689 && (_chunk_4042705 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4042787i32;
                    } else {
                        _gotoNext = 4042953i32;
                    };
                } else if (__value__ == (4042787i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4042953i32;
                } else if (__value__ == (4042953i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4042705?.__copy__(), _name?.__copy__());
                        _t_4042953 = __tmp__._0?.__copy__();
                        _ok_4042956 = __tmp__._1;
                        _err_4042960 = __tmp__._2;
                    };
                    if ((_ok_4042956 && (((_t_4042953.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4043191i32;
                    } else {
                        _gotoNext = 4043223i32;
                    };
                } else if (__value__ == (4043191i32)) {
                    _name = _t_4042953?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4042660i32;
                } else if (__value__ == (4043223i32)) {
                    if (_err_4042960 != null) {
                        _gotoNext = 4043237i32;
                    } else {
                        _gotoNext = 4043266i32;
                    };
                } else if (__value__ == (4043237i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4042960 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4043266i32;
                } else if (__value__ == (4043266i32)) {
                    if (_star_4042689) {
                        _gotoNext = 4043274i32;
                    } else {
                        _gotoNext = 4043689i32;
                    };
                } else if (__value__ == (4043274i32)) {
                    _i_4043345 = (0 : stdgo.GoInt);
                    _gotoNext = 4043341i32;
                } else if (__value__ == (4043341i32)) {
                    if (((_i_4043345 < (_name.length) : Bool) && (_name[(_i_4043345 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4043396i32;
                    } else {
                        _gotoNext = 4043689i32;
                    };
                } else if (__value__ == (4043392i32)) {
                    _i_4043345++;
                    _gotoNext = 4043341i32;
                } else if (__value__ == (4043396i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4042705?.__copy__(), (_name.__slice__((_i_4043345 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4043402 = __tmp__._0?.__copy__();
                        _ok_4043405 = __tmp__._1;
                        _err_4043409 = __tmp__._2;
                    };
                    if (_ok_4043405) {
                        _gotoNext = 4043456i32;
                    } else {
                        _gotoNext = 4043633i32;
                    };
                } else if (__value__ == (4043456i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4043402.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4043563i32;
                    } else {
                        _gotoNext = 4043592i32;
                    };
                } else if (__value__ == (4043563i32)) {
                    _i_4043345++;
                    _gotoNext = 4043341i32;
                } else if (__value__ == (4043592i32)) {
                    _name = _t_4043402?.__copy__();
                    _gotoNext = 4042660i32;
                } else if (__value__ == (4043633i32)) {
                    if (_err_4043409 != null) {
                        _gotoNext = 4043647i32;
                    } else {
                        _gotoNext = 4043392i32;
                    };
                } else if (__value__ == (4043647i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4043409 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4043392i32;
                } else if (__value__ == (4043689i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4042660i32;
                } else if (__value__ == (4043711i32)) {
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
