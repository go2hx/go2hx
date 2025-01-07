package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2706535:stdgo.Error = (null : stdgo.Error);
        var _t_2706528:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2706088:Bool = false;
        var patternBreak = false;
        var _ok_2706531:Bool = false;
        var _i_2706477:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2706092:stdgo.Error = (null : stdgo.Error);
        var _t_2706085:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2705841:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2705825:Bool = false;
        var _err_2707004:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2705786i32;
                } else if (__value__ == (2705786i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2705796i32;
                } else if (__value__ == (2705796i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2705817i32;
                    } else {
                        _gotoNext = 2707102i32;
                    };
                } else if (__value__ == (2705817i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2705825 = __tmp__._0;
                        _chunk_2705841 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2705825 && (_chunk_2705841 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2705923i32;
                    } else {
                        _gotoNext = 2706085i32;
                    };
                } else if (__value__ == (2705923i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2706085i32;
                } else if (__value__ == (2706085i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2705841?.__copy__(), _name?.__copy__());
                        _t_2706085 = __tmp__._0?.__copy__();
                        _ok_2706088 = __tmp__._1;
                        _err_2706092 = __tmp__._2;
                    };
                    if ((_ok_2706088 && (((_t_2706085.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2706323i32;
                    } else {
                        _gotoNext = 2706355i32;
                    };
                } else if (__value__ == (2706323i32)) {
                    _name = _t_2706085?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2705796i32;
                } else if (__value__ == (2706355i32)) {
                    if (_err_2706092 != null) {
                        _gotoNext = 2706369i32;
                    } else {
                        _gotoNext = 2706398i32;
                    };
                } else if (__value__ == (2706369i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2706092 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2706398i32;
                } else if (__value__ == (2706398i32)) {
                    if (_star_2705825) {
                        _gotoNext = 2706406i32;
                    } else {
                        _gotoNext = 2706927i32;
                    };
                } else if (__value__ == (2706406i32)) {
                    _i_2706477 = (0 : stdgo.GoInt);
                    _gotoNext = 2706473i32;
                } else if (__value__ == (2706473i32)) {
                    if (((_i_2706477 < (_name.length) : Bool) && (_name[(_i_2706477 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2706522i32;
                    } else {
                        _gotoNext = 2706927i32;
                    };
                } else if (__value__ == (2706518i32)) {
                    _i_2706477++;
                    _gotoNext = 2706473i32;
                } else if (__value__ == (2706522i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2705841?.__copy__(), (_name.__slice__((_i_2706477 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2706528 = __tmp__._0?.__copy__();
                        _ok_2706531 = __tmp__._1;
                        _err_2706535 = __tmp__._2;
                    };
                    if (_ok_2706531) {
                        _gotoNext = 2706582i32;
                    } else {
                        _gotoNext = 2706759i32;
                    };
                } else if (__value__ == (2706582i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2706528.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2706689i32;
                    } else {
                        _gotoNext = 2706718i32;
                    };
                } else if (__value__ == (2706689i32)) {
                    _i_2706477++;
                    _gotoNext = 2706473i32;
                } else if (__value__ == (2706718i32)) {
                    _name = _t_2706528?.__copy__();
                    _gotoNext = 2705796i32;
                } else if (__value__ == (2706759i32)) {
                    if (_err_2706535 != null) {
                        _gotoNext = 2706773i32;
                    } else {
                        _gotoNext = 2706518i32;
                    };
                } else if (__value__ == (2706773i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2706535 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2706518i32;
                } else if (__value__ == (2706927i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2706927i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2706948i32;
                    } else {
                        _gotoNext = 2707080i32;
                    };
                } else if (__value__ == (2706948i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2705841 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2705841?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2707004 = __tmp__._2;
                        };
                        if (_err_2707004 != null) {
                            _gotoNext = 2707045i32;
                        } else {
                            _gotoNext = 2706927i32;
                        };
                    };
                } else if (__value__ == (2707045i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2707004 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2706927i32;
                } else if (__value__ == (2707080i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2705796i32;
                } else if (__value__ == (2707102i32)) {
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
