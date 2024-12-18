package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2646078:stdgo.Error = (null : stdgo.Error);
        var _err_2645609:stdgo.Error = (null : stdgo.Error);
        var _ok_2645605:Bool = false;
        var _i_2645551:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2645166:stdgo.Error = (null : stdgo.Error);
        var _t_2645159:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2644899:Bool = false;
        var patternBreak = false;
        var _t_2645602:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2645162:Bool = false;
        var _chunk_2644915:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2644860i32;
                } else if (__value__ == (2644860i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2644870i32;
                } else if (__value__ == (2644870i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2644891i32;
                    } else {
                        _gotoNext = 2646176i32;
                    };
                } else if (__value__ == (2644891i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2644899 = __tmp__._0;
                        _chunk_2644915 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2644899 && (_chunk_2644915 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2644997i32;
                    } else {
                        _gotoNext = 2645159i32;
                    };
                } else if (__value__ == (2644997i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2645159i32;
                } else if (__value__ == (2645159i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2644915?.__copy__(), _name?.__copy__());
                        _t_2645159 = __tmp__._0?.__copy__();
                        _ok_2645162 = __tmp__._1;
                        _err_2645166 = __tmp__._2;
                    };
                    if ((_ok_2645162 && (((_t_2645159.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2645397i32;
                    } else {
                        _gotoNext = 2645429i32;
                    };
                } else if (__value__ == (2645397i32)) {
                    _name = _t_2645159?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2644870i32;
                } else if (__value__ == (2645429i32)) {
                    if (_err_2645166 != null) {
                        _gotoNext = 2645443i32;
                    } else {
                        _gotoNext = 2645472i32;
                    };
                } else if (__value__ == (2645443i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2645166 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2645472i32;
                } else if (__value__ == (2645472i32)) {
                    if (_star_2644899) {
                        _gotoNext = 2645480i32;
                    } else {
                        _gotoNext = 2646001i32;
                    };
                } else if (__value__ == (2645480i32)) {
                    _i_2645551 = (0 : stdgo.GoInt);
                    _gotoNext = 2645547i32;
                } else if (__value__ == (2645547i32)) {
                    if (((_i_2645551 < (_name.length) : Bool) && (_name[(_i_2645551 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2645596i32;
                    } else {
                        _gotoNext = 2646001i32;
                    };
                } else if (__value__ == (2645592i32)) {
                    _i_2645551++;
                    _gotoNext = 2645547i32;
                } else if (__value__ == (2645596i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2644915?.__copy__(), (_name.__slice__((_i_2645551 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2645602 = __tmp__._0?.__copy__();
                        _ok_2645605 = __tmp__._1;
                        _err_2645609 = __tmp__._2;
                    };
                    if (_ok_2645605) {
                        _gotoNext = 2645656i32;
                    } else {
                        _gotoNext = 2645833i32;
                    };
                } else if (__value__ == (2645656i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2645602.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2645763i32;
                    } else {
                        _gotoNext = 2645792i32;
                    };
                } else if (__value__ == (2645763i32)) {
                    _i_2645551++;
                    _gotoNext = 2645547i32;
                } else if (__value__ == (2645792i32)) {
                    _name = _t_2645602?.__copy__();
                    _gotoNext = 2644870i32;
                } else if (__value__ == (2645833i32)) {
                    if (_err_2645609 != null) {
                        _gotoNext = 2645847i32;
                    } else {
                        _gotoNext = 2645592i32;
                    };
                } else if (__value__ == (2645847i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2645609 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2645592i32;
                } else if (__value__ == (2646001i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2646001i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2646022i32;
                    } else {
                        _gotoNext = 2646154i32;
                    };
                } else if (__value__ == (2646022i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2644915 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2644915?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2646078 = __tmp__._2;
                        };
                        if (_err_2646078 != null) {
                            _gotoNext = 2646119i32;
                        } else {
                            _gotoNext = 2646154i32;
                        };
                    };
                } else if (__value__ == (2646119i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2646078 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2646154i32;
                } else if (__value__ == (2646154i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2644870i32;
                } else if (__value__ == (2646176i32)) {
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
