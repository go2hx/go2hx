package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4031817:stdgo.Error = (null : stdgo.Error);
        var _ok_4031813:Bool = false;
        var _i_4031753:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4031368:stdgo.Error = (null : stdgo.Error);
        var _ok_4031364:Bool = false;
        var patternBreak = false;
        var _t_4031810:stdgo.GoString = ("" : stdgo.GoString);
        var _t_4031361:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4031113:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4031097:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4031058i32;
                } else if (__value__ == (4031058i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4031068i32;
                } else if (__value__ == (4031068i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4031089i32;
                    } else {
                        _gotoNext = 4032119i32;
                    };
                } else if (__value__ == (4031089i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4031097 = __tmp__._0;
                        _chunk_4031113 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4031097 && (_chunk_4031113 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4031195i32;
                    } else {
                        _gotoNext = 4031361i32;
                    };
                } else if (__value__ == (4031195i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4031361i32;
                } else if (__value__ == (4031361i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4031113?.__copy__(), _name?.__copy__());
                        _t_4031361 = __tmp__._0?.__copy__();
                        _ok_4031364 = __tmp__._1;
                        _err_4031368 = __tmp__._2;
                    };
                    if ((_ok_4031364 && (((_t_4031361.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4031599i32;
                    } else {
                        _gotoNext = 4031631i32;
                    };
                } else if (__value__ == (4031599i32)) {
                    _name = _t_4031361?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4031068i32;
                } else if (__value__ == (4031631i32)) {
                    if (_err_4031368 != null) {
                        _gotoNext = 4031645i32;
                    } else {
                        _gotoNext = 4031674i32;
                    };
                } else if (__value__ == (4031645i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4031368 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4031674i32;
                } else if (__value__ == (4031674i32)) {
                    if (_star_4031097) {
                        _gotoNext = 4031682i32;
                    } else {
                        _gotoNext = 4032097i32;
                    };
                } else if (__value__ == (4031682i32)) {
                    _i_4031753 = (0 : stdgo.GoInt);
                    _gotoNext = 4031749i32;
                } else if (__value__ == (4031749i32)) {
                    if (((_i_4031753 < (_name.length) : Bool) && (_name[(_i_4031753 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4031804i32;
                    } else {
                        _gotoNext = 4032097i32;
                    };
                } else if (__value__ == (4031800i32)) {
                    _i_4031753++;
                    _gotoNext = 4031749i32;
                } else if (__value__ == (4031804i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4031113?.__copy__(), (_name.__slice__((_i_4031753 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4031810 = __tmp__._0?.__copy__();
                        _ok_4031813 = __tmp__._1;
                        _err_4031817 = __tmp__._2;
                    };
                    if (_ok_4031813) {
                        _gotoNext = 4031864i32;
                    } else {
                        _gotoNext = 4032041i32;
                    };
                } else if (__value__ == (4031864i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4031810.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4031971i32;
                    } else {
                        _gotoNext = 4032000i32;
                    };
                } else if (__value__ == (4031971i32)) {
                    _i_4031753++;
                    _gotoNext = 4031749i32;
                } else if (__value__ == (4032000i32)) {
                    _name = _t_4031810?.__copy__();
                    _gotoNext = 4031068i32;
                } else if (__value__ == (4032041i32)) {
                    if (_err_4031817 != null) {
                        _gotoNext = 4032055i32;
                    } else {
                        _gotoNext = 4031800i32;
                    };
                } else if (__value__ == (4032055i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4031817 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4031800i32;
                } else if (__value__ == (4032097i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4031068i32;
                } else if (__value__ == (4032119i32)) {
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
