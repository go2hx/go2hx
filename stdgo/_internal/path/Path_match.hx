package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _err_9:stdgo.Error = (null : stdgo.Error);
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _ok_7:Bool = false;
        var _t_6:stdgo.GoString = ("" : stdgo.GoString);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3:Bool = false;
        var _t_2:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_1:stdgo.GoString = ("" : stdgo.GoString);
        var _star_0:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2641686i32;
                } else if (__value__ == (2641686i32)) {
                    0i32;
                    patternBreak = false;
                    _gotoNext = 2641696i32;
                } else if (__value__ == (2641696i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2641717i32;
                    } else {
                        _gotoNext = 2643002i32;
                    };
                } else if (__value__ == (2641717i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_0 = @:tmpset0 __tmp__._0;
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_0 && (_chunk_1 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2641823i32;
                    } else {
                        _gotoNext = 2641985i32;
                    };
                } else if (__value__ == (2641823i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2641985i32;
                } else if (__value__ == (2641985i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), _name?.__copy__());
                        _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3 = @:tmpset0 __tmp__._1;
                        _err_4 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3 && (((_t_2.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2642223i32;
                    } else {
                        _gotoNext = 2642255i32;
                    };
                } else if (__value__ == (2642223i32)) {
                    _name = _t_2?.__copy__();
                    0i32;
                    _gotoNext = 2641696i32;
                } else if (__value__ == (2642255i32)) {
                    if (_err_4 != null) {
                        _gotoNext = 2642269i32;
                    } else {
                        _gotoNext = 2642298i32;
                    };
                } else if (__value__ == (2642269i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2642298i32;
                } else if (__value__ == (2642298i32)) {
                    if (_star_0) {
                        _gotoNext = 2642306i32;
                    } else {
                        _gotoNext = 2642827i32;
                    };
                } else if (__value__ == (2642306i32)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 2642373i32;
                } else if (__value__ == (2642373i32)) {
                    if (((_i_5 < (_name.length) : Bool) && (_name[(_i_5 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2642422i32;
                    } else {
                        _gotoNext = 2642827i32;
                    };
                } else if (__value__ == (2642418i32)) {
                    _i_5++;
                    _gotoNext = 2642373i32;
                } else if (__value__ == (2642422i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (_name.__slice__((_i_5 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_6 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_7 = @:tmpset0 __tmp__._1;
                        _err_8 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_7) {
                        _gotoNext = 2642482i32;
                    } else {
                        _gotoNext = 2642659i32;
                    };
                } else if (__value__ == (2642482i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_6.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2642589i32;
                    } else {
                        _gotoNext = 2642618i32;
                    };
                } else if (__value__ == (2642589i32)) {
                    _i_5++;
                    _gotoNext = 2642373i32;
                } else if (__value__ == (2642618i32)) {
                    _name = _t_6?.__copy__();
                    _gotoNext = 2641696i32;
                } else if (__value__ == (2642659i32)) {
                    if (_err_8 != null) {
                        _gotoNext = 2642673i32;
                    } else {
                        _gotoNext = 2642418i32;
                    };
                } else if (__value__ == (2642673i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_8 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2642418i32;
                } else if (__value__ == (2642827i32)) {
                    0i32;
                    _gotoNext = 2642827i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2642848i32;
                    } else {
                        _gotoNext = 2642980i32;
                    };
                } else if (__value__ == (2642848i32)) {
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
                            _gotoNext = 2642945i32;
                        } else {
                            _gotoNext = 2642827i32;
                        };
                    };
                } else if (__value__ == (2642945i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_9 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2642827i32;
                } else if (__value__ == (2642980i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2641696i32;
                } else if (__value__ == (2643002i32)) {
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
