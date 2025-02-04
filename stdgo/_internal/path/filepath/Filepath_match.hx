package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_4019066:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4019009:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4018624:stdgo.Error = (null : stdgo.Error);
        var _ok_4018620:Bool = false;
        var _star_4018353:Bool = false;
        var _ok_4019069:Bool = false;
        var _err_4019073:stdgo.Error = (null : stdgo.Error);
        var _t_4018617:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4018369:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4018314i32;
                } else if (__value__ == (4018314i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4018324i32;
                } else if (__value__ == (4018324i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4018345i32;
                    } else {
                        _gotoNext = 4019375i32;
                    };
                } else if (__value__ == (4018345i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_4018353 = @:tmpset0 __tmp__._0;
                        _chunk_4018369 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4018353 && (_chunk_4018369 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4018451i32;
                    } else {
                        _gotoNext = 4018617i32;
                    };
                } else if (__value__ == (4018451i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4018617i32;
                } else if (__value__ == (4018617i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4018369?.__copy__(), _name?.__copy__());
                        _t_4018617 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4018620 = @:tmpset0 __tmp__._1;
                        _err_4018624 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4018620 && (((_t_4018617.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4018855i32;
                    } else {
                        _gotoNext = 4018887i32;
                    };
                } else if (__value__ == (4018855i32)) {
                    _name = _t_4018617?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4018324i32;
                } else if (__value__ == (4018887i32)) {
                    if (_err_4018624 != null) {
                        _gotoNext = 4018901i32;
                    } else {
                        _gotoNext = 4018930i32;
                    };
                } else if (__value__ == (4018901i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4018624 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4018930i32;
                } else if (__value__ == (4018930i32)) {
                    if (_star_4018353) {
                        _gotoNext = 4018938i32;
                    } else {
                        _gotoNext = 4019353i32;
                    };
                } else if (__value__ == (4018938i32)) {
                    _i_4019009 = (0 : stdgo.GoInt);
                    _gotoNext = 4019005i32;
                } else if (__value__ == (4019005i32)) {
                    if (((_i_4019009 < (_name.length) : Bool) && (_name[(_i_4019009 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4019060i32;
                    } else {
                        _gotoNext = 4019353i32;
                    };
                } else if (__value__ == (4019056i32)) {
                    _i_4019009++;
                    _gotoNext = 4019005i32;
                } else if (__value__ == (4019060i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4018369?.__copy__(), (_name.__slice__((_i_4019009 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4019066 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4019069 = @:tmpset0 __tmp__._1;
                        _err_4019073 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4019069) {
                        _gotoNext = 4019120i32;
                    } else {
                        _gotoNext = 4019297i32;
                    };
                } else if (__value__ == (4019120i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4019066.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4019227i32;
                    } else {
                        _gotoNext = 4019256i32;
                    };
                } else if (__value__ == (4019227i32)) {
                    _i_4019009++;
                    _gotoNext = 4019005i32;
                } else if (__value__ == (4019256i32)) {
                    _name = _t_4019066?.__copy__();
                    _gotoNext = 4018324i32;
                } else if (__value__ == (4019297i32)) {
                    if (_err_4019073 != null) {
                        _gotoNext = 4019311i32;
                    } else {
                        _gotoNext = 4019056i32;
                    };
                } else if (__value__ == (4019311i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4019073 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4019056i32;
                } else if (__value__ == (4019353i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4018324i32;
                } else if (__value__ == (4019375i32)) {
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
