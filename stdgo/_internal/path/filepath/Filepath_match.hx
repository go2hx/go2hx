package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_3893869:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3893480:Bool = false;
        var _t_3893477:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3893213:Bool = false;
        var patternBreak = false;
        var _err_3893933:stdgo.Error = (null : stdgo.Error);
        var _ok_3893929:Bool = false;
        var _t_3893926:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3893484:stdgo.Error = (null : stdgo.Error);
        var _chunk_3893229:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3893174i32;
                } else if (__value__ == (3893174i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3893184i32;
                } else if (__value__ == (3893184i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3893205i32;
                    } else {
                        _gotoNext = 3894235i32;
                    };
                } else if (__value__ == (3893205i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3893213 = __tmp__._0;
                        _chunk_3893229 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3893213 && (_chunk_3893229 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3893311i32;
                    } else {
                        _gotoNext = 3893477i32;
                    };
                } else if (__value__ == (3893311i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3893477i32;
                } else if (__value__ == (3893477i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3893229?.__copy__(), _name?.__copy__());
                        _t_3893477 = __tmp__._0?.__copy__();
                        _ok_3893480 = __tmp__._1;
                        _err_3893484 = __tmp__._2;
                    };
                    if ((_ok_3893480 && (((_t_3893477.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3893715i32;
                    } else {
                        _gotoNext = 3893747i32;
                    };
                } else if (__value__ == (3893715i32)) {
                    _name = _t_3893477?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3893184i32;
                } else if (__value__ == (3893747i32)) {
                    if (_err_3893484 != null) {
                        _gotoNext = 3893761i32;
                    } else {
                        _gotoNext = 3893790i32;
                    };
                } else if (__value__ == (3893761i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3893484 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3893790i32;
                } else if (__value__ == (3893790i32)) {
                    if (_star_3893213) {
                        _gotoNext = 3893798i32;
                    } else {
                        _gotoNext = 3894213i32;
                    };
                } else if (__value__ == (3893798i32)) {
                    _i_3893869 = (0 : stdgo.GoInt);
                    _gotoNext = 3893865i32;
                } else if (__value__ == (3893865i32)) {
                    if (((_i_3893869 < (_name.length) : Bool) && (_name[(_i_3893869 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3893920i32;
                    } else {
                        _gotoNext = 3894213i32;
                    };
                } else if (__value__ == (3893916i32)) {
                    _i_3893869++;
                    _gotoNext = 3893865i32;
                } else if (__value__ == (3893920i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3893229?.__copy__(), (_name.__slice__((_i_3893869 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3893926 = __tmp__._0?.__copy__();
                        _ok_3893929 = __tmp__._1;
                        _err_3893933 = __tmp__._2;
                    };
                    if (_ok_3893929) {
                        _gotoNext = 3893980i32;
                    } else {
                        _gotoNext = 3894157i32;
                    };
                } else if (__value__ == (3893980i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3893926.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3894087i32;
                    } else {
                        _gotoNext = 3894116i32;
                    };
                } else if (__value__ == (3894087i32)) {
                    _i_3893869++;
                    _gotoNext = 3893865i32;
                } else if (__value__ == (3894116i32)) {
                    _name = _t_3893926?.__copy__();
                    _gotoNext = 3893184i32;
                } else if (__value__ == (3894157i32)) {
                    if (_err_3893933 != null) {
                        _gotoNext = 3894171i32;
                    } else {
                        _gotoNext = 3893916i32;
                    };
                } else if (__value__ == (3894171i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3893933 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3893916i32;
                } else if (__value__ == (3894213i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3893184i32;
                } else if (__value__ == (3894235i32)) {
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
