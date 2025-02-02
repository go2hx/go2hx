package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2598200:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2597764:stdgo.Error = (null : stdgo.Error);
        var _ok_2597760:Bool = false;
        var _chunk_2597513:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2597497:Bool = false;
        var _err_2598676:stdgo.Error = (null : stdgo.Error);
        var _err_2598207:stdgo.Error = (null : stdgo.Error);
        var _ok_2598203:Bool = false;
        var _i_2598149:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2597757:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2597458i32;
                } else if (__value__ == (2597458i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2597468i32;
                } else if (__value__ == (2597468i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2597489i32;
                    } else {
                        _gotoNext = 2598774i32;
                    };
                } else if (__value__ == (2597489i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2597497 = @:tmpset0 __tmp__._0;
                        _chunk_2597513 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2597497 && (_chunk_2597513 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2597595i32;
                    } else {
                        _gotoNext = 2597757i32;
                    };
                } else if (__value__ == (2597595i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2597757i32;
                } else if (__value__ == (2597757i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2597513?.__copy__(), _name?.__copy__());
                        _t_2597757 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2597760 = @:tmpset0 __tmp__._1;
                        _err_2597764 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2597760 && (((_t_2597757.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2597995i32;
                    } else {
                        _gotoNext = 2598027i32;
                    };
                } else if (__value__ == (2597995i32)) {
                    _name = _t_2597757?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2597468i32;
                } else if (__value__ == (2598027i32)) {
                    if (_err_2597764 != null) {
                        _gotoNext = 2598041i32;
                    } else {
                        _gotoNext = 2598070i32;
                    };
                } else if (__value__ == (2598041i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2597764 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2598070i32;
                } else if (__value__ == (2598070i32)) {
                    if (_star_2597497) {
                        _gotoNext = 2598078i32;
                    } else {
                        _gotoNext = 2598599i32;
                    };
                } else if (__value__ == (2598078i32)) {
                    _i_2598149 = (0 : stdgo.GoInt);
                    _gotoNext = 2598145i32;
                } else if (__value__ == (2598145i32)) {
                    if (((_i_2598149 < (_name.length) : Bool) && (_name[(_i_2598149 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2598194i32;
                    } else {
                        _gotoNext = 2598599i32;
                    };
                } else if (__value__ == (2598190i32)) {
                    _i_2598149++;
                    _gotoNext = 2598145i32;
                } else if (__value__ == (2598194i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2597513?.__copy__(), (_name.__slice__((_i_2598149 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2598200 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2598203 = @:tmpset0 __tmp__._1;
                        _err_2598207 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2598203) {
                        _gotoNext = 2598254i32;
                    } else {
                        _gotoNext = 2598431i32;
                    };
                } else if (__value__ == (2598254i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2598200.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2598361i32;
                    } else {
                        _gotoNext = 2598390i32;
                    };
                } else if (__value__ == (2598361i32)) {
                    _i_2598149++;
                    _gotoNext = 2598145i32;
                } else if (__value__ == (2598390i32)) {
                    _name = _t_2598200?.__copy__();
                    _gotoNext = 2597468i32;
                } else if (__value__ == (2598431i32)) {
                    if (_err_2598207 != null) {
                        _gotoNext = 2598445i32;
                    } else {
                        _gotoNext = 2598190i32;
                    };
                } else if (__value__ == (2598445i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2598207 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2598190i32;
                } else if (__value__ == (2598599i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2598599i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2598620i32;
                    } else {
                        _gotoNext = 2598752i32;
                    };
                } else if (__value__ == (2598620i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2597513 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2597513?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2598676 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2598676 != null) {
                            _gotoNext = 2598717i32;
                        } else {
                            _gotoNext = 2598599i32;
                        };
                    };
                } else if (__value__ == (2598717i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2598676 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2598599i32;
                } else if (__value__ == (2598752i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2597468i32;
                } else if (__value__ == (2598774i32)) {
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
