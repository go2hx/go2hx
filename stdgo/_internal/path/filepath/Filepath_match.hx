package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4023643:stdgo.Error = (null : stdgo.Error);
        var _i_4023579:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_4022923:Bool = false;
        var patternBreak = false;
        var _ok_4023639:Bool = false;
        var _t_4023636:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4023194:stdgo.Error = (null : stdgo.Error);
        var _ok_4023190:Bool = false;
        var _t_4023187:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4022939:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4022884i32;
                } else if (__value__ == (4022884i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4022894i32;
                } else if (__value__ == (4022894i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4022915i32;
                    } else {
                        _gotoNext = 4023945i32;
                    };
                } else if (__value__ == (4022915i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4022923 = __tmp__._0;
                        _chunk_4022939 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4022923 && (_chunk_4022939 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4023021i32;
                    } else {
                        _gotoNext = 4023187i32;
                    };
                } else if (__value__ == (4023021i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4023187i32;
                } else if (__value__ == (4023187i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4022939?.__copy__(), _name?.__copy__());
                        _t_4023187 = __tmp__._0?.__copy__();
                        _ok_4023190 = __tmp__._1;
                        _err_4023194 = __tmp__._2;
                    };
                    if ((_ok_4023190 && (((_t_4023187.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4023425i32;
                    } else {
                        _gotoNext = 4023457i32;
                    };
                } else if (__value__ == (4023425i32)) {
                    _name = _t_4023187?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4022894i32;
                } else if (__value__ == (4023457i32)) {
                    if (_err_4023194 != null) {
                        _gotoNext = 4023471i32;
                    } else {
                        _gotoNext = 4023500i32;
                    };
                } else if (__value__ == (4023471i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4023194 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4023500i32;
                } else if (__value__ == (4023500i32)) {
                    if (_star_4022923) {
                        _gotoNext = 4023508i32;
                    } else {
                        _gotoNext = 4023923i32;
                    };
                } else if (__value__ == (4023508i32)) {
                    _i_4023579 = (0 : stdgo.GoInt);
                    _gotoNext = 4023575i32;
                } else if (__value__ == (4023575i32)) {
                    if (((_i_4023579 < (_name.length) : Bool) && (_name[(_i_4023579 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4023630i32;
                    } else {
                        _gotoNext = 4023923i32;
                    };
                } else if (__value__ == (4023626i32)) {
                    _i_4023579++;
                    _gotoNext = 4023575i32;
                } else if (__value__ == (4023630i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4022939?.__copy__(), (_name.__slice__((_i_4023579 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4023636 = __tmp__._0?.__copy__();
                        _ok_4023639 = __tmp__._1;
                        _err_4023643 = __tmp__._2;
                    };
                    if (_ok_4023639) {
                        _gotoNext = 4023690i32;
                    } else {
                        _gotoNext = 4023867i32;
                    };
                } else if (__value__ == (4023690i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4023636.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4023797i32;
                    } else {
                        _gotoNext = 4023826i32;
                    };
                } else if (__value__ == (4023797i32)) {
                    _i_4023579++;
                    _gotoNext = 4023575i32;
                } else if (__value__ == (4023826i32)) {
                    _name = _t_4023636?.__copy__();
                    _gotoNext = 4022894i32;
                } else if (__value__ == (4023867i32)) {
                    if (_err_4023643 != null) {
                        _gotoNext = 4023881i32;
                    } else {
                        _gotoNext = 4023626i32;
                    };
                } else if (__value__ == (4023881i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4023643 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4023626i32;
                } else if (__value__ == (4023923i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4022894i32;
                } else if (__value__ == (4023945i32)) {
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
