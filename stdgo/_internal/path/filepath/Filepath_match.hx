package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4035358:stdgo.Error = (null : stdgo.Error);
        var _i_4035294:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4034909:stdgo.Error = (null : stdgo.Error);
        var _ok_4034905:Bool = false;
        var _chunk_4034654:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_4035354:Bool = false;
        var _t_4035351:stdgo.GoString = ("" : stdgo.GoString);
        var _t_4034902:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4034638:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4034599i32;
                } else if (__value__ == (4034599i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4034609i32;
                } else if (__value__ == (4034609i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4034630i32;
                    } else {
                        _gotoNext = 4035660i32;
                    };
                } else if (__value__ == (4034630i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_4034638 = @:tmpset0 __tmp__._0;
                        _chunk_4034654 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4034638 && (_chunk_4034654 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4034736i32;
                    } else {
                        _gotoNext = 4034902i32;
                    };
                } else if (__value__ == (4034736i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4034902i32;
                } else if (__value__ == (4034902i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4034654?.__copy__(), _name?.__copy__());
                        _t_4034902 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4034905 = @:tmpset0 __tmp__._1;
                        _err_4034909 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4034905 && (((_t_4034902.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4035140i32;
                    } else {
                        _gotoNext = 4035172i32;
                    };
                } else if (__value__ == (4035140i32)) {
                    _name = _t_4034902?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4034609i32;
                } else if (__value__ == (4035172i32)) {
                    if (_err_4034909 != null) {
                        _gotoNext = 4035186i32;
                    } else {
                        _gotoNext = 4035215i32;
                    };
                } else if (__value__ == (4035186i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4034909 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4035215i32;
                } else if (__value__ == (4035215i32)) {
                    if (_star_4034638) {
                        _gotoNext = 4035223i32;
                    } else {
                        _gotoNext = 4035638i32;
                    };
                } else if (__value__ == (4035223i32)) {
                    _i_4035294 = (0 : stdgo.GoInt);
                    _gotoNext = 4035290i32;
                } else if (__value__ == (4035290i32)) {
                    if (((_i_4035294 < (_name.length) : Bool) && (_name[(_i_4035294 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4035345i32;
                    } else {
                        _gotoNext = 4035638i32;
                    };
                } else if (__value__ == (4035341i32)) {
                    _i_4035294++;
                    _gotoNext = 4035290i32;
                } else if (__value__ == (4035345i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4034654?.__copy__(), (_name.__slice__((_i_4035294 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4035351 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4035354 = @:tmpset0 __tmp__._1;
                        _err_4035358 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4035354) {
                        _gotoNext = 4035405i32;
                    } else {
                        _gotoNext = 4035582i32;
                    };
                } else if (__value__ == (4035405i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4035351.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4035512i32;
                    } else {
                        _gotoNext = 4035541i32;
                    };
                } else if (__value__ == (4035512i32)) {
                    _i_4035294++;
                    _gotoNext = 4035290i32;
                } else if (__value__ == (4035541i32)) {
                    _name = _t_4035351?.__copy__();
                    _gotoNext = 4034609i32;
                } else if (__value__ == (4035582i32)) {
                    if (_err_4035358 != null) {
                        _gotoNext = 4035596i32;
                    } else {
                        _gotoNext = 4035341i32;
                    };
                } else if (__value__ == (4035596i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4035358 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4035341i32;
                } else if (__value__ == (4035638i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4034609i32;
                } else if (__value__ == (4035660i32)) {
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
