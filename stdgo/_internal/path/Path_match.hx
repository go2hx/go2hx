package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _err_2654026:stdgo.Error = (null : stdgo.Error);
        var _err_2653557:stdgo.Error = (null : stdgo.Error);
        var _ok_2653553:Bool = false;
        var _err_2653114:stdgo.Error = (null : stdgo.Error);
        var _t_2653107:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2652847:Bool = false;
        var _chunk_2652863:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2653550:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2653499:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2653110:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2652808i32;
                } else if (__value__ == (2652808i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2652818i32;
                } else if (__value__ == (2652818i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2652839i32;
                    } else {
                        _gotoNext = 2654124i32;
                    };
                } else if (__value__ == (2652839i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2652847 = @:tmpset0 __tmp__._0;
                        _chunk_2652863 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2652847 && (_chunk_2652863 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2652945i32;
                    } else {
                        _gotoNext = 2653107i32;
                    };
                } else if (__value__ == (2652945i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2653107i32;
                } else if (__value__ == (2653107i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2652863?.__copy__(), _name?.__copy__());
                        _t_2653107 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2653110 = @:tmpset0 __tmp__._1;
                        _err_2653114 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2653110 && (((_t_2653107.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2653345i32;
                    } else {
                        _gotoNext = 2653377i32;
                    };
                } else if (__value__ == (2653345i32)) {
                    _name = _t_2653107?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2652818i32;
                } else if (__value__ == (2653377i32)) {
                    if (_err_2653114 != null) {
                        _gotoNext = 2653391i32;
                    } else {
                        _gotoNext = 2653420i32;
                    };
                } else if (__value__ == (2653391i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2653114 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2653420i32;
                } else if (__value__ == (2653420i32)) {
                    if (_star_2652847) {
                        _gotoNext = 2653428i32;
                    } else {
                        _gotoNext = 2653949i32;
                    };
                } else if (__value__ == (2653428i32)) {
                    _i_2653499 = (0 : stdgo.GoInt);
                    _gotoNext = 2653495i32;
                } else if (__value__ == (2653495i32)) {
                    if (((_i_2653499 < (_name.length) : Bool) && (_name[(_i_2653499 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2653544i32;
                    } else {
                        _gotoNext = 2653949i32;
                    };
                } else if (__value__ == (2653540i32)) {
                    _i_2653499++;
                    _gotoNext = 2653495i32;
                } else if (__value__ == (2653544i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2652863?.__copy__(), (_name.__slice__((_i_2653499 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2653550 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2653553 = @:tmpset0 __tmp__._1;
                        _err_2653557 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2653553) {
                        _gotoNext = 2653604i32;
                    } else {
                        _gotoNext = 2653781i32;
                    };
                } else if (__value__ == (2653604i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2653550.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2653711i32;
                    } else {
                        _gotoNext = 2653740i32;
                    };
                } else if (__value__ == (2653711i32)) {
                    _i_2653499++;
                    _gotoNext = 2653495i32;
                } else if (__value__ == (2653740i32)) {
                    _name = _t_2653550?.__copy__();
                    _gotoNext = 2652818i32;
                } else if (__value__ == (2653781i32)) {
                    if (_err_2653557 != null) {
                        _gotoNext = 2653795i32;
                    } else {
                        _gotoNext = 2653540i32;
                    };
                } else if (__value__ == (2653795i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2653557 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2653540i32;
                } else if (__value__ == (2653949i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2653949i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2653970i32;
                    } else {
                        _gotoNext = 2654102i32;
                    };
                } else if (__value__ == (2653970i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2652863 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2652863?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2654026 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2654026 != null) {
                            _gotoNext = 2654067i32;
                        } else {
                            _gotoNext = 2653949i32;
                        };
                    };
                } else if (__value__ == (2654067i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2654026 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2653949i32;
                } else if (__value__ == (2654102i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2652818i32;
                } else if (__value__ == (2654124i32)) {
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
