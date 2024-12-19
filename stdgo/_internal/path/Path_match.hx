package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2763609:stdgo.Error = (null : stdgo.Error);
        var _t_2763602:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2763551:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2763162:Bool = false;
        var _t_2763159:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2762899:Bool = false;
        var patternBreak = false;
        var _err_2764078:stdgo.Error = (null : stdgo.Error);
        var _ok_2763605:Bool = false;
        var _err_2763166:stdgo.Error = (null : stdgo.Error);
        var _chunk_2762915:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2762860i32;
                } else if (__value__ == (2762860i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2762870i32;
                } else if (__value__ == (2762870i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2762891i32;
                    } else {
                        _gotoNext = 2764176i32;
                    };
                } else if (__value__ == (2762891i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2762899 = __tmp__._0;
                        _chunk_2762915 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2762899 && (_chunk_2762915 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2762997i32;
                    } else {
                        _gotoNext = 2763159i32;
                    };
                } else if (__value__ == (2762997i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2763159i32;
                } else if (__value__ == (2763159i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2762915?.__copy__(), _name?.__copy__());
                        _t_2763159 = __tmp__._0?.__copy__();
                        _ok_2763162 = __tmp__._1;
                        _err_2763166 = __tmp__._2;
                    };
                    if ((_ok_2763162 && (((_t_2763159.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2763397i32;
                    } else {
                        _gotoNext = 2763429i32;
                    };
                } else if (__value__ == (2763397i32)) {
                    _name = _t_2763159?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2762870i32;
                } else if (__value__ == (2763429i32)) {
                    if (_err_2763166 != null) {
                        _gotoNext = 2763443i32;
                    } else {
                        _gotoNext = 2763472i32;
                    };
                } else if (__value__ == (2763443i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2763166 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2763472i32;
                } else if (__value__ == (2763472i32)) {
                    if (_star_2762899) {
                        _gotoNext = 2763480i32;
                    } else {
                        _gotoNext = 2764001i32;
                    };
                } else if (__value__ == (2763480i32)) {
                    _i_2763551 = (0 : stdgo.GoInt);
                    _gotoNext = 2763547i32;
                } else if (__value__ == (2763547i32)) {
                    if (((_i_2763551 < (_name.length) : Bool) && (_name[(_i_2763551 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2763596i32;
                    } else {
                        _gotoNext = 2764001i32;
                    };
                } else if (__value__ == (2763592i32)) {
                    _i_2763551++;
                    _gotoNext = 2763547i32;
                } else if (__value__ == (2763596i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2762915?.__copy__(), (_name.__slice__((_i_2763551 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2763602 = __tmp__._0?.__copy__();
                        _ok_2763605 = __tmp__._1;
                        _err_2763609 = __tmp__._2;
                    };
                    if (_ok_2763605) {
                        _gotoNext = 2763656i32;
                    } else {
                        _gotoNext = 2763833i32;
                    };
                } else if (__value__ == (2763656i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2763602.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2763763i32;
                    } else {
                        _gotoNext = 2763792i32;
                    };
                } else if (__value__ == (2763763i32)) {
                    _i_2763551++;
                    _gotoNext = 2763547i32;
                } else if (__value__ == (2763792i32)) {
                    _name = _t_2763602?.__copy__();
                    _gotoNext = 2762870i32;
                } else if (__value__ == (2763833i32)) {
                    if (_err_2763609 != null) {
                        _gotoNext = 2763847i32;
                    } else {
                        _gotoNext = 2763592i32;
                    };
                } else if (__value__ == (2763847i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2763609 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2763592i32;
                } else if (__value__ == (2764001i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2764001i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2764022i32;
                    } else {
                        _gotoNext = 2764154i32;
                    };
                } else if (__value__ == (2764022i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2762915 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2762915?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2764078 = __tmp__._2;
                        };
                        if (_err_2764078 != null) {
                            _gotoNext = 2764119i32;
                        } else {
                            _gotoNext = 2764154i32;
                        };
                    };
                } else if (__value__ == (2764119i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2764078 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2764154i32;
                } else if (__value__ == (2764154i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2762870i32;
                } else if (__value__ == (2764176i32)) {
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
