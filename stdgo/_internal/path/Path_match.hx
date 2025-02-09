package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_2621064:Bool = false;
        var _t_2621767:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2621716:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2621080:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2622243:stdgo.Error = (null : stdgo.Error);
        var _err_2621774:stdgo.Error = (null : stdgo.Error);
        var _ok_2621770:Bool = false;
        var _err_2621331:stdgo.Error = (null : stdgo.Error);
        var _ok_2621327:Bool = false;
        var _t_2621324:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2621025i32;
                } else if (__value__ == (2621025i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2621035i32;
                } else if (__value__ == (2621035i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2621056i32;
                    } else {
                        _gotoNext = 2622341i32;
                    };
                } else if (__value__ == (2621056i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2621064 = @:tmpset0 __tmp__._0;
                        _chunk_2621080 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2621064 && (_chunk_2621080 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2621162i32;
                    } else {
                        _gotoNext = 2621324i32;
                    };
                } else if (__value__ == (2621162i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2621324i32;
                } else if (__value__ == (2621324i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2621080?.__copy__(), _name?.__copy__());
                        _t_2621324 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2621327 = @:tmpset0 __tmp__._1;
                        _err_2621331 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2621327 && (((_t_2621324.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2621562i32;
                    } else {
                        _gotoNext = 2621594i32;
                    };
                } else if (__value__ == (2621562i32)) {
                    _name = _t_2621324?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2621035i32;
                } else if (__value__ == (2621594i32)) {
                    if (_err_2621331 != null) {
                        _gotoNext = 2621608i32;
                    } else {
                        _gotoNext = 2621637i32;
                    };
                } else if (__value__ == (2621608i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2621331 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2621637i32;
                } else if (__value__ == (2621637i32)) {
                    if (_star_2621064) {
                        _gotoNext = 2621645i32;
                    } else {
                        _gotoNext = 2622166i32;
                    };
                } else if (__value__ == (2621645i32)) {
                    _i_2621716 = (0 : stdgo.GoInt);
                    _gotoNext = 2621712i32;
                } else if (__value__ == (2621712i32)) {
                    if (((_i_2621716 < (_name.length) : Bool) && (_name[(_i_2621716 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2621761i32;
                    } else {
                        _gotoNext = 2622166i32;
                    };
                } else if (__value__ == (2621757i32)) {
                    _i_2621716++;
                    _gotoNext = 2621712i32;
                } else if (__value__ == (2621761i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2621080?.__copy__(), (_name.__slice__((_i_2621716 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2621767 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2621770 = @:tmpset0 __tmp__._1;
                        _err_2621774 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2621770) {
                        _gotoNext = 2621821i32;
                    } else {
                        _gotoNext = 2621998i32;
                    };
                } else if (__value__ == (2621821i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2621767.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2621928i32;
                    } else {
                        _gotoNext = 2621957i32;
                    };
                } else if (__value__ == (2621928i32)) {
                    _i_2621716++;
                    _gotoNext = 2621712i32;
                } else if (__value__ == (2621957i32)) {
                    _name = _t_2621767?.__copy__();
                    _gotoNext = 2621035i32;
                } else if (__value__ == (2621998i32)) {
                    if (_err_2621774 != null) {
                        _gotoNext = 2622012i32;
                    } else {
                        _gotoNext = 2621757i32;
                    };
                } else if (__value__ == (2622012i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2621774 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2621757i32;
                } else if (__value__ == (2622166i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2622166i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2622187i32;
                    } else {
                        _gotoNext = 2622319i32;
                    };
                } else if (__value__ == (2622187i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2621080 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2621080?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2622243 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2622243 != null) {
                            _gotoNext = 2622284i32;
                        } else {
                            _gotoNext = 2622166i32;
                        };
                    };
                } else if (__value__ == (2622284i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2622243 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2622166i32;
                } else if (__value__ == (2622319i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2621035i32;
                } else if (__value__ == (2622341i32)) {
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
