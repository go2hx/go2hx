package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_2616766:Bool = false;
        var _err_2617945:stdgo.Error = (null : stdgo.Error);
        var _err_2617476:stdgo.Error = (null : stdgo.Error);
        var _i_2617418:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2617033:stdgo.Error = (null : stdgo.Error);
        var _t_2617026:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2616782:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _ok_2617472:Bool = false;
        var _t_2617469:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2617029:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2616727i32;
                } else if (__value__ == (2616727i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2616737i32;
                } else if (__value__ == (2616737i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2616758i32;
                    } else {
                        _gotoNext = 2618043i32;
                    };
                } else if (__value__ == (2616758i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2616766 = @:tmpset0 __tmp__._0;
                        _chunk_2616782 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2616766 && (_chunk_2616782 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2616864i32;
                    } else {
                        _gotoNext = 2617026i32;
                    };
                } else if (__value__ == (2616864i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2617026i32;
                } else if (__value__ == (2617026i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2616782?.__copy__(), _name?.__copy__());
                        _t_2617026 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2617029 = @:tmpset0 __tmp__._1;
                        _err_2617033 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2617029 && (((_t_2617026.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2617264i32;
                    } else {
                        _gotoNext = 2617296i32;
                    };
                } else if (__value__ == (2617264i32)) {
                    _name = _t_2617026?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2616737i32;
                } else if (__value__ == (2617296i32)) {
                    if (_err_2617033 != null) {
                        _gotoNext = 2617310i32;
                    } else {
                        _gotoNext = 2617339i32;
                    };
                } else if (__value__ == (2617310i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2617033 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2617339i32;
                } else if (__value__ == (2617339i32)) {
                    if (_star_2616766) {
                        _gotoNext = 2617347i32;
                    } else {
                        _gotoNext = 2617868i32;
                    };
                } else if (__value__ == (2617347i32)) {
                    _i_2617418 = (0 : stdgo.GoInt);
                    _gotoNext = 2617414i32;
                } else if (__value__ == (2617414i32)) {
                    if (((_i_2617418 < (_name.length) : Bool) && (_name[(_i_2617418 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2617463i32;
                    } else {
                        _gotoNext = 2617868i32;
                    };
                } else if (__value__ == (2617459i32)) {
                    _i_2617418++;
                    _gotoNext = 2617414i32;
                } else if (__value__ == (2617463i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2616782?.__copy__(), (_name.__slice__((_i_2617418 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2617469 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2617472 = @:tmpset0 __tmp__._1;
                        _err_2617476 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2617472) {
                        _gotoNext = 2617523i32;
                    } else {
                        _gotoNext = 2617700i32;
                    };
                } else if (__value__ == (2617523i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2617469.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2617630i32;
                    } else {
                        _gotoNext = 2617659i32;
                    };
                } else if (__value__ == (2617630i32)) {
                    _i_2617418++;
                    _gotoNext = 2617414i32;
                } else if (__value__ == (2617659i32)) {
                    _name = _t_2617469?.__copy__();
                    _gotoNext = 2616737i32;
                } else if (__value__ == (2617700i32)) {
                    if (_err_2617476 != null) {
                        _gotoNext = 2617714i32;
                    } else {
                        _gotoNext = 2617459i32;
                    };
                } else if (__value__ == (2617714i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2617476 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2617459i32;
                } else if (__value__ == (2617868i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2617868i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2617889i32;
                    } else {
                        _gotoNext = 2618021i32;
                    };
                } else if (__value__ == (2617889i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2616782 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2616782?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2617945 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2617945 != null) {
                            _gotoNext = 2617986i32;
                        } else {
                            _gotoNext = 2617868i32;
                        };
                    };
                } else if (__value__ == (2617986i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2617945 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2617868i32;
                } else if (__value__ == (2618021i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616737i32;
                } else if (__value__ == (2618043i32)) {
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
