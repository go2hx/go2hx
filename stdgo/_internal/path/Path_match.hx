package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2695024:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2694764:Bool = false;
        var patternBreak = false;
        var _ok_2695470:Bool = false;
        var _err_2695031:stdgo.Error = (null : stdgo.Error);
        var _ok_2695027:Bool = false;
        var _chunk_2694780:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2695943:stdgo.Error = (null : stdgo.Error);
        var _err_2695474:stdgo.Error = (null : stdgo.Error);
        var _t_2695467:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2695416:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2694725i32;
                } else if (__value__ == (2694725i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2694735i32;
                } else if (__value__ == (2694735i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2694756i32;
                    } else {
                        _gotoNext = 2696041i32;
                    };
                } else if (__value__ == (2694756i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2694764 = @:tmpset0 __tmp__._0;
                        _chunk_2694780 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2694764 && (_chunk_2694780 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2694862i32;
                    } else {
                        _gotoNext = 2695024i32;
                    };
                } else if (__value__ == (2694862i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2695024i32;
                } else if (__value__ == (2695024i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2694780?.__copy__(), _name?.__copy__());
                        _t_2695024 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2695027 = @:tmpset0 __tmp__._1;
                        _err_2695031 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2695027 && (((_t_2695024.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2695262i32;
                    } else {
                        _gotoNext = 2695294i32;
                    };
                } else if (__value__ == (2695262i32)) {
                    _name = _t_2695024?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2694735i32;
                } else if (__value__ == (2695294i32)) {
                    if (_err_2695031 != null) {
                        _gotoNext = 2695308i32;
                    } else {
                        _gotoNext = 2695337i32;
                    };
                } else if (__value__ == (2695308i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2695031 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2695337i32;
                } else if (__value__ == (2695337i32)) {
                    if (_star_2694764) {
                        _gotoNext = 2695345i32;
                    } else {
                        _gotoNext = 2695866i32;
                    };
                } else if (__value__ == (2695345i32)) {
                    _i_2695416 = (0 : stdgo.GoInt);
                    _gotoNext = 2695412i32;
                } else if (__value__ == (2695412i32)) {
                    if (((_i_2695416 < (_name.length) : Bool) && (_name[(_i_2695416 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2695461i32;
                    } else {
                        _gotoNext = 2695866i32;
                    };
                } else if (__value__ == (2695457i32)) {
                    _i_2695416++;
                    _gotoNext = 2695412i32;
                } else if (__value__ == (2695461i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2694780?.__copy__(), (_name.__slice__((_i_2695416 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2695467 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2695470 = @:tmpset0 __tmp__._1;
                        _err_2695474 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2695470) {
                        _gotoNext = 2695521i32;
                    } else {
                        _gotoNext = 2695698i32;
                    };
                } else if (__value__ == (2695521i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2695467.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2695628i32;
                    } else {
                        _gotoNext = 2695657i32;
                    };
                } else if (__value__ == (2695628i32)) {
                    _i_2695416++;
                    _gotoNext = 2695412i32;
                } else if (__value__ == (2695657i32)) {
                    _name = _t_2695467?.__copy__();
                    _gotoNext = 2694735i32;
                } else if (__value__ == (2695698i32)) {
                    if (_err_2695474 != null) {
                        _gotoNext = 2695712i32;
                    } else {
                        _gotoNext = 2695457i32;
                    };
                } else if (__value__ == (2695712i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2695474 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2695457i32;
                } else if (__value__ == (2695866i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2695866i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2695887i32;
                    } else {
                        _gotoNext = 2696019i32;
                    };
                } else if (__value__ == (2695887i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2694780 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2694780?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2695943 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2695943 != null) {
                            _gotoNext = 2695984i32;
                        } else {
                            _gotoNext = 2695866i32;
                        };
                    };
                } else if (__value__ == (2695984i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2695943 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2695866i32;
                } else if (__value__ == (2696019i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2694735i32;
                } else if (__value__ == (2696041i32)) {
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
