package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2815756:stdgo.Error = (null : stdgo.Error);
        var _t_2815280:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2814844:stdgo.Error = (null : stdgo.Error);
        var _t_2814837:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2815283:Bool = false;
        var _i_2815229:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2814840:Bool = false;
        var _chunk_2814593:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2814577:Bool = false;
        var patternBreak = false;
        var _err_2815287:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2814538i32;
                } else if (__value__ == (2814538i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2814548i32;
                } else if (__value__ == (2814548i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2814569i32;
                    } else {
                        _gotoNext = 2815854i32;
                    };
                } else if (__value__ == (2814569i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2814577 = __tmp__._0;
                        _chunk_2814593 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2814577 && (_chunk_2814593 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2814675i32;
                    } else {
                        _gotoNext = 2814837i32;
                    };
                } else if (__value__ == (2814675i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2814837i32;
                } else if (__value__ == (2814837i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2814593?.__copy__(), _name?.__copy__());
                        _t_2814837 = __tmp__._0?.__copy__();
                        _ok_2814840 = __tmp__._1;
                        _err_2814844 = __tmp__._2;
                    };
                    if ((_ok_2814840 && (((_t_2814837.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2815075i32;
                    } else {
                        _gotoNext = 2815107i32;
                    };
                } else if (__value__ == (2815075i32)) {
                    _name = _t_2814837?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2814548i32;
                } else if (__value__ == (2815107i32)) {
                    if (_err_2814844 != null) {
                        _gotoNext = 2815121i32;
                    } else {
                        _gotoNext = 2815150i32;
                    };
                } else if (__value__ == (2815121i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2814844 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2815150i32;
                } else if (__value__ == (2815150i32)) {
                    if (_star_2814577) {
                        _gotoNext = 2815158i32;
                    } else {
                        _gotoNext = 2815679i32;
                    };
                } else if (__value__ == (2815158i32)) {
                    _i_2815229 = (0 : stdgo.GoInt);
                    _gotoNext = 2815225i32;
                } else if (__value__ == (2815225i32)) {
                    if (((_i_2815229 < (_name.length) : Bool) && (_name[(_i_2815229 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2815274i32;
                    } else {
                        _gotoNext = 2815679i32;
                    };
                } else if (__value__ == (2815270i32)) {
                    _i_2815229++;
                    _gotoNext = 2815225i32;
                } else if (__value__ == (2815274i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2814593?.__copy__(), (_name.__slice__((_i_2815229 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2815280 = __tmp__._0?.__copy__();
                        _ok_2815283 = __tmp__._1;
                        _err_2815287 = __tmp__._2;
                    };
                    if (_ok_2815283) {
                        _gotoNext = 2815334i32;
                    } else {
                        _gotoNext = 2815511i32;
                    };
                } else if (__value__ == (2815334i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2815280.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2815441i32;
                    } else {
                        _gotoNext = 2815470i32;
                    };
                } else if (__value__ == (2815441i32)) {
                    _i_2815229++;
                    _gotoNext = 2815225i32;
                } else if (__value__ == (2815470i32)) {
                    _name = _t_2815280?.__copy__();
                    _gotoNext = 2814548i32;
                } else if (__value__ == (2815511i32)) {
                    if (_err_2815287 != null) {
                        _gotoNext = 2815525i32;
                    } else {
                        _gotoNext = 2815270i32;
                    };
                } else if (__value__ == (2815525i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2815287 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2815270i32;
                } else if (__value__ == (2815679i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2815679i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2815700i32;
                    } else {
                        _gotoNext = 2815832i32;
                    };
                } else if (__value__ == (2815700i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2814593 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2814593?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2815756 = __tmp__._2;
                        };
                        if (_err_2815756 != null) {
                            _gotoNext = 2815797i32;
                        } else {
                            _gotoNext = 2815832i32;
                        };
                    };
                } else if (__value__ == (2815797i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2815756 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2815832i32;
                } else if (__value__ == (2815832i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2814548i32;
                } else if (__value__ == (2815854i32)) {
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
