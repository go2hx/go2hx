package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2754435:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2754442:stdgo.Error = (null : stdgo.Error);
        var _ok_2754438:Bool = false;
        var patternBreak = false;
        var _err_2755354:stdgo.Error = (null : stdgo.Error);
        var _err_2754885:stdgo.Error = (null : stdgo.Error);
        var _ok_2754881:Bool = false;
        var _t_2754878:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2754827:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2754191:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2754175:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2754136i32;
                } else if (__value__ == (2754136i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2754146i32;
                } else if (__value__ == (2754146i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2754167i32;
                    } else {
                        _gotoNext = 2755452i32;
                    };
                } else if (__value__ == (2754167i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2754175 = __tmp__._0;
                        _chunk_2754191 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2754175 && (_chunk_2754191 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2754273i32;
                    } else {
                        _gotoNext = 2754435i32;
                    };
                } else if (__value__ == (2754273i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2754435i32;
                } else if (__value__ == (2754435i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2754191?.__copy__(), _name?.__copy__());
                        _t_2754435 = __tmp__._0?.__copy__();
                        _ok_2754438 = __tmp__._1;
                        _err_2754442 = __tmp__._2;
                    };
                    if ((_ok_2754438 && (((_t_2754435.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2754673i32;
                    } else {
                        _gotoNext = 2754705i32;
                    };
                } else if (__value__ == (2754673i32)) {
                    _name = _t_2754435?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2754146i32;
                } else if (__value__ == (2754705i32)) {
                    if (_err_2754442 != null) {
                        _gotoNext = 2754719i32;
                    } else {
                        _gotoNext = 2754748i32;
                    };
                } else if (__value__ == (2754719i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2754442 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2754748i32;
                } else if (__value__ == (2754748i32)) {
                    if (_star_2754175) {
                        _gotoNext = 2754756i32;
                    } else {
                        _gotoNext = 2755277i32;
                    };
                } else if (__value__ == (2754756i32)) {
                    _i_2754827 = (0 : stdgo.GoInt);
                    _gotoNext = 2754823i32;
                } else if (__value__ == (2754823i32)) {
                    if (((_i_2754827 < (_name.length) : Bool) && (_name[(_i_2754827 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2754872i32;
                    } else {
                        _gotoNext = 2755277i32;
                    };
                } else if (__value__ == (2754868i32)) {
                    _i_2754827++;
                    _gotoNext = 2754823i32;
                } else if (__value__ == (2754872i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2754191?.__copy__(), (_name.__slice__((_i_2754827 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2754878 = __tmp__._0?.__copy__();
                        _ok_2754881 = __tmp__._1;
                        _err_2754885 = __tmp__._2;
                    };
                    if (_ok_2754881) {
                        _gotoNext = 2754932i32;
                    } else {
                        _gotoNext = 2755109i32;
                    };
                } else if (__value__ == (2754932i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2754878.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2755039i32;
                    } else {
                        _gotoNext = 2755068i32;
                    };
                } else if (__value__ == (2755039i32)) {
                    _i_2754827++;
                    _gotoNext = 2754823i32;
                } else if (__value__ == (2755068i32)) {
                    _name = _t_2754878?.__copy__();
                    _gotoNext = 2754146i32;
                } else if (__value__ == (2755109i32)) {
                    if (_err_2754885 != null) {
                        _gotoNext = 2755123i32;
                    } else {
                        _gotoNext = 2754868i32;
                    };
                } else if (__value__ == (2755123i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2754885 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2754868i32;
                } else if (__value__ == (2755277i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2755277i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2755298i32;
                    } else {
                        _gotoNext = 2755430i32;
                    };
                } else if (__value__ == (2755298i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2754191 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2754191?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2755354 = __tmp__._2;
                        };
                        if (_err_2755354 != null) {
                            _gotoNext = 2755395i32;
                        } else {
                            _gotoNext = 2755430i32;
                        };
                    };
                } else if (__value__ == (2755395i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2755354 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2755430i32;
                } else if (__value__ == (2755430i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2754146i32;
                } else if (__value__ == (2755452i32)) {
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
