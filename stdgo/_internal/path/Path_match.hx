package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2616973:stdgo.Error = (null : stdgo.Error);
        var _ok_2616500:Bool = false;
        var _ok_2616057:Bool = false;
        var _t_2616054:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2616497:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2616446:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2616061:stdgo.Error = (null : stdgo.Error);
        var _chunk_2615810:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2615794:Bool = false;
        var patternBreak = false;
        var _err_2616504:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2615755i32;
                } else if (__value__ == (2615755i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2615765i32;
                } else if (__value__ == (2615765i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2615786i32;
                    } else {
                        _gotoNext = 2617071i32;
                    };
                } else if (__value__ == (2615786i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2615794 = @:tmpset0 __tmp__._0;
                        _chunk_2615810 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2615794 && (_chunk_2615810 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2615892i32;
                    } else {
                        _gotoNext = 2616054i32;
                    };
                } else if (__value__ == (2615892i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616054i32;
                } else if (__value__ == (2616054i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2615810?.__copy__(), _name?.__copy__());
                        _t_2616054 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2616057 = @:tmpset0 __tmp__._1;
                        _err_2616061 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2616057 && (((_t_2616054.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2616292i32;
                    } else {
                        _gotoNext = 2616324i32;
                    };
                } else if (__value__ == (2616292i32)) {
                    _name = _t_2616054?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2615765i32;
                } else if (__value__ == (2616324i32)) {
                    if (_err_2616061 != null) {
                        _gotoNext = 2616338i32;
                    } else {
                        _gotoNext = 2616367i32;
                    };
                } else if (__value__ == (2616338i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2616061 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616367i32;
                } else if (__value__ == (2616367i32)) {
                    if (_star_2615794) {
                        _gotoNext = 2616375i32;
                    } else {
                        _gotoNext = 2616896i32;
                    };
                } else if (__value__ == (2616375i32)) {
                    _i_2616446 = (0 : stdgo.GoInt);
                    _gotoNext = 2616442i32;
                } else if (__value__ == (2616442i32)) {
                    if (((_i_2616446 < (_name.length) : Bool) && (_name[(_i_2616446 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2616491i32;
                    } else {
                        _gotoNext = 2616896i32;
                    };
                } else if (__value__ == (2616487i32)) {
                    _i_2616446++;
                    _gotoNext = 2616442i32;
                } else if (__value__ == (2616491i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2615810?.__copy__(), (_name.__slice__((_i_2616446 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2616497 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2616500 = @:tmpset0 __tmp__._1;
                        _err_2616504 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2616500) {
                        _gotoNext = 2616551i32;
                    } else {
                        _gotoNext = 2616728i32;
                    };
                } else if (__value__ == (2616551i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2616497.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2616658i32;
                    } else {
                        _gotoNext = 2616687i32;
                    };
                } else if (__value__ == (2616658i32)) {
                    _i_2616446++;
                    _gotoNext = 2616442i32;
                } else if (__value__ == (2616687i32)) {
                    _name = _t_2616497?.__copy__();
                    _gotoNext = 2615765i32;
                } else if (__value__ == (2616728i32)) {
                    if (_err_2616504 != null) {
                        _gotoNext = 2616742i32;
                    } else {
                        _gotoNext = 2616487i32;
                    };
                } else if (__value__ == (2616742i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2616504 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616487i32;
                } else if (__value__ == (2616896i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2616896i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2616917i32;
                    } else {
                        _gotoNext = 2617049i32;
                    };
                } else if (__value__ == (2616917i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2615810 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2615810?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2616973 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2616973 != null) {
                            _gotoNext = 2617014i32;
                        } else {
                            _gotoNext = 2616896i32;
                        };
                    };
                } else if (__value__ == (2617014i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2616973 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616896i32;
                } else if (__value__ == (2617049i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2615765i32;
                } else if (__value__ == (2617071i32)) {
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
