package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2705296:stdgo.Error = (null : stdgo.Error);
        var _ok_2705292:Bool = false;
        var _t_2705289:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2704853:stdgo.Error = (null : stdgo.Error);
        var _t_2704846:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2704586:Bool = false;
        var patternBreak = false;
        var _err_2705765:stdgo.Error = (null : stdgo.Error);
        var _i_2705238:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2704849:Bool = false;
        var _chunk_2704602:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2704547i32;
                } else if (__value__ == (2704547i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2704557i32;
                } else if (__value__ == (2704557i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2704578i32;
                    } else {
                        _gotoNext = 2705863i32;
                    };
                } else if (__value__ == (2704578i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2704586 = @:tmpset0 __tmp__._0;
                        _chunk_2704602 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2704586 && (_chunk_2704602 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2704684i32;
                    } else {
                        _gotoNext = 2704846i32;
                    };
                } else if (__value__ == (2704684i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2704846i32;
                } else if (__value__ == (2704846i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2704602?.__copy__(), _name?.__copy__());
                        _t_2704846 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2704849 = @:tmpset0 __tmp__._1;
                        _err_2704853 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2704849 && (((_t_2704846.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2705084i32;
                    } else {
                        _gotoNext = 2705116i32;
                    };
                } else if (__value__ == (2705084i32)) {
                    _name = _t_2704846?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2704557i32;
                } else if (__value__ == (2705116i32)) {
                    if (_err_2704853 != null) {
                        _gotoNext = 2705130i32;
                    } else {
                        _gotoNext = 2705159i32;
                    };
                } else if (__value__ == (2705130i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2704853 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2705159i32;
                } else if (__value__ == (2705159i32)) {
                    if (_star_2704586) {
                        _gotoNext = 2705167i32;
                    } else {
                        _gotoNext = 2705688i32;
                    };
                } else if (__value__ == (2705167i32)) {
                    _i_2705238 = (0 : stdgo.GoInt);
                    _gotoNext = 2705234i32;
                } else if (__value__ == (2705234i32)) {
                    if (((_i_2705238 < (_name.length) : Bool) && (_name[(_i_2705238 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2705283i32;
                    } else {
                        _gotoNext = 2705688i32;
                    };
                } else if (__value__ == (2705279i32)) {
                    _i_2705238++;
                    _gotoNext = 2705234i32;
                } else if (__value__ == (2705283i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2704602?.__copy__(), (_name.__slice__((_i_2705238 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2705289 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2705292 = @:tmpset0 __tmp__._1;
                        _err_2705296 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2705292) {
                        _gotoNext = 2705343i32;
                    } else {
                        _gotoNext = 2705520i32;
                    };
                } else if (__value__ == (2705343i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2705289.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2705450i32;
                    } else {
                        _gotoNext = 2705479i32;
                    };
                } else if (__value__ == (2705450i32)) {
                    _i_2705238++;
                    _gotoNext = 2705234i32;
                } else if (__value__ == (2705479i32)) {
                    _name = _t_2705289?.__copy__();
                    _gotoNext = 2704557i32;
                } else if (__value__ == (2705520i32)) {
                    if (_err_2705296 != null) {
                        _gotoNext = 2705534i32;
                    } else {
                        _gotoNext = 2705279i32;
                    };
                } else if (__value__ == (2705534i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2705296 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2705279i32;
                } else if (__value__ == (2705688i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2705688i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2705709i32;
                    } else {
                        _gotoNext = 2705841i32;
                    };
                } else if (__value__ == (2705709i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2704602 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2704602?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2705765 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2705765 != null) {
                            _gotoNext = 2705806i32;
                        } else {
                            _gotoNext = 2705688i32;
                        };
                    };
                } else if (__value__ == (2705806i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2705765 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2705688i32;
                } else if (__value__ == (2705841i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2704557i32;
                } else if (__value__ == (2705863i32)) {
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
