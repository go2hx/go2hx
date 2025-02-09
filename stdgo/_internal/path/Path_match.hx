package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2622898:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2622654:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2623817:stdgo.Error = (null : stdgo.Error);
        var _err_2623348:stdgo.Error = (null : stdgo.Error);
        var _ok_2623344:Bool = false;
        var _err_2622905:stdgo.Error = (null : stdgo.Error);
        var _ok_2622901:Bool = false;
        var _star_2622638:Bool = false;
        var _t_2623341:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2623290:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2622599i32;
                } else if (__value__ == (2622599i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2622609i32;
                } else if (__value__ == (2622609i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2622630i32;
                    } else {
                        _gotoNext = 2623915i32;
                    };
                } else if (__value__ == (2622630i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2622638 = @:tmpset0 __tmp__._0;
                        _chunk_2622654 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2622638 && (_chunk_2622654 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2622736i32;
                    } else {
                        _gotoNext = 2622898i32;
                    };
                } else if (__value__ == (2622736i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2622898i32;
                } else if (__value__ == (2622898i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2622654?.__copy__(), _name?.__copy__());
                        _t_2622898 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2622901 = @:tmpset0 __tmp__._1;
                        _err_2622905 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2622901 && (((_t_2622898.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2623136i32;
                    } else {
                        _gotoNext = 2623168i32;
                    };
                } else if (__value__ == (2623136i32)) {
                    _name = _t_2622898?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2622609i32;
                } else if (__value__ == (2623168i32)) {
                    if (_err_2622905 != null) {
                        _gotoNext = 2623182i32;
                    } else {
                        _gotoNext = 2623211i32;
                    };
                } else if (__value__ == (2623182i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2622905 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2623211i32;
                } else if (__value__ == (2623211i32)) {
                    if (_star_2622638) {
                        _gotoNext = 2623219i32;
                    } else {
                        _gotoNext = 2623740i32;
                    };
                } else if (__value__ == (2623219i32)) {
                    _i_2623290 = (0 : stdgo.GoInt);
                    _gotoNext = 2623286i32;
                } else if (__value__ == (2623286i32)) {
                    if (((_i_2623290 < (_name.length) : Bool) && (_name[(_i_2623290 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2623335i32;
                    } else {
                        _gotoNext = 2623740i32;
                    };
                } else if (__value__ == (2623331i32)) {
                    _i_2623290++;
                    _gotoNext = 2623286i32;
                } else if (__value__ == (2623335i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2622654?.__copy__(), (_name.__slice__((_i_2623290 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2623341 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2623344 = @:tmpset0 __tmp__._1;
                        _err_2623348 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2623344) {
                        _gotoNext = 2623395i32;
                    } else {
                        _gotoNext = 2623572i32;
                    };
                } else if (__value__ == (2623395i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2623341.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2623502i32;
                    } else {
                        _gotoNext = 2623531i32;
                    };
                } else if (__value__ == (2623502i32)) {
                    _i_2623290++;
                    _gotoNext = 2623286i32;
                } else if (__value__ == (2623531i32)) {
                    _name = _t_2623341?.__copy__();
                    _gotoNext = 2622609i32;
                } else if (__value__ == (2623572i32)) {
                    if (_err_2623348 != null) {
                        _gotoNext = 2623586i32;
                    } else {
                        _gotoNext = 2623331i32;
                    };
                } else if (__value__ == (2623586i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2623348 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2623331i32;
                } else if (__value__ == (2623740i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2623740i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2623761i32;
                    } else {
                        _gotoNext = 2623893i32;
                    };
                } else if (__value__ == (2623761i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2622654 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2622654?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2623817 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2623817 != null) {
                            _gotoNext = 2623858i32;
                        } else {
                            _gotoNext = 2623740i32;
                        };
                    };
                } else if (__value__ == (2623858i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2623817 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2623740i32;
                } else if (__value__ == (2623893i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2622609i32;
                } else if (__value__ == (2623915i32)) {
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
