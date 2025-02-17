package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_9:stdgo.Error = (null : stdgo.Error);
        var _ok_7:Bool = false;
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _t_2:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _t_6:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3:Bool = false;
        var _chunk_1:stdgo.GoString = ("" : stdgo.GoString);
        var _star_0:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3006070i32;
                } else if (__value__ == (3006070i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3006080i32;
                } else if (__value__ == (3006080i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3006101i32;
                    } else {
                        _gotoNext = 3007386i32;
                    };
                } else if (__value__ == (3006101i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_0 = @:tmpset0 __tmp__._0;
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_0 && (_chunk_1 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3006207i32;
                    } else {
                        _gotoNext = 3006369i32;
                    };
                } else if (__value__ == (3006207i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3006369i32;
                } else if (__value__ == (3006369i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), _name?.__copy__());
                        _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3 = @:tmpset0 __tmp__._1;
                        _err_4 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3 && (((_t_2.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3006607i32;
                    } else {
                        _gotoNext = 3006639i32;
                    };
                } else if (__value__ == (3006607i32)) {
                    _name = _t_2?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3006080i32;
                } else if (__value__ == (3006639i32)) {
                    if (_err_4 != null) {
                        _gotoNext = 3006653i32;
                    } else {
                        _gotoNext = 3006682i32;
                    };
                } else if (__value__ == (3006653i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3006682i32;
                } else if (__value__ == (3006682i32)) {
                    if (_star_0) {
                        _gotoNext = 3006690i32;
                    } else {
                        _gotoNext = 3007211i32;
                    };
                } else if (__value__ == (3006690i32)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 3006757i32;
                } else if (__value__ == (3006757i32)) {
                    if (((_i_5 < (_name.length) : Bool) && (_name[(_i_5 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3006806i32;
                    } else {
                        _gotoNext = 3007211i32;
                    };
                } else if (__value__ == (3006802i32)) {
                    _i_5++;
                    _gotoNext = 3006757i32;
                } else if (__value__ == (3006806i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (_name.__slice__((_i_5 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_6 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_7 = @:tmpset0 __tmp__._1;
                        _err_8 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_7) {
                        _gotoNext = 3006866i32;
                    } else {
                        _gotoNext = 3007043i32;
                    };
                } else if (__value__ == (3006866i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_6.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3006973i32;
                    } else {
                        _gotoNext = 3007002i32;
                    };
                } else if (__value__ == (3006973i32)) {
                    _i_5++;
                    _gotoNext = 3006757i32;
                } else if (__value__ == (3007002i32)) {
                    _name = _t_6?.__copy__();
                    _gotoNext = 3006080i32;
                } else if (__value__ == (3007043i32)) {
                    if (_err_8 != null) {
                        _gotoNext = 3007057i32;
                    } else {
                        _gotoNext = 3006802i32;
                    };
                } else if (__value__ == (3007057i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_8 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3006802i32;
                } else if (__value__ == (3007211i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3007211i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3007232i32;
                    } else {
                        _gotoNext = 3007364i32;
                    };
                } else if (__value__ == (3007232i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_9 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_9 != null) {
                            _gotoNext = 3007329i32;
                        } else {
                            _gotoNext = 3007211i32;
                        };
                    };
                } else if (__value__ == (3007329i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_9 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3007211i32;
                } else if (__value__ == (3007364i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3006080i32;
                } else if (__value__ == (3007386i32)) {
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
