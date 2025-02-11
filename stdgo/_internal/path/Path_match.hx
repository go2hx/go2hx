package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2656530:Bool = false;
        var _t_2656527:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2657446:stdgo.Error = (null : stdgo.Error);
        var _ok_2656973:Bool = false;
        var _t_2656970:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2656534:stdgo.Error = (null : stdgo.Error);
        var _star_2656267:Bool = false;
        var patternBreak = false;
        var _err_2656977:stdgo.Error = (null : stdgo.Error);
        var _i_2656919:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2656283:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2656228i32;
                } else if (__value__ == (2656228i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2656238i32;
                } else if (__value__ == (2656238i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2656259i32;
                    } else {
                        _gotoNext = 2657544i32;
                    };
                } else if (__value__ == (2656259i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2656267 = @:tmpset0 __tmp__._0;
                        _chunk_2656283 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2656267 && (_chunk_2656283 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2656365i32;
                    } else {
                        _gotoNext = 2656527i32;
                    };
                } else if (__value__ == (2656365i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2656527i32;
                } else if (__value__ == (2656527i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2656283?.__copy__(), _name?.__copy__());
                        _t_2656527 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2656530 = @:tmpset0 __tmp__._1;
                        _err_2656534 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2656530 && (((_t_2656527.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2656765i32;
                    } else {
                        _gotoNext = 2656797i32;
                    };
                } else if (__value__ == (2656765i32)) {
                    _name = _t_2656527?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2656238i32;
                } else if (__value__ == (2656797i32)) {
                    if (_err_2656534 != null) {
                        _gotoNext = 2656811i32;
                    } else {
                        _gotoNext = 2656840i32;
                    };
                } else if (__value__ == (2656811i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2656534 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2656840i32;
                } else if (__value__ == (2656840i32)) {
                    if (_star_2656267) {
                        _gotoNext = 2656848i32;
                    } else {
                        _gotoNext = 2657369i32;
                    };
                } else if (__value__ == (2656848i32)) {
                    _i_2656919 = (0 : stdgo.GoInt);
                    _gotoNext = 2656915i32;
                } else if (__value__ == (2656915i32)) {
                    if (((_i_2656919 < (_name.length) : Bool) && (_name[(_i_2656919 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2656964i32;
                    } else {
                        _gotoNext = 2657369i32;
                    };
                } else if (__value__ == (2656960i32)) {
                    _i_2656919++;
                    _gotoNext = 2656915i32;
                } else if (__value__ == (2656964i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2656283?.__copy__(), (_name.__slice__((_i_2656919 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2656970 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2656973 = @:tmpset0 __tmp__._1;
                        _err_2656977 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2656973) {
                        _gotoNext = 2657024i32;
                    } else {
                        _gotoNext = 2657201i32;
                    };
                } else if (__value__ == (2657024i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2656970.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2657131i32;
                    } else {
                        _gotoNext = 2657160i32;
                    };
                } else if (__value__ == (2657131i32)) {
                    _i_2656919++;
                    _gotoNext = 2656915i32;
                } else if (__value__ == (2657160i32)) {
                    _name = _t_2656970?.__copy__();
                    _gotoNext = 2656238i32;
                } else if (__value__ == (2657201i32)) {
                    if (_err_2656977 != null) {
                        _gotoNext = 2657215i32;
                    } else {
                        _gotoNext = 2656960i32;
                    };
                } else if (__value__ == (2657215i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2656977 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2656960i32;
                } else if (__value__ == (2657369i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2657369i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2657390i32;
                    } else {
                        _gotoNext = 2657522i32;
                    };
                } else if (__value__ == (2657390i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2656283 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2656283?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2657446 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2657446 != null) {
                            _gotoNext = 2657487i32;
                        } else {
                            _gotoNext = 2657369i32;
                        };
                    };
                } else if (__value__ == (2657487i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2657446 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2657369i32;
                } else if (__value__ == (2657522i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2656238i32;
                } else if (__value__ == (2657544i32)) {
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
