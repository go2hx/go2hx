package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_1:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _ok_7:Bool = false;
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _ok_3:Bool = false;
        var _t_2:stdgo.GoString = ("" : stdgo.GoString);
        var _star_0:Bool = false;
        var _t_6:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3974378i32;
                } else if (__value__ == (3974378i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3974388i32;
                } else if (__value__ == (3974388i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3974409i32;
                    } else {
                        _gotoNext = 3975439i32;
                    };
                } else if (__value__ == (3974409i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_0 = @:tmpset0 __tmp__._0;
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_0 && (_chunk_1 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3974515i32;
                    } else {
                        _gotoNext = 3974681i32;
                    };
                } else if (__value__ == (3974515i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3974681i32;
                } else if (__value__ == (3974681i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_1?.__copy__(), _name?.__copy__());
                        _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3 = @:tmpset0 __tmp__._1;
                        _err_4 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3 && (((_t_2.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3974919i32;
                    } else {
                        _gotoNext = 3974951i32;
                    };
                } else if (__value__ == (3974919i32)) {
                    _name = _t_2?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3974388i32;
                } else if (__value__ == (3974951i32)) {
                    if (_err_4 != null) {
                        _gotoNext = 3974965i32;
                    } else {
                        _gotoNext = 3974994i32;
                    };
                } else if (__value__ == (3974965i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3974994i32;
                } else if (__value__ == (3974994i32)) {
                    if (_star_0) {
                        _gotoNext = 3975002i32;
                    } else {
                        _gotoNext = 3975417i32;
                    };
                } else if (__value__ == (3975002i32)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 3975069i32;
                } else if (__value__ == (3975069i32)) {
                    if (((_i_5 < (_name.length) : Bool) && (_name[(_i_5 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3975124i32;
                    } else {
                        _gotoNext = 3975417i32;
                    };
                } else if (__value__ == (3975120i32)) {
                    _i_5++;
                    _gotoNext = 3975069i32;
                } else if (__value__ == (3975124i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_1?.__copy__(), (_name.__slice__((_i_5 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_6 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_7 = @:tmpset0 __tmp__._1;
                        _err_8 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_7) {
                        _gotoNext = 3975184i32;
                    } else {
                        _gotoNext = 3975361i32;
                    };
                } else if (__value__ == (3975184i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_6.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3975291i32;
                    } else {
                        _gotoNext = 3975320i32;
                    };
                } else if (__value__ == (3975291i32)) {
                    _i_5++;
                    _gotoNext = 3975069i32;
                } else if (__value__ == (3975320i32)) {
                    _name = _t_6?.__copy__();
                    _gotoNext = 3974388i32;
                } else if (__value__ == (3975361i32)) {
                    if (_err_8 != null) {
                        _gotoNext = 3975375i32;
                    } else {
                        _gotoNext = 3975120i32;
                    };
                } else if (__value__ == (3975375i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_8 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3975120i32;
                } else if (__value__ == (3975417i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3974388i32;
                } else if (__value__ == (3975439i32)) {
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
