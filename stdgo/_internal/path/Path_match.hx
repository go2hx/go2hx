package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _t_6:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3:Bool = false;
        var _star_0:Bool = false;
        var _ok_7:Bool = false;
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _t_2:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_1:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_9:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2594846i32;
                } else if (__value__ == (2594846i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2594856i32;
                } else if (__value__ == (2594856i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2594877i32;
                    } else {
                        _gotoNext = 2596162i32;
                    };
                } else if (__value__ == (2594877i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_0 = @:tmpset0 __tmp__._0;
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_0 && (_chunk_1 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2594983i32;
                    } else {
                        _gotoNext = 2595145i32;
                    };
                } else if (__value__ == (2594983i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2595145i32;
                } else if (__value__ == (2595145i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), _name?.__copy__());
                        _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3 = @:tmpset0 __tmp__._1;
                        _err_4 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3 && (((_t_2.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2595383i32;
                    } else {
                        _gotoNext = 2595415i32;
                    };
                } else if (__value__ == (2595383i32)) {
                    _name = _t_2?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2594856i32;
                } else if (__value__ == (2595415i32)) {
                    if (_err_4 != null) {
                        _gotoNext = 2595429i32;
                    } else {
                        _gotoNext = 2595458i32;
                    };
                } else if (__value__ == (2595429i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2595458i32;
                } else if (__value__ == (2595458i32)) {
                    if (_star_0) {
                        _gotoNext = 2595466i32;
                    } else {
                        _gotoNext = 2595987i32;
                    };
                } else if (__value__ == (2595466i32)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 2595533i32;
                } else if (__value__ == (2595533i32)) {
                    if (((_i_5 < (_name.length) : Bool) && (_name[(_i_5 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2595582i32;
                    } else {
                        _gotoNext = 2595987i32;
                    };
                } else if (__value__ == (2595578i32)) {
                    _i_5++;
                    _gotoNext = 2595533i32;
                } else if (__value__ == (2595582i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (_name.__slice__((_i_5 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_6 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_7 = @:tmpset0 __tmp__._1;
                        _err_8 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_7) {
                        _gotoNext = 2595642i32;
                    } else {
                        _gotoNext = 2595819i32;
                    };
                } else if (__value__ == (2595642i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_6.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2595749i32;
                    } else {
                        _gotoNext = 2595778i32;
                    };
                } else if (__value__ == (2595749i32)) {
                    _i_5++;
                    _gotoNext = 2595533i32;
                } else if (__value__ == (2595778i32)) {
                    _name = _t_6?.__copy__();
                    _gotoNext = 2594856i32;
                } else if (__value__ == (2595819i32)) {
                    if (_err_8 != null) {
                        _gotoNext = 2595833i32;
                    } else {
                        _gotoNext = 2595578i32;
                    };
                } else if (__value__ == (2595833i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_8 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2595578i32;
                } else if (__value__ == (2595987i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2595987i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2596008i32;
                    } else {
                        _gotoNext = 2596140i32;
                    };
                } else if (__value__ == (2596008i32)) {
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
                            _gotoNext = 2596105i32;
                        } else {
                            _gotoNext = 2595987i32;
                        };
                    };
                } else if (__value__ == (2596105i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_9 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2595987i32;
                } else if (__value__ == (2596140i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2594856i32;
                } else if (__value__ == (2596162i32)) {
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
