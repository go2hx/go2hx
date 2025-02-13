package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2625119:stdgo.Error = (null : stdgo.Error);
        var _ok_2625115:Bool = false;
        var _t_2625112:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2626031:stdgo.Error = (null : stdgo.Error);
        var _t_2625555:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2625504:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2624868:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2624852:Bool = false;
        var patternBreak = false;
        var _err_2625562:stdgo.Error = (null : stdgo.Error);
        var _ok_2625558:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2624813i32;
                } else if (__value__ == (2624813i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2624823i32;
                } else if (__value__ == (2624823i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2624844i32;
                    } else {
                        _gotoNext = 2626129i32;
                    };
                } else if (__value__ == (2624844i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2624852 = @:tmpset0 __tmp__._0;
                        _chunk_2624868 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2624852 && (_chunk_2624868 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2624950i32;
                    } else {
                        _gotoNext = 2625112i32;
                    };
                } else if (__value__ == (2624950i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625112i32;
                } else if (__value__ == (2625112i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2624868?.__copy__(), _name?.__copy__());
                        _t_2625112 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2625115 = @:tmpset0 __tmp__._1;
                        _err_2625119 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2625115 && (((_t_2625112.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2625350i32;
                    } else {
                        _gotoNext = 2625382i32;
                    };
                } else if (__value__ == (2625350i32)) {
                    _name = _t_2625112?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2624823i32;
                } else if (__value__ == (2625382i32)) {
                    if (_err_2625119 != null) {
                        _gotoNext = 2625396i32;
                    } else {
                        _gotoNext = 2625425i32;
                    };
                } else if (__value__ == (2625396i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2625119 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625425i32;
                } else if (__value__ == (2625425i32)) {
                    if (_star_2624852) {
                        _gotoNext = 2625433i32;
                    } else {
                        _gotoNext = 2625954i32;
                    };
                } else if (__value__ == (2625433i32)) {
                    _i_2625504 = (0 : stdgo.GoInt);
                    _gotoNext = 2625500i32;
                } else if (__value__ == (2625500i32)) {
                    if (((_i_2625504 < (_name.length) : Bool) && (_name[(_i_2625504 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2625549i32;
                    } else {
                        _gotoNext = 2625954i32;
                    };
                } else if (__value__ == (2625545i32)) {
                    _i_2625504++;
                    _gotoNext = 2625500i32;
                } else if (__value__ == (2625549i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2624868?.__copy__(), (_name.__slice__((_i_2625504 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2625555 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2625558 = @:tmpset0 __tmp__._1;
                        _err_2625562 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2625558) {
                        _gotoNext = 2625609i32;
                    } else {
                        _gotoNext = 2625786i32;
                    };
                } else if (__value__ == (2625609i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2625555.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2625716i32;
                    } else {
                        _gotoNext = 2625745i32;
                    };
                } else if (__value__ == (2625716i32)) {
                    _i_2625504++;
                    _gotoNext = 2625500i32;
                } else if (__value__ == (2625745i32)) {
                    _name = _t_2625555?.__copy__();
                    _gotoNext = 2624823i32;
                } else if (__value__ == (2625786i32)) {
                    if (_err_2625562 != null) {
                        _gotoNext = 2625800i32;
                    } else {
                        _gotoNext = 2625545i32;
                    };
                } else if (__value__ == (2625800i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2625562 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625545i32;
                } else if (__value__ == (2625954i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2625954i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2625975i32;
                    } else {
                        _gotoNext = 2626107i32;
                    };
                } else if (__value__ == (2625975i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2624868 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2624868?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2626031 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2626031 != null) {
                            _gotoNext = 2626072i32;
                        } else {
                            _gotoNext = 2625954i32;
                        };
                    };
                } else if (__value__ == (2626072i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2626031 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625954i32;
                } else if (__value__ == (2626107i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2624823i32;
                } else if (__value__ == (2626129i32)) {
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
