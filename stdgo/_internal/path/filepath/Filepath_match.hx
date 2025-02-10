package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _err_3949343:stdgo.Error = (null : stdgo.Error);
        var _ok_3949339:Bool = false;
        var _t_3949336:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3948890:Bool = false;
        var _star_3948623:Bool = false;
        var _i_3949279:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3948894:stdgo.Error = (null : stdgo.Error);
        var _t_3948887:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3948639:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3948584i32;
                } else if (__value__ == (3948584i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3948594i32;
                } else if (__value__ == (3948594i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3948615i32;
                    } else {
                        _gotoNext = 3949645i32;
                    };
                } else if (__value__ == (3948615i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_3948623 = @:tmpset0 __tmp__._0;
                        _chunk_3948639 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3948623 && (_chunk_3948639 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3948721i32;
                    } else {
                        _gotoNext = 3948887i32;
                    };
                } else if (__value__ == (3948721i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3948887i32;
                } else if (__value__ == (3948887i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3948639?.__copy__(), _name?.__copy__());
                        _t_3948887 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3948890 = @:tmpset0 __tmp__._1;
                        _err_3948894 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3948890 && (((_t_3948887.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3949125i32;
                    } else {
                        _gotoNext = 3949157i32;
                    };
                } else if (__value__ == (3949125i32)) {
                    _name = _t_3948887?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3948594i32;
                } else if (__value__ == (3949157i32)) {
                    if (_err_3948894 != null) {
                        _gotoNext = 3949171i32;
                    } else {
                        _gotoNext = 3949200i32;
                    };
                } else if (__value__ == (3949171i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3948894 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3949200i32;
                } else if (__value__ == (3949200i32)) {
                    if (_star_3948623) {
                        _gotoNext = 3949208i32;
                    } else {
                        _gotoNext = 3949623i32;
                    };
                } else if (__value__ == (3949208i32)) {
                    _i_3949279 = (0 : stdgo.GoInt);
                    _gotoNext = 3949275i32;
                } else if (__value__ == (3949275i32)) {
                    if (((_i_3949279 < (_name.length) : Bool) && (_name[(_i_3949279 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3949330i32;
                    } else {
                        _gotoNext = 3949623i32;
                    };
                } else if (__value__ == (3949326i32)) {
                    _i_3949279++;
                    _gotoNext = 3949275i32;
                } else if (__value__ == (3949330i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3948639?.__copy__(), (_name.__slice__((_i_3949279 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3949336 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3949339 = @:tmpset0 __tmp__._1;
                        _err_3949343 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3949339) {
                        _gotoNext = 3949390i32;
                    } else {
                        _gotoNext = 3949567i32;
                    };
                } else if (__value__ == (3949390i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3949336.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3949497i32;
                    } else {
                        _gotoNext = 3949526i32;
                    };
                } else if (__value__ == (3949497i32)) {
                    _i_3949279++;
                    _gotoNext = 3949275i32;
                } else if (__value__ == (3949526i32)) {
                    _name = _t_3949336?.__copy__();
                    _gotoNext = 3948594i32;
                } else if (__value__ == (3949567i32)) {
                    if (_err_3949343 != null) {
                        _gotoNext = 3949581i32;
                    } else {
                        _gotoNext = 3949326i32;
                    };
                } else if (__value__ == (3949581i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3949343 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3949326i32;
                } else if (__value__ == (3949623i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3948594i32;
                } else if (__value__ == (3949645i32)) {
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
