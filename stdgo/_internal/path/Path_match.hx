package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2896209:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2895573:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2895557:Bool = false;
        var _err_2896267:stdgo.Error = (null : stdgo.Error);
        var _t_2896260:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2895820:Bool = false;
        var _t_2895817:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2896736:stdgo.Error = (null : stdgo.Error);
        var _ok_2896263:Bool = false;
        var _err_2895824:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2895518i32;
                } else if (__value__ == (2895518i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2895528i32;
                } else if (__value__ == (2895528i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2895549i32;
                    } else {
                        _gotoNext = 2896834i32;
                    };
                } else if (__value__ == (2895549i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2895557 = @:tmpset0 __tmp__._0;
                        _chunk_2895573 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2895557 && (_chunk_2895573 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2895655i32;
                    } else {
                        _gotoNext = 2895817i32;
                    };
                } else if (__value__ == (2895655i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2895817i32;
                } else if (__value__ == (2895817i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2895573?.__copy__(), _name?.__copy__());
                        _t_2895817 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2895820 = @:tmpset0 __tmp__._1;
                        _err_2895824 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2895820 && (((_t_2895817.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2896055i32;
                    } else {
                        _gotoNext = 2896087i32;
                    };
                } else if (__value__ == (2896055i32)) {
                    _name = _t_2895817?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2895528i32;
                } else if (__value__ == (2896087i32)) {
                    if (_err_2895824 != null) {
                        _gotoNext = 2896101i32;
                    } else {
                        _gotoNext = 2896130i32;
                    };
                } else if (__value__ == (2896101i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2895824 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2896130i32;
                } else if (__value__ == (2896130i32)) {
                    if (_star_2895557) {
                        _gotoNext = 2896138i32;
                    } else {
                        _gotoNext = 2896659i32;
                    };
                } else if (__value__ == (2896138i32)) {
                    _i_2896209 = (0 : stdgo.GoInt);
                    _gotoNext = 2896205i32;
                } else if (__value__ == (2896205i32)) {
                    if (((_i_2896209 < (_name.length) : Bool) && (_name[(_i_2896209 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2896254i32;
                    } else {
                        _gotoNext = 2896659i32;
                    };
                } else if (__value__ == (2896250i32)) {
                    _i_2896209++;
                    _gotoNext = 2896205i32;
                } else if (__value__ == (2896254i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2895573?.__copy__(), (_name.__slice__((_i_2896209 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2896260 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2896263 = @:tmpset0 __tmp__._1;
                        _err_2896267 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2896263) {
                        _gotoNext = 2896314i32;
                    } else {
                        _gotoNext = 2896491i32;
                    };
                } else if (__value__ == (2896314i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2896260.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2896421i32;
                    } else {
                        _gotoNext = 2896450i32;
                    };
                } else if (__value__ == (2896421i32)) {
                    _i_2896209++;
                    _gotoNext = 2896205i32;
                } else if (__value__ == (2896450i32)) {
                    _name = _t_2896260?.__copy__();
                    _gotoNext = 2895528i32;
                } else if (__value__ == (2896491i32)) {
                    if (_err_2896267 != null) {
                        _gotoNext = 2896505i32;
                    } else {
                        _gotoNext = 2896250i32;
                    };
                } else if (__value__ == (2896505i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2896267 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2896250i32;
                } else if (__value__ == (2896659i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2896659i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2896680i32;
                    } else {
                        _gotoNext = 2896812i32;
                    };
                } else if (__value__ == (2896680i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2895573 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2895573?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2896736 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2896736 != null) {
                            _gotoNext = 2896777i32;
                        } else {
                            _gotoNext = 2896659i32;
                        };
                    };
                } else if (__value__ == (2896777i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2896736 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2896659i32;
                } else if (__value__ == (2896812i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2895528i32;
                } else if (__value__ == (2896834i32)) {
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
