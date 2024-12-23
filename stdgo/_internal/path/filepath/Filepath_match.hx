package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4095178:stdgo.Error = (null : stdgo.Error);
        var _ok_4095174:Bool = false;
        var _t_4095171:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4094923:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4095627:stdgo.Error = (null : stdgo.Error);
        var _ok_4095623:Bool = false;
        var _t_4095620:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4095563:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_4094907:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4094868i32;
                } else if (__value__ == (4094868i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4094878i32;
                } else if (__value__ == (4094878i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4094899i32;
                    } else {
                        _gotoNext = 4095929i32;
                    };
                } else if (__value__ == (4094899i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4094907 = __tmp__._0;
                        _chunk_4094923 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4094907 && (_chunk_4094923 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4095005i32;
                    } else {
                        _gotoNext = 4095171i32;
                    };
                } else if (__value__ == (4095005i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4095171i32;
                } else if (__value__ == (4095171i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4094923?.__copy__(), _name?.__copy__());
                        _t_4095171 = __tmp__._0?.__copy__();
                        _ok_4095174 = __tmp__._1;
                        _err_4095178 = __tmp__._2;
                    };
                    if ((_ok_4095174 && (((_t_4095171.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4095409i32;
                    } else {
                        _gotoNext = 4095441i32;
                    };
                } else if (__value__ == (4095409i32)) {
                    _name = _t_4095171?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4094878i32;
                } else if (__value__ == (4095441i32)) {
                    if (_err_4095178 != null) {
                        _gotoNext = 4095455i32;
                    } else {
                        _gotoNext = 4095484i32;
                    };
                } else if (__value__ == (4095455i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4095178 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4095484i32;
                } else if (__value__ == (4095484i32)) {
                    if (_star_4094907) {
                        _gotoNext = 4095492i32;
                    } else {
                        _gotoNext = 4095907i32;
                    };
                } else if (__value__ == (4095492i32)) {
                    _i_4095563 = (0 : stdgo.GoInt);
                    _gotoNext = 4095559i32;
                } else if (__value__ == (4095559i32)) {
                    if (((_i_4095563 < (_name.length) : Bool) && (_name[(_i_4095563 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4095614i32;
                    } else {
                        _gotoNext = 4095907i32;
                    };
                } else if (__value__ == (4095610i32)) {
                    _i_4095563++;
                    _gotoNext = 4095559i32;
                } else if (__value__ == (4095614i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4094923?.__copy__(), (_name.__slice__((_i_4095563 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4095620 = __tmp__._0?.__copy__();
                        _ok_4095623 = __tmp__._1;
                        _err_4095627 = __tmp__._2;
                    };
                    if (_ok_4095623) {
                        _gotoNext = 4095674i32;
                    } else {
                        _gotoNext = 4095851i32;
                    };
                } else if (__value__ == (4095674i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4095620.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4095781i32;
                    } else {
                        _gotoNext = 4095810i32;
                    };
                } else if (__value__ == (4095781i32)) {
                    _i_4095563++;
                    _gotoNext = 4095559i32;
                } else if (__value__ == (4095810i32)) {
                    _name = _t_4095620?.__copy__();
                    _gotoNext = 4094878i32;
                } else if (__value__ == (4095851i32)) {
                    if (_err_4095627 != null) {
                        _gotoNext = 4095865i32;
                    } else {
                        _gotoNext = 4095610i32;
                    };
                } else if (__value__ == (4095865i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4095627 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4095610i32;
                } else if (__value__ == (4095907i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4094878i32;
                } else if (__value__ == (4095929i32)) {
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
