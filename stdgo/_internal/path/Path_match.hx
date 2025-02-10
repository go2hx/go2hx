package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2602371:Bool = false;
        var _chunk_2602124:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2603287:stdgo.Error = (null : stdgo.Error);
        var _err_2602818:stdgo.Error = (null : stdgo.Error);
        var _i_2602760:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2602375:stdgo.Error = (null : stdgo.Error);
        var _t_2602368:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2602108:Bool = false;
        var _ok_2602814:Bool = false;
        var _t_2602811:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2602069i32;
                } else if (__value__ == (2602069i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2602079i32;
                } else if (__value__ == (2602079i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2602100i32;
                    } else {
                        _gotoNext = 2603385i32;
                    };
                } else if (__value__ == (2602100i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2602108 = @:tmpset0 __tmp__._0;
                        _chunk_2602124 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2602108 && (_chunk_2602124 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2602206i32;
                    } else {
                        _gotoNext = 2602368i32;
                    };
                } else if (__value__ == (2602206i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2602368i32;
                } else if (__value__ == (2602368i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2602124?.__copy__(), _name?.__copy__());
                        _t_2602368 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2602371 = @:tmpset0 __tmp__._1;
                        _err_2602375 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2602371 && (((_t_2602368.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2602606i32;
                    } else {
                        _gotoNext = 2602638i32;
                    };
                } else if (__value__ == (2602606i32)) {
                    _name = _t_2602368?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2602079i32;
                } else if (__value__ == (2602638i32)) {
                    if (_err_2602375 != null) {
                        _gotoNext = 2602652i32;
                    } else {
                        _gotoNext = 2602681i32;
                    };
                } else if (__value__ == (2602652i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2602375 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2602681i32;
                } else if (__value__ == (2602681i32)) {
                    if (_star_2602108) {
                        _gotoNext = 2602689i32;
                    } else {
                        _gotoNext = 2603210i32;
                    };
                } else if (__value__ == (2602689i32)) {
                    _i_2602760 = (0 : stdgo.GoInt);
                    _gotoNext = 2602756i32;
                } else if (__value__ == (2602756i32)) {
                    if (((_i_2602760 < (_name.length) : Bool) && (_name[(_i_2602760 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2602805i32;
                    } else {
                        _gotoNext = 2603210i32;
                    };
                } else if (__value__ == (2602801i32)) {
                    _i_2602760++;
                    _gotoNext = 2602756i32;
                } else if (__value__ == (2602805i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2602124?.__copy__(), (_name.__slice__((_i_2602760 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2602811 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2602814 = @:tmpset0 __tmp__._1;
                        _err_2602818 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2602814) {
                        _gotoNext = 2602865i32;
                    } else {
                        _gotoNext = 2603042i32;
                    };
                } else if (__value__ == (2602865i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2602811.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2602972i32;
                    } else {
                        _gotoNext = 2603001i32;
                    };
                } else if (__value__ == (2602972i32)) {
                    _i_2602760++;
                    _gotoNext = 2602756i32;
                } else if (__value__ == (2603001i32)) {
                    _name = _t_2602811?.__copy__();
                    _gotoNext = 2602079i32;
                } else if (__value__ == (2603042i32)) {
                    if (_err_2602818 != null) {
                        _gotoNext = 2603056i32;
                    } else {
                        _gotoNext = 2602801i32;
                    };
                } else if (__value__ == (2603056i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2602818 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2602801i32;
                } else if (__value__ == (2603210i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2603210i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2603231i32;
                    } else {
                        _gotoNext = 2603363i32;
                    };
                } else if (__value__ == (2603231i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2602124 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2602124?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2603287 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2603287 != null) {
                            _gotoNext = 2603328i32;
                        } else {
                            _gotoNext = 2603210i32;
                        };
                    };
                } else if (__value__ == (2603328i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2603287 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2603210i32;
                } else if (__value__ == (2603363i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2602079i32;
                } else if (__value__ == (2603385i32)) {
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
