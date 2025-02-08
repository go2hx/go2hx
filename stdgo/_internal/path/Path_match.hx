package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2578789:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2578349:Bool = false;
        var _chunk_2578102:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2578796:stdgo.Error = (null : stdgo.Error);
        var _t_2578346:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2578086:Bool = false;
        var patternBreak = false;
        var _err_2579265:stdgo.Error = (null : stdgo.Error);
        var _ok_2578792:Bool = false;
        var _i_2578738:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2578353:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2578047i32;
                } else if (__value__ == (2578047i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2578057i32;
                } else if (__value__ == (2578057i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2578078i32;
                    } else {
                        _gotoNext = 2579363i32;
                    };
                } else if (__value__ == (2578078i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2578086 = @:tmpset0 __tmp__._0;
                        _chunk_2578102 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2578086 && (_chunk_2578102 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2578184i32;
                    } else {
                        _gotoNext = 2578346i32;
                    };
                } else if (__value__ == (2578184i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2578346i32;
                } else if (__value__ == (2578346i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2578102?.__copy__(), _name?.__copy__());
                        _t_2578346 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2578349 = @:tmpset0 __tmp__._1;
                        _err_2578353 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2578349 && (((_t_2578346.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2578584i32;
                    } else {
                        _gotoNext = 2578616i32;
                    };
                } else if (__value__ == (2578584i32)) {
                    _name = _t_2578346?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2578057i32;
                } else if (__value__ == (2578616i32)) {
                    if (_err_2578353 != null) {
                        _gotoNext = 2578630i32;
                    } else {
                        _gotoNext = 2578659i32;
                    };
                } else if (__value__ == (2578630i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2578353 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2578659i32;
                } else if (__value__ == (2578659i32)) {
                    if (_star_2578086) {
                        _gotoNext = 2578667i32;
                    } else {
                        _gotoNext = 2579188i32;
                    };
                } else if (__value__ == (2578667i32)) {
                    _i_2578738 = (0 : stdgo.GoInt);
                    _gotoNext = 2578734i32;
                } else if (__value__ == (2578734i32)) {
                    if (((_i_2578738 < (_name.length) : Bool) && (_name[(_i_2578738 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2578783i32;
                    } else {
                        _gotoNext = 2579188i32;
                    };
                } else if (__value__ == (2578779i32)) {
                    _i_2578738++;
                    _gotoNext = 2578734i32;
                } else if (__value__ == (2578783i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2578102?.__copy__(), (_name.__slice__((_i_2578738 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2578789 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2578792 = @:tmpset0 __tmp__._1;
                        _err_2578796 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2578792) {
                        _gotoNext = 2578843i32;
                    } else {
                        _gotoNext = 2579020i32;
                    };
                } else if (__value__ == (2578843i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2578789.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2578950i32;
                    } else {
                        _gotoNext = 2578979i32;
                    };
                } else if (__value__ == (2578950i32)) {
                    _i_2578738++;
                    _gotoNext = 2578734i32;
                } else if (__value__ == (2578979i32)) {
                    _name = _t_2578789?.__copy__();
                    _gotoNext = 2578057i32;
                } else if (__value__ == (2579020i32)) {
                    if (_err_2578796 != null) {
                        _gotoNext = 2579034i32;
                    } else {
                        _gotoNext = 2578779i32;
                    };
                } else if (__value__ == (2579034i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2578796 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2578779i32;
                } else if (__value__ == (2579188i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2579188i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2579209i32;
                    } else {
                        _gotoNext = 2579341i32;
                    };
                } else if (__value__ == (2579209i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2578102 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2578102?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2579265 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2579265 != null) {
                            _gotoNext = 2579306i32;
                        } else {
                            _gotoNext = 2579188i32;
                        };
                    };
                } else if (__value__ == (2579306i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2579265 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2579188i32;
                } else if (__value__ == (2579341i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2578057i32;
                } else if (__value__ == (2579363i32)) {
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
