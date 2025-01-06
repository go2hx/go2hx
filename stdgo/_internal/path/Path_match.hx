package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2578818:Bool = false;
        var _err_2579265:stdgo.Error = (null : stdgo.Error);
        var _ok_2579261:Bool = false;
        var _t_2579258:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2579207:stdgo.GoInt = (0 : stdgo.GoInt);
        var patternBreak = false;
        var _err_2579734:stdgo.Error = (null : stdgo.Error);
        var _err_2578822:stdgo.Error = (null : stdgo.Error);
        var _t_2578815:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2578571:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2578555:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2578516i32;
                } else if (__value__ == (2578516i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2578526i32;
                } else if (__value__ == (2578526i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2578547i32;
                    } else {
                        _gotoNext = 2579832i32;
                    };
                } else if (__value__ == (2578547i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2578555 = __tmp__._0;
                        _chunk_2578571 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2578555 && (_chunk_2578571 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2578653i32;
                    } else {
                        _gotoNext = 2578815i32;
                    };
                } else if (__value__ == (2578653i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2578815i32;
                } else if (__value__ == (2578815i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2578571?.__copy__(), _name?.__copy__());
                        _t_2578815 = __tmp__._0?.__copy__();
                        _ok_2578818 = __tmp__._1;
                        _err_2578822 = __tmp__._2;
                    };
                    if ((_ok_2578818 && (((_t_2578815.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2579053i32;
                    } else {
                        _gotoNext = 2579085i32;
                    };
                } else if (__value__ == (2579053i32)) {
                    _name = _t_2578815?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2578526i32;
                } else if (__value__ == (2579085i32)) {
                    if (_err_2578822 != null) {
                        _gotoNext = 2579099i32;
                    } else {
                        _gotoNext = 2579128i32;
                    };
                } else if (__value__ == (2579099i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2578822 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2579128i32;
                } else if (__value__ == (2579128i32)) {
                    if (_star_2578555) {
                        _gotoNext = 2579136i32;
                    } else {
                        _gotoNext = 2579657i32;
                    };
                } else if (__value__ == (2579136i32)) {
                    _i_2579207 = (0 : stdgo.GoInt);
                    _gotoNext = 2579203i32;
                } else if (__value__ == (2579203i32)) {
                    if (((_i_2579207 < (_name.length) : Bool) && (_name[(_i_2579207 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2579252i32;
                    } else {
                        _gotoNext = 2579657i32;
                    };
                } else if (__value__ == (2579248i32)) {
                    _i_2579207++;
                    _gotoNext = 2579203i32;
                } else if (__value__ == (2579252i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2578571?.__copy__(), (_name.__slice__((_i_2579207 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2579258 = __tmp__._0?.__copy__();
                        _ok_2579261 = __tmp__._1;
                        _err_2579265 = __tmp__._2;
                    };
                    if (_ok_2579261) {
                        _gotoNext = 2579312i32;
                    } else {
                        _gotoNext = 2579489i32;
                    };
                } else if (__value__ == (2579312i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2579258.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2579419i32;
                    } else {
                        _gotoNext = 2579448i32;
                    };
                } else if (__value__ == (2579419i32)) {
                    _i_2579207++;
                    _gotoNext = 2579203i32;
                } else if (__value__ == (2579448i32)) {
                    _name = _t_2579258?.__copy__();
                    _gotoNext = 2578526i32;
                } else if (__value__ == (2579489i32)) {
                    if (_err_2579265 != null) {
                        _gotoNext = 2579503i32;
                    } else {
                        _gotoNext = 2579248i32;
                    };
                } else if (__value__ == (2579503i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2579265 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2579248i32;
                } else if (__value__ == (2579657i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2579657i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2579678i32;
                    } else {
                        _gotoNext = 2579810i32;
                    };
                } else if (__value__ == (2579678i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2578571 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2578571?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2579734 = __tmp__._2;
                        };
                        if (_err_2579734 != null) {
                            _gotoNext = 2579775i32;
                        } else {
                            _gotoNext = 2579657i32;
                        };
                    };
                } else if (__value__ == (2579775i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2579734 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2579657i32;
                } else if (__value__ == (2579810i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2578526i32;
                } else if (__value__ == (2579832i32)) {
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
