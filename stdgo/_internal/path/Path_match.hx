package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_2788695:Bool = false;
        var patternBreak = false;
        var _err_2789405:stdgo.Error = (null : stdgo.Error);
        var _ok_2789401:Bool = false;
        var _t_2789398:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2788958:Bool = false;
        var _t_2788955:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2788711:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2789347:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2788962:stdgo.Error = (null : stdgo.Error);
        var _err_2789874:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2788656i32;
                } else if (__value__ == (2788656i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2788666i32;
                } else if (__value__ == (2788666i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2788687i32;
                    } else {
                        _gotoNext = 2789972i32;
                    };
                } else if (__value__ == (2788687i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2788695 = @:tmpset0 __tmp__._0;
                        _chunk_2788711 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2788695 && (_chunk_2788711 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2788793i32;
                    } else {
                        _gotoNext = 2788955i32;
                    };
                } else if (__value__ == (2788793i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2788955i32;
                } else if (__value__ == (2788955i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2788711?.__copy__(), _name?.__copy__());
                        _t_2788955 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2788958 = @:tmpset0 __tmp__._1;
                        _err_2788962 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2788958 && (((_t_2788955.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2789193i32;
                    } else {
                        _gotoNext = 2789225i32;
                    };
                } else if (__value__ == (2789193i32)) {
                    _name = _t_2788955?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2788666i32;
                } else if (__value__ == (2789225i32)) {
                    if (_err_2788962 != null) {
                        _gotoNext = 2789239i32;
                    } else {
                        _gotoNext = 2789268i32;
                    };
                } else if (__value__ == (2789239i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2788962 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2789268i32;
                } else if (__value__ == (2789268i32)) {
                    if (_star_2788695) {
                        _gotoNext = 2789276i32;
                    } else {
                        _gotoNext = 2789797i32;
                    };
                } else if (__value__ == (2789276i32)) {
                    _i_2789347 = (0 : stdgo.GoInt);
                    _gotoNext = 2789343i32;
                } else if (__value__ == (2789343i32)) {
                    if (((_i_2789347 < (_name.length) : Bool) && (_name[(_i_2789347 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2789392i32;
                    } else {
                        _gotoNext = 2789797i32;
                    };
                } else if (__value__ == (2789388i32)) {
                    _i_2789347++;
                    _gotoNext = 2789343i32;
                } else if (__value__ == (2789392i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2788711?.__copy__(), (_name.__slice__((_i_2789347 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2789398 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2789401 = @:tmpset0 __tmp__._1;
                        _err_2789405 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2789401) {
                        _gotoNext = 2789452i32;
                    } else {
                        _gotoNext = 2789629i32;
                    };
                } else if (__value__ == (2789452i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2789398.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2789559i32;
                    } else {
                        _gotoNext = 2789588i32;
                    };
                } else if (__value__ == (2789559i32)) {
                    _i_2789347++;
                    _gotoNext = 2789343i32;
                } else if (__value__ == (2789588i32)) {
                    _name = _t_2789398?.__copy__();
                    _gotoNext = 2788666i32;
                } else if (__value__ == (2789629i32)) {
                    if (_err_2789405 != null) {
                        _gotoNext = 2789643i32;
                    } else {
                        _gotoNext = 2789388i32;
                    };
                } else if (__value__ == (2789643i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2789405 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2789388i32;
                } else if (__value__ == (2789797i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2789797i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2789818i32;
                    } else {
                        _gotoNext = 2789950i32;
                    };
                } else if (__value__ == (2789818i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2788711 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2788711?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2789874 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2789874 != null) {
                            _gotoNext = 2789915i32;
                        } else {
                            _gotoNext = 2789797i32;
                        };
                    };
                } else if (__value__ == (2789915i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2789874 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2789797i32;
                } else if (__value__ == (2789950i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2788666i32;
                } else if (__value__ == (2789972i32)) {
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
