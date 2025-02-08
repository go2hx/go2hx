package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_2577953:Bool = false;
        var patternBreak = false;
        var _ok_2578659:Bool = false;
        var _t_2578656:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2578220:stdgo.Error = (null : stdgo.Error);
        var _ok_2578216:Bool = false;
        var _t_2578213:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2577969:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2578663:stdgo.Error = (null : stdgo.Error);
        var _i_2578605:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2579132:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2577914i32;
                } else if (__value__ == (2577914i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2577924i32;
                } else if (__value__ == (2577924i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2577945i32;
                    } else {
                        _gotoNext = 2579230i32;
                    };
                } else if (__value__ == (2577945i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2577953 = @:tmpset0 __tmp__._0;
                        _chunk_2577969 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2577953 && (_chunk_2577969 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2578051i32;
                    } else {
                        _gotoNext = 2578213i32;
                    };
                } else if (__value__ == (2578051i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2578213i32;
                } else if (__value__ == (2578213i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2577969?.__copy__(), _name?.__copy__());
                        _t_2578213 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2578216 = @:tmpset0 __tmp__._1;
                        _err_2578220 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2578216 && (((_t_2578213.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2578451i32;
                    } else {
                        _gotoNext = 2578483i32;
                    };
                } else if (__value__ == (2578451i32)) {
                    _name = _t_2578213?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2577924i32;
                } else if (__value__ == (2578483i32)) {
                    if (_err_2578220 != null) {
                        _gotoNext = 2578497i32;
                    } else {
                        _gotoNext = 2578526i32;
                    };
                } else if (__value__ == (2578497i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2578220 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2578526i32;
                } else if (__value__ == (2578526i32)) {
                    if (_star_2577953) {
                        _gotoNext = 2578534i32;
                    } else {
                        _gotoNext = 2579055i32;
                    };
                } else if (__value__ == (2578534i32)) {
                    _i_2578605 = (0 : stdgo.GoInt);
                    _gotoNext = 2578601i32;
                } else if (__value__ == (2578601i32)) {
                    if (((_i_2578605 < (_name.length) : Bool) && (_name[(_i_2578605 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2578650i32;
                    } else {
                        _gotoNext = 2579055i32;
                    };
                } else if (__value__ == (2578646i32)) {
                    _i_2578605++;
                    _gotoNext = 2578601i32;
                } else if (__value__ == (2578650i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2577969?.__copy__(), (_name.__slice__((_i_2578605 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2578656 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2578659 = @:tmpset0 __tmp__._1;
                        _err_2578663 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2578659) {
                        _gotoNext = 2578710i32;
                    } else {
                        _gotoNext = 2578887i32;
                    };
                } else if (__value__ == (2578710i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2578656.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2578817i32;
                    } else {
                        _gotoNext = 2578846i32;
                    };
                } else if (__value__ == (2578817i32)) {
                    _i_2578605++;
                    _gotoNext = 2578601i32;
                } else if (__value__ == (2578846i32)) {
                    _name = _t_2578656?.__copy__();
                    _gotoNext = 2577924i32;
                } else if (__value__ == (2578887i32)) {
                    if (_err_2578663 != null) {
                        _gotoNext = 2578901i32;
                    } else {
                        _gotoNext = 2578646i32;
                    };
                } else if (__value__ == (2578901i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2578663 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2578646i32;
                } else if (__value__ == (2579055i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2579055i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2579076i32;
                    } else {
                        _gotoNext = 2579208i32;
                    };
                } else if (__value__ == (2579076i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2577969 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2577969?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2579132 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2579132 != null) {
                            _gotoNext = 2579173i32;
                        } else {
                            _gotoNext = 2579055i32;
                        };
                    };
                } else if (__value__ == (2579173i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2579132 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2579055i32;
                } else if (__value__ == (2579208i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2577924i32;
                } else if (__value__ == (2579230i32)) {
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
