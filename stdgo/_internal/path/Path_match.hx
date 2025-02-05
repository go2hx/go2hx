package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2678602:Bool = false;
        var _t_2678599:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2679518:stdgo.Error = (null : stdgo.Error);
        var _ok_2679045:Bool = false;
        var _i_2678991:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_2678339:Bool = false;
        var patternBreak = false;
        var _err_2679049:stdgo.Error = (null : stdgo.Error);
        var _t_2679042:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2678606:stdgo.Error = (null : stdgo.Error);
        var _chunk_2678355:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2678300i32;
                } else if (__value__ == (2678300i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2678310i32;
                } else if (__value__ == (2678310i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2678331i32;
                    } else {
                        _gotoNext = 2679616i32;
                    };
                } else if (__value__ == (2678331i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2678339 = @:tmpset0 __tmp__._0;
                        _chunk_2678355 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2678339 && (_chunk_2678355 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2678437i32;
                    } else {
                        _gotoNext = 2678599i32;
                    };
                } else if (__value__ == (2678437i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2678599i32;
                } else if (__value__ == (2678599i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2678355?.__copy__(), _name?.__copy__());
                        _t_2678599 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2678602 = @:tmpset0 __tmp__._1;
                        _err_2678606 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2678602 && (((_t_2678599.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2678837i32;
                    } else {
                        _gotoNext = 2678869i32;
                    };
                } else if (__value__ == (2678837i32)) {
                    _name = _t_2678599?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2678310i32;
                } else if (__value__ == (2678869i32)) {
                    if (_err_2678606 != null) {
                        _gotoNext = 2678883i32;
                    } else {
                        _gotoNext = 2678912i32;
                    };
                } else if (__value__ == (2678883i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2678606 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2678912i32;
                } else if (__value__ == (2678912i32)) {
                    if (_star_2678339) {
                        _gotoNext = 2678920i32;
                    } else {
                        _gotoNext = 2679441i32;
                    };
                } else if (__value__ == (2678920i32)) {
                    _i_2678991 = (0 : stdgo.GoInt);
                    _gotoNext = 2678987i32;
                } else if (__value__ == (2678987i32)) {
                    if (((_i_2678991 < (_name.length) : Bool) && (_name[(_i_2678991 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2679036i32;
                    } else {
                        _gotoNext = 2679441i32;
                    };
                } else if (__value__ == (2679032i32)) {
                    _i_2678991++;
                    _gotoNext = 2678987i32;
                } else if (__value__ == (2679036i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2678355?.__copy__(), (_name.__slice__((_i_2678991 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2679042 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2679045 = @:tmpset0 __tmp__._1;
                        _err_2679049 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2679045) {
                        _gotoNext = 2679096i32;
                    } else {
                        _gotoNext = 2679273i32;
                    };
                } else if (__value__ == (2679096i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2679042.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2679203i32;
                    } else {
                        _gotoNext = 2679232i32;
                    };
                } else if (__value__ == (2679203i32)) {
                    _i_2678991++;
                    _gotoNext = 2678987i32;
                } else if (__value__ == (2679232i32)) {
                    _name = _t_2679042?.__copy__();
                    _gotoNext = 2678310i32;
                } else if (__value__ == (2679273i32)) {
                    if (_err_2679049 != null) {
                        _gotoNext = 2679287i32;
                    } else {
                        _gotoNext = 2679032i32;
                    };
                } else if (__value__ == (2679287i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2679049 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2679032i32;
                } else if (__value__ == (2679441i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2679441i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2679462i32;
                    } else {
                        _gotoNext = 2679594i32;
                    };
                } else if (__value__ == (2679462i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2678355 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2678355?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2679518 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2679518 != null) {
                            _gotoNext = 2679559i32;
                        } else {
                            _gotoNext = 2679441i32;
                        };
                    };
                } else if (__value__ == (2679559i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2679518 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2679441i32;
                } else if (__value__ == (2679594i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2678310i32;
                } else if (__value__ == (2679616i32)) {
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
