package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_4037559:Bool = false;
        var _star_4036843:Bool = false;
        var patternBreak = false;
        var _err_4037114:stdgo.Error = (null : stdgo.Error);
        var _ok_4037110:Bool = false;
        var _t_4037107:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4036859:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4037563:stdgo.Error = (null : stdgo.Error);
        var _t_4037556:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4037499:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4036804i32;
                } else if (__value__ == (4036804i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4036814i32;
                } else if (__value__ == (4036814i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4036835i32;
                    } else {
                        _gotoNext = 4037865i32;
                    };
                } else if (__value__ == (4036835i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4036843 = __tmp__._0;
                        _chunk_4036859 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4036843 && (_chunk_4036859 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4036941i32;
                    } else {
                        _gotoNext = 4037107i32;
                    };
                } else if (__value__ == (4036941i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4037107i32;
                } else if (__value__ == (4037107i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4036859?.__copy__(), _name?.__copy__());
                        _t_4037107 = __tmp__._0?.__copy__();
                        _ok_4037110 = __tmp__._1;
                        _err_4037114 = __tmp__._2;
                    };
                    if ((_ok_4037110 && (((_t_4037107.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4037345i32;
                    } else {
                        _gotoNext = 4037377i32;
                    };
                } else if (__value__ == (4037345i32)) {
                    _name = _t_4037107?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4036814i32;
                } else if (__value__ == (4037377i32)) {
                    if (_err_4037114 != null) {
                        _gotoNext = 4037391i32;
                    } else {
                        _gotoNext = 4037420i32;
                    };
                } else if (__value__ == (4037391i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4037114 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4037420i32;
                } else if (__value__ == (4037420i32)) {
                    if (_star_4036843) {
                        _gotoNext = 4037428i32;
                    } else {
                        _gotoNext = 4037843i32;
                    };
                } else if (__value__ == (4037428i32)) {
                    _i_4037499 = (0 : stdgo.GoInt);
                    _gotoNext = 4037495i32;
                } else if (__value__ == (4037495i32)) {
                    if (((_i_4037499 < (_name.length) : Bool) && (_name[(_i_4037499 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4037550i32;
                    } else {
                        _gotoNext = 4037843i32;
                    };
                } else if (__value__ == (4037546i32)) {
                    _i_4037499++;
                    _gotoNext = 4037495i32;
                } else if (__value__ == (4037550i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4036859?.__copy__(), (_name.__slice__((_i_4037499 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4037556 = __tmp__._0?.__copy__();
                        _ok_4037559 = __tmp__._1;
                        _err_4037563 = __tmp__._2;
                    };
                    if (_ok_4037559) {
                        _gotoNext = 4037610i32;
                    } else {
                        _gotoNext = 4037787i32;
                    };
                } else if (__value__ == (4037610i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4037556.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4037717i32;
                    } else {
                        _gotoNext = 4037746i32;
                    };
                } else if (__value__ == (4037717i32)) {
                    _i_4037499++;
                    _gotoNext = 4037495i32;
                } else if (__value__ == (4037746i32)) {
                    _name = _t_4037556?.__copy__();
                    _gotoNext = 4036814i32;
                } else if (__value__ == (4037787i32)) {
                    if (_err_4037563 != null) {
                        _gotoNext = 4037801i32;
                    } else {
                        _gotoNext = 4037546i32;
                    };
                } else if (__value__ == (4037801i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4037563 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4037546i32;
                } else if (__value__ == (4037843i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4036814i32;
                } else if (__value__ == (4037865i32)) {
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
