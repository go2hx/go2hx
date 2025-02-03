package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2868212:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2868161:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2867772:Bool = false;
        var _chunk_2867525:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2868688:stdgo.Error = (null : stdgo.Error);
        var _ok_2868215:Bool = false;
        var _err_2867776:stdgo.Error = (null : stdgo.Error);
        var _t_2867769:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2867509:Bool = false;
        var patternBreak = false;
        var _err_2868219:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2867470i32;
                } else if (__value__ == (2867470i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2867480i32;
                } else if (__value__ == (2867480i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2867501i32;
                    } else {
                        _gotoNext = 2868786i32;
                    };
                } else if (__value__ == (2867501i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2867509 = @:tmpset0 __tmp__._0;
                        _chunk_2867525 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2867509 && (_chunk_2867525 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2867607i32;
                    } else {
                        _gotoNext = 2867769i32;
                    };
                } else if (__value__ == (2867607i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2867769i32;
                } else if (__value__ == (2867769i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2867525?.__copy__(), _name?.__copy__());
                        _t_2867769 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2867772 = @:tmpset0 __tmp__._1;
                        _err_2867776 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2867772 && (((_t_2867769.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2868007i32;
                    } else {
                        _gotoNext = 2868039i32;
                    };
                } else if (__value__ == (2868007i32)) {
                    _name = _t_2867769?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2867480i32;
                } else if (__value__ == (2868039i32)) {
                    if (_err_2867776 != null) {
                        _gotoNext = 2868053i32;
                    } else {
                        _gotoNext = 2868082i32;
                    };
                } else if (__value__ == (2868053i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2867776 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2868082i32;
                } else if (__value__ == (2868082i32)) {
                    if (_star_2867509) {
                        _gotoNext = 2868090i32;
                    } else {
                        _gotoNext = 2868611i32;
                    };
                } else if (__value__ == (2868090i32)) {
                    _i_2868161 = (0 : stdgo.GoInt);
                    _gotoNext = 2868157i32;
                } else if (__value__ == (2868157i32)) {
                    if (((_i_2868161 < (_name.length) : Bool) && (_name[(_i_2868161 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2868206i32;
                    } else {
                        _gotoNext = 2868611i32;
                    };
                } else if (__value__ == (2868202i32)) {
                    _i_2868161++;
                    _gotoNext = 2868157i32;
                } else if (__value__ == (2868206i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2867525?.__copy__(), (_name.__slice__((_i_2868161 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2868212 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2868215 = @:tmpset0 __tmp__._1;
                        _err_2868219 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2868215) {
                        _gotoNext = 2868266i32;
                    } else {
                        _gotoNext = 2868443i32;
                    };
                } else if (__value__ == (2868266i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2868212.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2868373i32;
                    } else {
                        _gotoNext = 2868402i32;
                    };
                } else if (__value__ == (2868373i32)) {
                    _i_2868161++;
                    _gotoNext = 2868157i32;
                } else if (__value__ == (2868402i32)) {
                    _name = _t_2868212?.__copy__();
                    _gotoNext = 2867480i32;
                } else if (__value__ == (2868443i32)) {
                    if (_err_2868219 != null) {
                        _gotoNext = 2868457i32;
                    } else {
                        _gotoNext = 2868202i32;
                    };
                } else if (__value__ == (2868457i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2868219 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2868202i32;
                } else if (__value__ == (2868611i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2868611i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2868632i32;
                    } else {
                        _gotoNext = 2868764i32;
                    };
                } else if (__value__ == (2868632i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2867525 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2867525?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2868688 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2868688 != null) {
                            _gotoNext = 2868729i32;
                        } else {
                            _gotoNext = 2868611i32;
                        };
                    };
                } else if (__value__ == (2868729i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2868688 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2868611i32;
                } else if (__value__ == (2868764i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2867480i32;
                } else if (__value__ == (2868786i32)) {
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
