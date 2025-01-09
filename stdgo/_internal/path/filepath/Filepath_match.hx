package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_4053216:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4053159:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_4052770:Bool = false;
        var _chunk_4052519:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_4053223:stdgo.Error = (null : stdgo.Error);
        var _ok_4053219:Bool = false;
        var _err_4052774:stdgo.Error = (null : stdgo.Error);
        var _t_4052767:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4052503:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4052464i32;
                } else if (__value__ == (4052464i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4052474i32;
                } else if (__value__ == (4052474i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4052495i32;
                    } else {
                        _gotoNext = 4053525i32;
                    };
                } else if (__value__ == (4052495i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4052503 = __tmp__._0;
                        _chunk_4052519 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4052503 && (_chunk_4052519 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4052601i32;
                    } else {
                        _gotoNext = 4052767i32;
                    };
                } else if (__value__ == (4052601i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4052767i32;
                } else if (__value__ == (4052767i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4052519?.__copy__(), _name?.__copy__());
                        _t_4052767 = __tmp__._0?.__copy__();
                        _ok_4052770 = __tmp__._1;
                        _err_4052774 = __tmp__._2;
                    };
                    if ((_ok_4052770 && (((_t_4052767.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4053005i32;
                    } else {
                        _gotoNext = 4053037i32;
                    };
                } else if (__value__ == (4053005i32)) {
                    _name = _t_4052767?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4052474i32;
                } else if (__value__ == (4053037i32)) {
                    if (_err_4052774 != null) {
                        _gotoNext = 4053051i32;
                    } else {
                        _gotoNext = 4053080i32;
                    };
                } else if (__value__ == (4053051i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4052774 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4053080i32;
                } else if (__value__ == (4053080i32)) {
                    if (_star_4052503) {
                        _gotoNext = 4053088i32;
                    } else {
                        _gotoNext = 4053503i32;
                    };
                } else if (__value__ == (4053088i32)) {
                    _i_4053159 = (0 : stdgo.GoInt);
                    _gotoNext = 4053155i32;
                } else if (__value__ == (4053155i32)) {
                    if (((_i_4053159 < (_name.length) : Bool) && (_name[(_i_4053159 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4053210i32;
                    } else {
                        _gotoNext = 4053503i32;
                    };
                } else if (__value__ == (4053206i32)) {
                    _i_4053159++;
                    _gotoNext = 4053155i32;
                } else if (__value__ == (4053210i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4052519?.__copy__(), (_name.__slice__((_i_4053159 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4053216 = __tmp__._0?.__copy__();
                        _ok_4053219 = __tmp__._1;
                        _err_4053223 = __tmp__._2;
                    };
                    if (_ok_4053219) {
                        _gotoNext = 4053270i32;
                    } else {
                        _gotoNext = 4053447i32;
                    };
                } else if (__value__ == (4053270i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4053216.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4053377i32;
                    } else {
                        _gotoNext = 4053406i32;
                    };
                } else if (__value__ == (4053377i32)) {
                    _i_4053159++;
                    _gotoNext = 4053155i32;
                } else if (__value__ == (4053406i32)) {
                    _name = _t_4053216?.__copy__();
                    _gotoNext = 4052474i32;
                } else if (__value__ == (4053447i32)) {
                    if (_err_4053223 != null) {
                        _gotoNext = 4053461i32;
                    } else {
                        _gotoNext = 4053206i32;
                    };
                } else if (__value__ == (4053461i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4053223 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4053206i32;
                } else if (__value__ == (4053503i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4052474i32;
                } else if (__value__ == (4053525i32)) {
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
