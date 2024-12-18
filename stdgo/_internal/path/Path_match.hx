package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2701892:stdgo.Error = (null : stdgo.Error);
        var _err_2701423:stdgo.Error = (null : stdgo.Error);
        var _ok_2701419:Bool = false;
        var _i_2701365:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2700980:stdgo.Error = (null : stdgo.Error);
        var _chunk_2700729:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2701416:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2700976:Bool = false;
        var _t_2700973:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2700713:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2700674i32;
                } else if (__value__ == (2700674i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2700684i32;
                } else if (__value__ == (2700684i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2700705i32;
                    } else {
                        _gotoNext = 2701990i32;
                    };
                } else if (__value__ == (2700705i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2700713 = __tmp__._0;
                        _chunk_2700729 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2700713 && (_chunk_2700729 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2700811i32;
                    } else {
                        _gotoNext = 2700973i32;
                    };
                } else if (__value__ == (2700811i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2700973i32;
                } else if (__value__ == (2700973i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2700729?.__copy__(), _name?.__copy__());
                        _t_2700973 = __tmp__._0?.__copy__();
                        _ok_2700976 = __tmp__._1;
                        _err_2700980 = __tmp__._2;
                    };
                    if ((_ok_2700976 && (((_t_2700973.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2701211i32;
                    } else {
                        _gotoNext = 2701243i32;
                    };
                } else if (__value__ == (2701211i32)) {
                    _name = _t_2700973?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2700684i32;
                } else if (__value__ == (2701243i32)) {
                    if (_err_2700980 != null) {
                        _gotoNext = 2701257i32;
                    } else {
                        _gotoNext = 2701286i32;
                    };
                } else if (__value__ == (2701257i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2700980 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2701286i32;
                } else if (__value__ == (2701286i32)) {
                    if (_star_2700713) {
                        _gotoNext = 2701294i32;
                    } else {
                        _gotoNext = 2701815i32;
                    };
                } else if (__value__ == (2701294i32)) {
                    _i_2701365 = (0 : stdgo.GoInt);
                    _gotoNext = 2701361i32;
                } else if (__value__ == (2701361i32)) {
                    if (((_i_2701365 < (_name.length) : Bool) && (_name[(_i_2701365 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2701410i32;
                    } else {
                        _gotoNext = 2701815i32;
                    };
                } else if (__value__ == (2701406i32)) {
                    _i_2701365++;
                    _gotoNext = 2701361i32;
                } else if (__value__ == (2701410i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2700729?.__copy__(), (_name.__slice__((_i_2701365 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2701416 = __tmp__._0?.__copy__();
                        _ok_2701419 = __tmp__._1;
                        _err_2701423 = __tmp__._2;
                    };
                    if (_ok_2701419) {
                        _gotoNext = 2701470i32;
                    } else {
                        _gotoNext = 2701647i32;
                    };
                } else if (__value__ == (2701470i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2701416.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2701577i32;
                    } else {
                        _gotoNext = 2701606i32;
                    };
                } else if (__value__ == (2701577i32)) {
                    _i_2701365++;
                    _gotoNext = 2701361i32;
                } else if (__value__ == (2701606i32)) {
                    _name = _t_2701416?.__copy__();
                    _gotoNext = 2700684i32;
                } else if (__value__ == (2701647i32)) {
                    if (_err_2701423 != null) {
                        _gotoNext = 2701661i32;
                    } else {
                        _gotoNext = 2701406i32;
                    };
                } else if (__value__ == (2701661i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2701423 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2701406i32;
                } else if (__value__ == (2701815i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2701815i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2701836i32;
                    } else {
                        _gotoNext = 2701968i32;
                    };
                } else if (__value__ == (2701836i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2700729 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2700729?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2701892 = __tmp__._2;
                        };
                        if (_err_2701892 != null) {
                            _gotoNext = 2701933i32;
                        } else {
                            _gotoNext = 2701968i32;
                        };
                    };
                } else if (__value__ == (2701933i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2701892 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2701968i32;
                } else if (__value__ == (2701968i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2700684i32;
                } else if (__value__ == (2701990i32)) {
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
