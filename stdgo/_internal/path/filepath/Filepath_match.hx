package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_3984321:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3984264:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_3983608:Bool = false;
        var patternBreak = false;
        var _err_3984328:stdgo.Error = (null : stdgo.Error);
        var _ok_3984324:Bool = false;
        var _err_3983879:stdgo.Error = (null : stdgo.Error);
        var _ok_3983875:Bool = false;
        var _t_3983872:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3983624:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3983569i32;
                } else if (__value__ == (3983569i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3983579i32;
                } else if (__value__ == (3983579i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3983600i32;
                    } else {
                        _gotoNext = 3984630i32;
                    };
                } else if (__value__ == (3983600i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3983608 = __tmp__._0;
                        _chunk_3983624 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3983608 && (_chunk_3983624 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3983706i32;
                    } else {
                        _gotoNext = 3983872i32;
                    };
                } else if (__value__ == (3983706i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3983872i32;
                } else if (__value__ == (3983872i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3983624?.__copy__(), _name?.__copy__());
                        _t_3983872 = __tmp__._0?.__copy__();
                        _ok_3983875 = __tmp__._1;
                        _err_3983879 = __tmp__._2;
                    };
                    if ((_ok_3983875 && (((_t_3983872.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3984110i32;
                    } else {
                        _gotoNext = 3984142i32;
                    };
                } else if (__value__ == (3984110i32)) {
                    _name = _t_3983872?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3983579i32;
                } else if (__value__ == (3984142i32)) {
                    if (_err_3983879 != null) {
                        _gotoNext = 3984156i32;
                    } else {
                        _gotoNext = 3984185i32;
                    };
                } else if (__value__ == (3984156i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3983879 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3984185i32;
                } else if (__value__ == (3984185i32)) {
                    if (_star_3983608) {
                        _gotoNext = 3984193i32;
                    } else {
                        _gotoNext = 3984608i32;
                    };
                } else if (__value__ == (3984193i32)) {
                    _i_3984264 = (0 : stdgo.GoInt);
                    _gotoNext = 3984260i32;
                } else if (__value__ == (3984260i32)) {
                    if (((_i_3984264 < (_name.length) : Bool) && (_name[(_i_3984264 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3984315i32;
                    } else {
                        _gotoNext = 3984608i32;
                    };
                } else if (__value__ == (3984311i32)) {
                    _i_3984264++;
                    _gotoNext = 3984260i32;
                } else if (__value__ == (3984315i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3983624?.__copy__(), (_name.__slice__((_i_3984264 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3984321 = __tmp__._0?.__copy__();
                        _ok_3984324 = __tmp__._1;
                        _err_3984328 = __tmp__._2;
                    };
                    if (_ok_3984324) {
                        _gotoNext = 3984375i32;
                    } else {
                        _gotoNext = 3984552i32;
                    };
                } else if (__value__ == (3984375i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3984321.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3984482i32;
                    } else {
                        _gotoNext = 3984511i32;
                    };
                } else if (__value__ == (3984482i32)) {
                    _i_3984264++;
                    _gotoNext = 3984260i32;
                } else if (__value__ == (3984511i32)) {
                    _name = _t_3984321?.__copy__();
                    _gotoNext = 3983579i32;
                } else if (__value__ == (3984552i32)) {
                    if (_err_3984328 != null) {
                        _gotoNext = 3984566i32;
                    } else {
                        _gotoNext = 3984311i32;
                    };
                } else if (__value__ == (3984566i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3984328 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3984311i32;
                } else if (__value__ == (3984608i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3983579i32;
                } else if (__value__ == (3984630i32)) {
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
