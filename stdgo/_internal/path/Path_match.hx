package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2567027:stdgo.Error = (null : stdgo.Error);
        var _t_2567020:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2566969:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2566333:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2567496:stdgo.Error = (null : stdgo.Error);
        var _ok_2567023:Bool = false;
        var _err_2566584:stdgo.Error = (null : stdgo.Error);
        var _ok_2566580:Bool = false;
        var _t_2566577:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2566317:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2566278i32;
                } else if (__value__ == (2566278i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2566288i32;
                } else if (__value__ == (2566288i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2566309i32;
                    } else {
                        _gotoNext = 2567594i32;
                    };
                } else if (__value__ == (2566309i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2566317 = @:tmpset0 __tmp__._0;
                        _chunk_2566333 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2566317 && (_chunk_2566333 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2566415i32;
                    } else {
                        _gotoNext = 2566577i32;
                    };
                } else if (__value__ == (2566415i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2566577i32;
                } else if (__value__ == (2566577i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2566333?.__copy__(), _name?.__copy__());
                        _t_2566577 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2566580 = @:tmpset0 __tmp__._1;
                        _err_2566584 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2566580 && (((_t_2566577.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2566815i32;
                    } else {
                        _gotoNext = 2566847i32;
                    };
                } else if (__value__ == (2566815i32)) {
                    _name = _t_2566577?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2566288i32;
                } else if (__value__ == (2566847i32)) {
                    if (_err_2566584 != null) {
                        _gotoNext = 2566861i32;
                    } else {
                        _gotoNext = 2566890i32;
                    };
                } else if (__value__ == (2566861i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2566584 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2566890i32;
                } else if (__value__ == (2566890i32)) {
                    if (_star_2566317) {
                        _gotoNext = 2566898i32;
                    } else {
                        _gotoNext = 2567419i32;
                    };
                } else if (__value__ == (2566898i32)) {
                    _i_2566969 = (0 : stdgo.GoInt);
                    _gotoNext = 2566965i32;
                } else if (__value__ == (2566965i32)) {
                    if (((_i_2566969 < (_name.length) : Bool) && (_name[(_i_2566969 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2567014i32;
                    } else {
                        _gotoNext = 2567419i32;
                    };
                } else if (__value__ == (2567010i32)) {
                    _i_2566969++;
                    _gotoNext = 2566965i32;
                } else if (__value__ == (2567014i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2566333?.__copy__(), (_name.__slice__((_i_2566969 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2567020 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2567023 = @:tmpset0 __tmp__._1;
                        _err_2567027 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2567023) {
                        _gotoNext = 2567074i32;
                    } else {
                        _gotoNext = 2567251i32;
                    };
                } else if (__value__ == (2567074i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2567020.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2567181i32;
                    } else {
                        _gotoNext = 2567210i32;
                    };
                } else if (__value__ == (2567181i32)) {
                    _i_2566969++;
                    _gotoNext = 2566965i32;
                } else if (__value__ == (2567210i32)) {
                    _name = _t_2567020?.__copy__();
                    _gotoNext = 2566288i32;
                } else if (__value__ == (2567251i32)) {
                    if (_err_2567027 != null) {
                        _gotoNext = 2567265i32;
                    } else {
                        _gotoNext = 2567010i32;
                    };
                } else if (__value__ == (2567265i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2567027 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2567010i32;
                } else if (__value__ == (2567419i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2567419i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2567440i32;
                    } else {
                        _gotoNext = 2567572i32;
                    };
                } else if (__value__ == (2567440i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2566333 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2566333?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2567496 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2567496 != null) {
                            _gotoNext = 2567537i32;
                        } else {
                            _gotoNext = 2567419i32;
                        };
                    };
                } else if (__value__ == (2567537i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2567496 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2567419i32;
                } else if (__value__ == (2567572i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2566288i32;
                } else if (__value__ == (2567594i32)) {
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
