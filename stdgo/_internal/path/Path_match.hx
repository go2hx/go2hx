package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2625248:Bool = false;
        var _t_2625245:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2625001:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2625252:stdgo.Error = (null : stdgo.Error);
        var _ok_2625691:Bool = false;
        var _t_2625688:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2625637:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_2624985:Bool = false;
        var _err_2626164:stdgo.Error = (null : stdgo.Error);
        var _err_2625695:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2624946i32;
                } else if (__value__ == (2624946i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2624956i32;
                } else if (__value__ == (2624956i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2624977i32;
                    } else {
                        _gotoNext = 2626262i32;
                    };
                } else if (__value__ == (2624977i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2624985 = @:tmpset0 __tmp__._0;
                        _chunk_2625001 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2624985 && (_chunk_2625001 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2625083i32;
                    } else {
                        _gotoNext = 2625245i32;
                    };
                } else if (__value__ == (2625083i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625245i32;
                } else if (__value__ == (2625245i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2625001?.__copy__(), _name?.__copy__());
                        _t_2625245 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2625248 = @:tmpset0 __tmp__._1;
                        _err_2625252 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2625248 && (((_t_2625245.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2625483i32;
                    } else {
                        _gotoNext = 2625515i32;
                    };
                } else if (__value__ == (2625483i32)) {
                    _name = _t_2625245?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2624956i32;
                } else if (__value__ == (2625515i32)) {
                    if (_err_2625252 != null) {
                        _gotoNext = 2625529i32;
                    } else {
                        _gotoNext = 2625558i32;
                    };
                } else if (__value__ == (2625529i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2625252 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625558i32;
                } else if (__value__ == (2625558i32)) {
                    if (_star_2624985) {
                        _gotoNext = 2625566i32;
                    } else {
                        _gotoNext = 2626087i32;
                    };
                } else if (__value__ == (2625566i32)) {
                    _i_2625637 = (0 : stdgo.GoInt);
                    _gotoNext = 2625633i32;
                } else if (__value__ == (2625633i32)) {
                    if (((_i_2625637 < (_name.length) : Bool) && (_name[(_i_2625637 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2625682i32;
                    } else {
                        _gotoNext = 2626087i32;
                    };
                } else if (__value__ == (2625678i32)) {
                    _i_2625637++;
                    _gotoNext = 2625633i32;
                } else if (__value__ == (2625682i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2625001?.__copy__(), (_name.__slice__((_i_2625637 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2625688 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2625691 = @:tmpset0 __tmp__._1;
                        _err_2625695 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2625691) {
                        _gotoNext = 2625742i32;
                    } else {
                        _gotoNext = 2625919i32;
                    };
                } else if (__value__ == (2625742i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2625688.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2625849i32;
                    } else {
                        _gotoNext = 2625878i32;
                    };
                } else if (__value__ == (2625849i32)) {
                    _i_2625637++;
                    _gotoNext = 2625633i32;
                } else if (__value__ == (2625878i32)) {
                    _name = _t_2625688?.__copy__();
                    _gotoNext = 2624956i32;
                } else if (__value__ == (2625919i32)) {
                    if (_err_2625695 != null) {
                        _gotoNext = 2625933i32;
                    } else {
                        _gotoNext = 2625678i32;
                    };
                } else if (__value__ == (2625933i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2625695 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625678i32;
                } else if (__value__ == (2626087i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2626087i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2626108i32;
                    } else {
                        _gotoNext = 2626240i32;
                    };
                } else if (__value__ == (2626108i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2625001 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2625001?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2626164 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2626164 != null) {
                            _gotoNext = 2626205i32;
                        } else {
                            _gotoNext = 2626087i32;
                        };
                    };
                } else if (__value__ == (2626205i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2626164 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2626087i32;
                } else if (__value__ == (2626240i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2624956i32;
                } else if (__value__ == (2626262i32)) {
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
