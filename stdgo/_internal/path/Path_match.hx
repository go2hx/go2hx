package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2602669:Bool = false;
        var _t_2602666:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2602226:Bool = false;
        var _chunk_2601979:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2601963:Bool = false;
        var _err_2603142:stdgo.Error = (null : stdgo.Error);
        var _err_2602673:stdgo.Error = (null : stdgo.Error);
        var _i_2602615:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2602230:stdgo.Error = (null : stdgo.Error);
        var _t_2602223:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2601924i32;
                } else if (__value__ == (2601924i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2601934i32;
                } else if (__value__ == (2601934i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2601955i32;
                    } else {
                        _gotoNext = 2603240i32;
                    };
                } else if (__value__ == (2601955i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2601963 = __tmp__._0;
                        _chunk_2601979 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2601963 && (_chunk_2601979 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2602061i32;
                    } else {
                        _gotoNext = 2602223i32;
                    };
                } else if (__value__ == (2602061i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2602223i32;
                } else if (__value__ == (2602223i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2601979?.__copy__(), _name?.__copy__());
                        _t_2602223 = __tmp__._0?.__copy__();
                        _ok_2602226 = __tmp__._1;
                        _err_2602230 = __tmp__._2;
                    };
                    if ((_ok_2602226 && (((_t_2602223.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2602461i32;
                    } else {
                        _gotoNext = 2602493i32;
                    };
                } else if (__value__ == (2602461i32)) {
                    _name = _t_2602223?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2601934i32;
                } else if (__value__ == (2602493i32)) {
                    if (_err_2602230 != null) {
                        _gotoNext = 2602507i32;
                    } else {
                        _gotoNext = 2602536i32;
                    };
                } else if (__value__ == (2602507i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2602230 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2602536i32;
                } else if (__value__ == (2602536i32)) {
                    if (_star_2601963) {
                        _gotoNext = 2602544i32;
                    } else {
                        _gotoNext = 2603065i32;
                    };
                } else if (__value__ == (2602544i32)) {
                    _i_2602615 = (0 : stdgo.GoInt);
                    _gotoNext = 2602611i32;
                } else if (__value__ == (2602611i32)) {
                    if (((_i_2602615 < (_name.length) : Bool) && (_name[(_i_2602615 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2602660i32;
                    } else {
                        _gotoNext = 2603065i32;
                    };
                } else if (__value__ == (2602656i32)) {
                    _i_2602615++;
                    _gotoNext = 2602611i32;
                } else if (__value__ == (2602660i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2601979?.__copy__(), (_name.__slice__((_i_2602615 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2602666 = __tmp__._0?.__copy__();
                        _ok_2602669 = __tmp__._1;
                        _err_2602673 = __tmp__._2;
                    };
                    if (_ok_2602669) {
                        _gotoNext = 2602720i32;
                    } else {
                        _gotoNext = 2602897i32;
                    };
                } else if (__value__ == (2602720i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2602666.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2602827i32;
                    } else {
                        _gotoNext = 2602856i32;
                    };
                } else if (__value__ == (2602827i32)) {
                    _i_2602615++;
                    _gotoNext = 2602611i32;
                } else if (__value__ == (2602856i32)) {
                    _name = _t_2602666?.__copy__();
                    _gotoNext = 2601934i32;
                } else if (__value__ == (2602897i32)) {
                    if (_err_2602673 != null) {
                        _gotoNext = 2602911i32;
                    } else {
                        _gotoNext = 2602656i32;
                    };
                } else if (__value__ == (2602911i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2602673 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2602656i32;
                } else if (__value__ == (2603065i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2603065i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2603086i32;
                    } else {
                        _gotoNext = 2603218i32;
                    };
                } else if (__value__ == (2603086i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2601979 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2601979?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2603142 = __tmp__._2;
                        };
                        if (_err_2603142 != null) {
                            _gotoNext = 2603183i32;
                        } else {
                            _gotoNext = 2603218i32;
                        };
                    };
                } else if (__value__ == (2603183i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2603142 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2603218i32;
                } else if (__value__ == (2603218i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2601934i32;
                } else if (__value__ == (2603240i32)) {
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
