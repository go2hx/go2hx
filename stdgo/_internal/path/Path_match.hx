package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2922493:stdgo.Error = (null : stdgo.Error);
        var _ok_2922020:Bool = false;
        var _t_2922017:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2921577:Bool = false;
        var _t_2921574:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2921314:Bool = false;
        var patternBreak = false;
        var _err_2922024:stdgo.Error = (null : stdgo.Error);
        var _i_2921966:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2921581:stdgo.Error = (null : stdgo.Error);
        var _chunk_2921330:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2921275i32;
                } else if (__value__ == (2921275i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2921285i32;
                } else if (__value__ == (2921285i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2921306i32;
                    } else {
                        _gotoNext = 2922591i32;
                    };
                } else if (__value__ == (2921306i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2921314 = @:tmpset0 __tmp__._0;
                        _chunk_2921330 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2921314 && (_chunk_2921330 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2921412i32;
                    } else {
                        _gotoNext = 2921574i32;
                    };
                } else if (__value__ == (2921412i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2921574i32;
                } else if (__value__ == (2921574i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2921330?.__copy__(), _name?.__copy__());
                        _t_2921574 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2921577 = @:tmpset0 __tmp__._1;
                        _err_2921581 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2921577 && (((_t_2921574.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2921812i32;
                    } else {
                        _gotoNext = 2921844i32;
                    };
                } else if (__value__ == (2921812i32)) {
                    _name = _t_2921574?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2921285i32;
                } else if (__value__ == (2921844i32)) {
                    if (_err_2921581 != null) {
                        _gotoNext = 2921858i32;
                    } else {
                        _gotoNext = 2921887i32;
                    };
                } else if (__value__ == (2921858i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2921581 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2921887i32;
                } else if (__value__ == (2921887i32)) {
                    if (_star_2921314) {
                        _gotoNext = 2921895i32;
                    } else {
                        _gotoNext = 2922416i32;
                    };
                } else if (__value__ == (2921895i32)) {
                    _i_2921966 = (0 : stdgo.GoInt);
                    _gotoNext = 2921962i32;
                } else if (__value__ == (2921962i32)) {
                    if (((_i_2921966 < (_name.length) : Bool) && (_name[(_i_2921966 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2922011i32;
                    } else {
                        _gotoNext = 2922416i32;
                    };
                } else if (__value__ == (2922007i32)) {
                    _i_2921966++;
                    _gotoNext = 2921962i32;
                } else if (__value__ == (2922011i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2921330?.__copy__(), (_name.__slice__((_i_2921966 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2922017 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2922020 = @:tmpset0 __tmp__._1;
                        _err_2922024 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2922020) {
                        _gotoNext = 2922071i32;
                    } else {
                        _gotoNext = 2922248i32;
                    };
                } else if (__value__ == (2922071i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2922017.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2922178i32;
                    } else {
                        _gotoNext = 2922207i32;
                    };
                } else if (__value__ == (2922178i32)) {
                    _i_2921966++;
                    _gotoNext = 2921962i32;
                } else if (__value__ == (2922207i32)) {
                    _name = _t_2922017?.__copy__();
                    _gotoNext = 2921285i32;
                } else if (__value__ == (2922248i32)) {
                    if (_err_2922024 != null) {
                        _gotoNext = 2922262i32;
                    } else {
                        _gotoNext = 2922007i32;
                    };
                } else if (__value__ == (2922262i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2922024 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2922007i32;
                } else if (__value__ == (2922416i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2922416i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2922437i32;
                    } else {
                        _gotoNext = 2922569i32;
                    };
                } else if (__value__ == (2922437i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2921330 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2921330?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2922493 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2922493 != null) {
                            _gotoNext = 2922534i32;
                        } else {
                            _gotoNext = 2922416i32;
                        };
                    };
                } else if (__value__ == (2922534i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2922493 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2922416i32;
                } else if (__value__ == (2922569i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2921285i32;
                } else if (__value__ == (2922591i32)) {
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
