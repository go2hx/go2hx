package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_1:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_9:stdgo.Error = (null : stdgo.Error);
        var _ok_3:Bool = false;
        var _t_2:stdgo.GoString = ("" : stdgo.GoString);
        var _star_0:Bool = false;
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _ok_7:Bool = false;
        var _t_6:stdgo.GoString = ("" : stdgo.GoString);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2665935i32;
                } else if (__value__ == (2665935i32)) {
                    0i32;
                    patternBreak = false;
                    _gotoNext = 2665945i32;
                } else if (__value__ == (2665945i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2665966i32;
                    } else {
                        _gotoNext = 2667251i32;
                    };
                } else if (__value__ == (2665966i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_0 = @:tmpset0 __tmp__._0;
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_0 && (_chunk_1 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2666072i32;
                    } else {
                        _gotoNext = 2666234i32;
                    };
                } else if (__value__ == (2666072i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2666234i32;
                } else if (__value__ == (2666234i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), _name?.__copy__());
                        _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3 = @:tmpset0 __tmp__._1;
                        _err_4 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3 && (((_t_2.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2666472i32;
                    } else {
                        _gotoNext = 2666504i32;
                    };
                } else if (__value__ == (2666472i32)) {
                    _name = _t_2?.__copy__();
                    0i32;
                    _gotoNext = 2665945i32;
                } else if (__value__ == (2666504i32)) {
                    if (_err_4 != null) {
                        _gotoNext = 2666518i32;
                    } else {
                        _gotoNext = 2666547i32;
                    };
                } else if (__value__ == (2666518i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2666547i32;
                } else if (__value__ == (2666547i32)) {
                    if (_star_0) {
                        _gotoNext = 2666555i32;
                    } else {
                        _gotoNext = 2667076i32;
                    };
                } else if (__value__ == (2666555i32)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 2666622i32;
                } else if (__value__ == (2666622i32)) {
                    if (((_i_5 < (_name.length) : Bool) && (_name[(_i_5 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2666671i32;
                    } else {
                        _gotoNext = 2667076i32;
                    };
                } else if (__value__ == (2666667i32)) {
                    _i_5++;
                    _gotoNext = 2666622i32;
                } else if (__value__ == (2666671i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (_name.__slice__((_i_5 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_6 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_7 = @:tmpset0 __tmp__._1;
                        _err_8 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_7) {
                        _gotoNext = 2666731i32;
                    } else {
                        _gotoNext = 2666908i32;
                    };
                } else if (__value__ == (2666731i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_6.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2666838i32;
                    } else {
                        _gotoNext = 2666867i32;
                    };
                } else if (__value__ == (2666838i32)) {
                    _i_5++;
                    _gotoNext = 2666622i32;
                } else if (__value__ == (2666867i32)) {
                    _name = _t_6?.__copy__();
                    _gotoNext = 2665945i32;
                } else if (__value__ == (2666908i32)) {
                    if (_err_8 != null) {
                        _gotoNext = 2666922i32;
                    } else {
                        _gotoNext = 2666667i32;
                    };
                } else if (__value__ == (2666922i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_8 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2666667i32;
                } else if (__value__ == (2667076i32)) {
                    0i32;
                    _gotoNext = 2667076i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2667097i32;
                    } else {
                        _gotoNext = 2667229i32;
                    };
                } else if (__value__ == (2667097i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_9 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_9 != null) {
                            _gotoNext = 2667194i32;
                        } else {
                            _gotoNext = 2667076i32;
                        };
                    };
                } else if (__value__ == (2667194i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_9 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2667076i32;
                } else if (__value__ == (2667229i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2665945i32;
                } else if (__value__ == (2667251i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
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
