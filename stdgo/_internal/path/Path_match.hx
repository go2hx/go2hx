package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2759937:stdgo.Error = (null : stdgo.Error);
        var _t_2759461:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2759410:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2759025:stdgo.Error = (null : stdgo.Error);
        var _t_2759018:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2758774:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2758758:Bool = false;
        var patternBreak = false;
        var _err_2759468:stdgo.Error = (null : stdgo.Error);
        var _ok_2759464:Bool = false;
        var _ok_2759021:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2758719i32;
                } else if (__value__ == (2758719i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2758729i32;
                } else if (__value__ == (2758729i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2758750i32;
                    } else {
                        _gotoNext = 2760035i32;
                    };
                } else if (__value__ == (2758750i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2758758 = @:tmpset0 __tmp__._0;
                        _chunk_2758774 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2758758 && (_chunk_2758774 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2758856i32;
                    } else {
                        _gotoNext = 2759018i32;
                    };
                } else if (__value__ == (2758856i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2759018i32;
                } else if (__value__ == (2759018i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2758774?.__copy__(), _name?.__copy__());
                        _t_2759018 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2759021 = @:tmpset0 __tmp__._1;
                        _err_2759025 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2759021 && (((_t_2759018.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2759256i32;
                    } else {
                        _gotoNext = 2759288i32;
                    };
                } else if (__value__ == (2759256i32)) {
                    _name = _t_2759018?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2758729i32;
                } else if (__value__ == (2759288i32)) {
                    if (_err_2759025 != null) {
                        _gotoNext = 2759302i32;
                    } else {
                        _gotoNext = 2759331i32;
                    };
                } else if (__value__ == (2759302i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2759025 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2759331i32;
                } else if (__value__ == (2759331i32)) {
                    if (_star_2758758) {
                        _gotoNext = 2759339i32;
                    } else {
                        _gotoNext = 2759860i32;
                    };
                } else if (__value__ == (2759339i32)) {
                    _i_2759410 = (0 : stdgo.GoInt);
                    _gotoNext = 2759406i32;
                } else if (__value__ == (2759406i32)) {
                    if (((_i_2759410 < (_name.length) : Bool) && (_name[(_i_2759410 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2759455i32;
                    } else {
                        _gotoNext = 2759860i32;
                    };
                } else if (__value__ == (2759451i32)) {
                    _i_2759410++;
                    _gotoNext = 2759406i32;
                } else if (__value__ == (2759455i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2758774?.__copy__(), (_name.__slice__((_i_2759410 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2759461 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2759464 = @:tmpset0 __tmp__._1;
                        _err_2759468 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2759464) {
                        _gotoNext = 2759515i32;
                    } else {
                        _gotoNext = 2759692i32;
                    };
                } else if (__value__ == (2759515i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2759461.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2759622i32;
                    } else {
                        _gotoNext = 2759651i32;
                    };
                } else if (__value__ == (2759622i32)) {
                    _i_2759410++;
                    _gotoNext = 2759406i32;
                } else if (__value__ == (2759651i32)) {
                    _name = _t_2759461?.__copy__();
                    _gotoNext = 2758729i32;
                } else if (__value__ == (2759692i32)) {
                    if (_err_2759468 != null) {
                        _gotoNext = 2759706i32;
                    } else {
                        _gotoNext = 2759451i32;
                    };
                } else if (__value__ == (2759706i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2759468 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2759451i32;
                } else if (__value__ == (2759860i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2759860i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2759881i32;
                    } else {
                        _gotoNext = 2760013i32;
                    };
                } else if (__value__ == (2759881i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2758774 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2758774?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2759937 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2759937 != null) {
                            _gotoNext = 2759978i32;
                        } else {
                            _gotoNext = 2759860i32;
                        };
                    };
                } else if (__value__ == (2759978i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2759937 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2759860i32;
                } else if (__value__ == (2760013i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2758729i32;
                } else if (__value__ == (2760035i32)) {
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
