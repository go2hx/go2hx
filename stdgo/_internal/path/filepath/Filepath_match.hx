package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_4067809:Bool = false;
        var _i_4067749:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4067364:stdgo.Error = (null : stdgo.Error);
        var _ok_4067360:Bool = false;
        var _chunk_4067109:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_4067813:stdgo.Error = (null : stdgo.Error);
        var _t_4067806:stdgo.GoString = ("" : stdgo.GoString);
        var _t_4067357:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4067093:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4067054i32;
                } else if (__value__ == (4067054i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4067064i32;
                } else if (__value__ == (4067064i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4067085i32;
                    } else {
                        _gotoNext = 4068115i32;
                    };
                } else if (__value__ == (4067085i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_4067093 = @:tmpset0 __tmp__._0;
                        _chunk_4067109 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4067093 && (_chunk_4067109 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4067191i32;
                    } else {
                        _gotoNext = 4067357i32;
                    };
                } else if (__value__ == (4067191i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4067357i32;
                } else if (__value__ == (4067357i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4067109?.__copy__(), _name?.__copy__());
                        _t_4067357 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4067360 = @:tmpset0 __tmp__._1;
                        _err_4067364 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4067360 && (((_t_4067357.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4067595i32;
                    } else {
                        _gotoNext = 4067627i32;
                    };
                } else if (__value__ == (4067595i32)) {
                    _name = _t_4067357?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4067064i32;
                } else if (__value__ == (4067627i32)) {
                    if (_err_4067364 != null) {
                        _gotoNext = 4067641i32;
                    } else {
                        _gotoNext = 4067670i32;
                    };
                } else if (__value__ == (4067641i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4067364 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4067670i32;
                } else if (__value__ == (4067670i32)) {
                    if (_star_4067093) {
                        _gotoNext = 4067678i32;
                    } else {
                        _gotoNext = 4068093i32;
                    };
                } else if (__value__ == (4067678i32)) {
                    _i_4067749 = (0 : stdgo.GoInt);
                    _gotoNext = 4067745i32;
                } else if (__value__ == (4067745i32)) {
                    if (((_i_4067749 < (_name.length) : Bool) && (_name[(_i_4067749 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4067800i32;
                    } else {
                        _gotoNext = 4068093i32;
                    };
                } else if (__value__ == (4067796i32)) {
                    _i_4067749++;
                    _gotoNext = 4067745i32;
                } else if (__value__ == (4067800i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4067109?.__copy__(), (_name.__slice__((_i_4067749 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4067806 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4067809 = @:tmpset0 __tmp__._1;
                        _err_4067813 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4067809) {
                        _gotoNext = 4067860i32;
                    } else {
                        _gotoNext = 4068037i32;
                    };
                } else if (__value__ == (4067860i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4067806.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4067967i32;
                    } else {
                        _gotoNext = 4067996i32;
                    };
                } else if (__value__ == (4067967i32)) {
                    _i_4067749++;
                    _gotoNext = 4067745i32;
                } else if (__value__ == (4067996i32)) {
                    _name = _t_4067806?.__copy__();
                    _gotoNext = 4067064i32;
                } else if (__value__ == (4068037i32)) {
                    if (_err_4067813 != null) {
                        _gotoNext = 4068051i32;
                    } else {
                        _gotoNext = 4067796i32;
                    };
                } else if (__value__ == (4068051i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4067813 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4067796i32;
                } else if (__value__ == (4068093i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4067064i32;
                } else if (__value__ == (4068115i32)) {
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
