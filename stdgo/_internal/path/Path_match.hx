package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2722963:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2722912:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2722523:Bool = false;
        var _t_2722520:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2723439:stdgo.Error = (null : stdgo.Error);
        var _err_2722970:stdgo.Error = (null : stdgo.Error);
        var _ok_2722966:Bool = false;
        var _err_2722527:stdgo.Error = (null : stdgo.Error);
        var _chunk_2722276:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2722260:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2722221i32;
                } else if (__value__ == (2722221i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2722231i32;
                } else if (__value__ == (2722231i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2722252i32;
                    } else {
                        _gotoNext = 2723537i32;
                    };
                } else if (__value__ == (2722252i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2722260 = @:tmpset0 __tmp__._0;
                        _chunk_2722276 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2722260 && (_chunk_2722276 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2722358i32;
                    } else {
                        _gotoNext = 2722520i32;
                    };
                } else if (__value__ == (2722358i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2722520i32;
                } else if (__value__ == (2722520i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2722276?.__copy__(), _name?.__copy__());
                        _t_2722520 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2722523 = @:tmpset0 __tmp__._1;
                        _err_2722527 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2722523 && (((_t_2722520.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2722758i32;
                    } else {
                        _gotoNext = 2722790i32;
                    };
                } else if (__value__ == (2722758i32)) {
                    _name = _t_2722520?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2722231i32;
                } else if (__value__ == (2722790i32)) {
                    if (_err_2722527 != null) {
                        _gotoNext = 2722804i32;
                    } else {
                        _gotoNext = 2722833i32;
                    };
                } else if (__value__ == (2722804i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2722527 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2722833i32;
                } else if (__value__ == (2722833i32)) {
                    if (_star_2722260) {
                        _gotoNext = 2722841i32;
                    } else {
                        _gotoNext = 2723362i32;
                    };
                } else if (__value__ == (2722841i32)) {
                    _i_2722912 = (0 : stdgo.GoInt);
                    _gotoNext = 2722908i32;
                } else if (__value__ == (2722908i32)) {
                    if (((_i_2722912 < (_name.length) : Bool) && (_name[(_i_2722912 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2722957i32;
                    } else {
                        _gotoNext = 2723362i32;
                    };
                } else if (__value__ == (2722953i32)) {
                    _i_2722912++;
                    _gotoNext = 2722908i32;
                } else if (__value__ == (2722957i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2722276?.__copy__(), (_name.__slice__((_i_2722912 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2722963 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2722966 = @:tmpset0 __tmp__._1;
                        _err_2722970 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2722966) {
                        _gotoNext = 2723017i32;
                    } else {
                        _gotoNext = 2723194i32;
                    };
                } else if (__value__ == (2723017i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2722963.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2723124i32;
                    } else {
                        _gotoNext = 2723153i32;
                    };
                } else if (__value__ == (2723124i32)) {
                    _i_2722912++;
                    _gotoNext = 2722908i32;
                } else if (__value__ == (2723153i32)) {
                    _name = _t_2722963?.__copy__();
                    _gotoNext = 2722231i32;
                } else if (__value__ == (2723194i32)) {
                    if (_err_2722970 != null) {
                        _gotoNext = 2723208i32;
                    } else {
                        _gotoNext = 2722953i32;
                    };
                } else if (__value__ == (2723208i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2722970 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2722953i32;
                } else if (__value__ == (2723362i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2723362i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2723383i32;
                    } else {
                        _gotoNext = 2723515i32;
                    };
                } else if (__value__ == (2723383i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2722276 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2722276?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2723439 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2723439 != null) {
                            _gotoNext = 2723480i32;
                        } else {
                            _gotoNext = 2723362i32;
                        };
                    };
                } else if (__value__ == (2723480i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2723439 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2723362i32;
                } else if (__value__ == (2723515i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2722231i32;
                } else if (__value__ == (2723537i32)) {
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
