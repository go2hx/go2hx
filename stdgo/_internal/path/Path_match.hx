package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2716385:stdgo.Error = (null : stdgo.Error);
        var _t_2715935:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2716854:stdgo.Error = (null : stdgo.Error);
        var _err_2715942:stdgo.Error = (null : stdgo.Error);
        var _ok_2715938:Bool = false;
        var _chunk_2715691:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2715675:Bool = false;
        var patternBreak = false;
        var _ok_2716381:Bool = false;
        var _t_2716378:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2716327:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2715636i32;
                } else if (__value__ == (2715636i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2715646i32;
                } else if (__value__ == (2715646i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2715667i32;
                    } else {
                        _gotoNext = 2716952i32;
                    };
                } else if (__value__ == (2715667i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2715675 = __tmp__._0;
                        _chunk_2715691 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2715675 && (_chunk_2715691 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2715773i32;
                    } else {
                        _gotoNext = 2715935i32;
                    };
                } else if (__value__ == (2715773i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2715935i32;
                } else if (__value__ == (2715935i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2715691?.__copy__(), _name?.__copy__());
                        _t_2715935 = __tmp__._0?.__copy__();
                        _ok_2715938 = __tmp__._1;
                        _err_2715942 = __tmp__._2;
                    };
                    if ((_ok_2715938 && (((_t_2715935.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2716173i32;
                    } else {
                        _gotoNext = 2716205i32;
                    };
                } else if (__value__ == (2716173i32)) {
                    _name = _t_2715935?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2715646i32;
                } else if (__value__ == (2716205i32)) {
                    if (_err_2715942 != null) {
                        _gotoNext = 2716219i32;
                    } else {
                        _gotoNext = 2716248i32;
                    };
                } else if (__value__ == (2716219i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2715942 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2716248i32;
                } else if (__value__ == (2716248i32)) {
                    if (_star_2715675) {
                        _gotoNext = 2716256i32;
                    } else {
                        _gotoNext = 2716777i32;
                    };
                } else if (__value__ == (2716256i32)) {
                    _i_2716327 = (0 : stdgo.GoInt);
                    _gotoNext = 2716323i32;
                } else if (__value__ == (2716323i32)) {
                    if (((_i_2716327 < (_name.length) : Bool) && (_name[(_i_2716327 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2716372i32;
                    } else {
                        _gotoNext = 2716777i32;
                    };
                } else if (__value__ == (2716368i32)) {
                    _i_2716327++;
                    _gotoNext = 2716323i32;
                } else if (__value__ == (2716372i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2715691?.__copy__(), (_name.__slice__((_i_2716327 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2716378 = __tmp__._0?.__copy__();
                        _ok_2716381 = __tmp__._1;
                        _err_2716385 = __tmp__._2;
                    };
                    if (_ok_2716381) {
                        _gotoNext = 2716432i32;
                    } else {
                        _gotoNext = 2716609i32;
                    };
                } else if (__value__ == (2716432i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2716378.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2716539i32;
                    } else {
                        _gotoNext = 2716568i32;
                    };
                } else if (__value__ == (2716539i32)) {
                    _i_2716327++;
                    _gotoNext = 2716323i32;
                } else if (__value__ == (2716568i32)) {
                    _name = _t_2716378?.__copy__();
                    _gotoNext = 2715646i32;
                } else if (__value__ == (2716609i32)) {
                    if (_err_2716385 != null) {
                        _gotoNext = 2716623i32;
                    } else {
                        _gotoNext = 2716368i32;
                    };
                } else if (__value__ == (2716623i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2716385 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2716368i32;
                } else if (__value__ == (2716777i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2716777i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2716798i32;
                    } else {
                        _gotoNext = 2716930i32;
                    };
                } else if (__value__ == (2716798i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2715691 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2715691?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2716854 = __tmp__._2;
                        };
                        if (_err_2716854 != null) {
                            _gotoNext = 2716895i32;
                        } else {
                            _gotoNext = 2716930i32;
                        };
                    };
                } else if (__value__ == (2716895i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2716854 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2716930i32;
                } else if (__value__ == (2716930i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2715646i32;
                } else if (__value__ == (2716952i32)) {
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
