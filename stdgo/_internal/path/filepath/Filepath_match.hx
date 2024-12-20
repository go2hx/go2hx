package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_3964384:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3964327:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_3963671:Bool = false;
        var _err_3964391:stdgo.Error = (null : stdgo.Error);
        var _ok_3964387:Bool = false;
        var _err_3963942:stdgo.Error = (null : stdgo.Error);
        var _ok_3963938:Bool = false;
        var _t_3963935:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3963687:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3963632i32;
                } else if (__value__ == (3963632i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3963642i32;
                } else if (__value__ == (3963642i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3963663i32;
                    } else {
                        _gotoNext = 3964693i32;
                    };
                } else if (__value__ == (3963663i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3963671 = __tmp__._0;
                        _chunk_3963687 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3963671 && (_chunk_3963687 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3963769i32;
                    } else {
                        _gotoNext = 3963935i32;
                    };
                } else if (__value__ == (3963769i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3963935i32;
                } else if (__value__ == (3963935i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3963687?.__copy__(), _name?.__copy__());
                        _t_3963935 = __tmp__._0?.__copy__();
                        _ok_3963938 = __tmp__._1;
                        _err_3963942 = __tmp__._2;
                    };
                    if ((_ok_3963938 && (((_t_3963935.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3964173i32;
                    } else {
                        _gotoNext = 3964205i32;
                    };
                } else if (__value__ == (3964173i32)) {
                    _name = _t_3963935?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3963642i32;
                } else if (__value__ == (3964205i32)) {
                    if (_err_3963942 != null) {
                        _gotoNext = 3964219i32;
                    } else {
                        _gotoNext = 3964248i32;
                    };
                } else if (__value__ == (3964219i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3963942 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3964248i32;
                } else if (__value__ == (3964248i32)) {
                    if (_star_3963671) {
                        _gotoNext = 3964256i32;
                    } else {
                        _gotoNext = 3964671i32;
                    };
                } else if (__value__ == (3964256i32)) {
                    _i_3964327 = (0 : stdgo.GoInt);
                    _gotoNext = 3964323i32;
                } else if (__value__ == (3964323i32)) {
                    if (((_i_3964327 < (_name.length) : Bool) && (_name[(_i_3964327 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3964378i32;
                    } else {
                        _gotoNext = 3964671i32;
                    };
                } else if (__value__ == (3964374i32)) {
                    _i_3964327++;
                    _gotoNext = 3964323i32;
                } else if (__value__ == (3964378i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3963687?.__copy__(), (_name.__slice__((_i_3964327 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3964384 = __tmp__._0?.__copy__();
                        _ok_3964387 = __tmp__._1;
                        _err_3964391 = __tmp__._2;
                    };
                    if (_ok_3964387) {
                        _gotoNext = 3964438i32;
                    } else {
                        _gotoNext = 3964615i32;
                    };
                } else if (__value__ == (3964438i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3964384.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3964545i32;
                    } else {
                        _gotoNext = 3964574i32;
                    };
                } else if (__value__ == (3964545i32)) {
                    _i_3964327++;
                    _gotoNext = 3964323i32;
                } else if (__value__ == (3964574i32)) {
                    _name = _t_3964384?.__copy__();
                    _gotoNext = 3963642i32;
                } else if (__value__ == (3964615i32)) {
                    if (_err_3964391 != null) {
                        _gotoNext = 3964629i32;
                    } else {
                        _gotoNext = 3964374i32;
                    };
                } else if (__value__ == (3964629i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3964391 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3964374i32;
                } else if (__value__ == (3964671i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3963642i32;
                } else if (__value__ == (3964693i32)) {
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
