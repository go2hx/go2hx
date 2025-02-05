package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_2616527:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2617690:stdgo.Error = (null : stdgo.Error);
        var _i_2617163:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2616774:Bool = false;
        var _t_2616771:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2616511:Bool = false;
        var _err_2617221:stdgo.Error = (null : stdgo.Error);
        var _ok_2617217:Bool = false;
        var _t_2617214:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2616778:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2616472i32;
                } else if (__value__ == (2616472i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2616482i32;
                } else if (__value__ == (2616482i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2616503i32;
                    } else {
                        _gotoNext = 2617788i32;
                    };
                } else if (__value__ == (2616503i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2616511 = @:tmpset0 __tmp__._0;
                        _chunk_2616527 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2616511 && (_chunk_2616527 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2616609i32;
                    } else {
                        _gotoNext = 2616771i32;
                    };
                } else if (__value__ == (2616609i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616771i32;
                } else if (__value__ == (2616771i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2616527?.__copy__(), _name?.__copy__());
                        _t_2616771 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2616774 = @:tmpset0 __tmp__._1;
                        _err_2616778 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2616774 && (((_t_2616771.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2617009i32;
                    } else {
                        _gotoNext = 2617041i32;
                    };
                } else if (__value__ == (2617009i32)) {
                    _name = _t_2616771?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2616482i32;
                } else if (__value__ == (2617041i32)) {
                    if (_err_2616778 != null) {
                        _gotoNext = 2617055i32;
                    } else {
                        _gotoNext = 2617084i32;
                    };
                } else if (__value__ == (2617055i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2616778 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2617084i32;
                } else if (__value__ == (2617084i32)) {
                    if (_star_2616511) {
                        _gotoNext = 2617092i32;
                    } else {
                        _gotoNext = 2617613i32;
                    };
                } else if (__value__ == (2617092i32)) {
                    _i_2617163 = (0 : stdgo.GoInt);
                    _gotoNext = 2617159i32;
                } else if (__value__ == (2617159i32)) {
                    if (((_i_2617163 < (_name.length) : Bool) && (_name[(_i_2617163 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2617208i32;
                    } else {
                        _gotoNext = 2617613i32;
                    };
                } else if (__value__ == (2617204i32)) {
                    _i_2617163++;
                    _gotoNext = 2617159i32;
                } else if (__value__ == (2617208i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2616527?.__copy__(), (_name.__slice__((_i_2617163 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2617214 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2617217 = @:tmpset0 __tmp__._1;
                        _err_2617221 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2617217) {
                        _gotoNext = 2617268i32;
                    } else {
                        _gotoNext = 2617445i32;
                    };
                } else if (__value__ == (2617268i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2617214.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2617375i32;
                    } else {
                        _gotoNext = 2617404i32;
                    };
                } else if (__value__ == (2617375i32)) {
                    _i_2617163++;
                    _gotoNext = 2617159i32;
                } else if (__value__ == (2617404i32)) {
                    _name = _t_2617214?.__copy__();
                    _gotoNext = 2616482i32;
                } else if (__value__ == (2617445i32)) {
                    if (_err_2617221 != null) {
                        _gotoNext = 2617459i32;
                    } else {
                        _gotoNext = 2617204i32;
                    };
                } else if (__value__ == (2617459i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2617221 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2617204i32;
                } else if (__value__ == (2617613i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2617613i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2617634i32;
                    } else {
                        _gotoNext = 2617766i32;
                    };
                } else if (__value__ == (2617634i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2616527 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2616527?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2617690 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2617690 != null) {
                            _gotoNext = 2617731i32;
                        } else {
                            _gotoNext = 2617613i32;
                        };
                    };
                } else if (__value__ == (2617731i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2617690 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2617613i32;
                } else if (__value__ == (2617766i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616482i32;
                } else if (__value__ == (2617788i32)) {
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
