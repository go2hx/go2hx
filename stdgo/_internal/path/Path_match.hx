package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2652441:Bool = false;
        var _t_2652438:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2652194:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2652178:Bool = false;
        var _t_2652881:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2652830:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2652445:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _err_2653357:stdgo.Error = (null : stdgo.Error);
        var _err_2652888:stdgo.Error = (null : stdgo.Error);
        var _ok_2652884:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2652139i32;
                } else if (__value__ == (2652139i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2652149i32;
                } else if (__value__ == (2652149i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2652170i32;
                    } else {
                        _gotoNext = 2653455i32;
                    };
                } else if (__value__ == (2652170i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2652178 = @:tmpset0 __tmp__._0;
                        _chunk_2652194 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2652178 && (_chunk_2652194 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2652276i32;
                    } else {
                        _gotoNext = 2652438i32;
                    };
                } else if (__value__ == (2652276i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2652438i32;
                } else if (__value__ == (2652438i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2652194?.__copy__(), _name?.__copy__());
                        _t_2652438 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2652441 = @:tmpset0 __tmp__._1;
                        _err_2652445 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2652441 && (((_t_2652438.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2652676i32;
                    } else {
                        _gotoNext = 2652708i32;
                    };
                } else if (__value__ == (2652676i32)) {
                    _name = _t_2652438?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2652149i32;
                } else if (__value__ == (2652708i32)) {
                    if (_err_2652445 != null) {
                        _gotoNext = 2652722i32;
                    } else {
                        _gotoNext = 2652751i32;
                    };
                } else if (__value__ == (2652722i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2652445 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2652751i32;
                } else if (__value__ == (2652751i32)) {
                    if (_star_2652178) {
                        _gotoNext = 2652759i32;
                    } else {
                        _gotoNext = 2653280i32;
                    };
                } else if (__value__ == (2652759i32)) {
                    _i_2652830 = (0 : stdgo.GoInt);
                    _gotoNext = 2652826i32;
                } else if (__value__ == (2652826i32)) {
                    if (((_i_2652830 < (_name.length) : Bool) && (_name[(_i_2652830 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2652875i32;
                    } else {
                        _gotoNext = 2653280i32;
                    };
                } else if (__value__ == (2652871i32)) {
                    _i_2652830++;
                    _gotoNext = 2652826i32;
                } else if (__value__ == (2652875i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2652194?.__copy__(), (_name.__slice__((_i_2652830 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2652881 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2652884 = @:tmpset0 __tmp__._1;
                        _err_2652888 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2652884) {
                        _gotoNext = 2652935i32;
                    } else {
                        _gotoNext = 2653112i32;
                    };
                } else if (__value__ == (2652935i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2652881.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2653042i32;
                    } else {
                        _gotoNext = 2653071i32;
                    };
                } else if (__value__ == (2653042i32)) {
                    _i_2652830++;
                    _gotoNext = 2652826i32;
                } else if (__value__ == (2653071i32)) {
                    _name = _t_2652881?.__copy__();
                    _gotoNext = 2652149i32;
                } else if (__value__ == (2653112i32)) {
                    if (_err_2652888 != null) {
                        _gotoNext = 2653126i32;
                    } else {
                        _gotoNext = 2652871i32;
                    };
                } else if (__value__ == (2653126i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2652888 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2652871i32;
                } else if (__value__ == (2653280i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2653280i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2653301i32;
                    } else {
                        _gotoNext = 2653433i32;
                    };
                } else if (__value__ == (2653301i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2652194 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2652194?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2653357 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2653357 != null) {
                            _gotoNext = 2653398i32;
                        } else {
                            _gotoNext = 2653280i32;
                        };
                    };
                } else if (__value__ == (2653398i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2653357 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2653280i32;
                } else if (__value__ == (2653433i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2652149i32;
                } else if (__value__ == (2653455i32)) {
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
