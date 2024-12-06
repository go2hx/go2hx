package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2582120:stdgo.Error = (null : stdgo.Error);
        var _ok_2581204:Bool = false;
        var _t_2581201:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2580957:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2580941:Bool = false;
        var patternBreak = false;
        var _err_2581651:stdgo.Error = (null : stdgo.Error);
        var _ok_2581647:Bool = false;
        var _t_2581644:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2581593:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2581208:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2580902i32;
                } else if (__value__ == (2580902i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2580912i32;
                } else if (__value__ == (2580912i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2580933i32;
                    } else {
                        _gotoNext = 2582218i32;
                    };
                } else if (__value__ == (2580933i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2580941 = __tmp__._0;
                        _chunk_2580957 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2580941 && (_chunk_2580957 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2581039i32;
                    } else {
                        _gotoNext = 2581201i32;
                    };
                } else if (__value__ == (2581039i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2581201i32;
                } else if (__value__ == (2581201i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2580957?.__copy__(), _name?.__copy__());
                        _t_2581201 = __tmp__._0?.__copy__();
                        _ok_2581204 = __tmp__._1;
                        _err_2581208 = __tmp__._2;
                    };
                    if ((_ok_2581204 && (((_t_2581201.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2581439i32;
                    } else {
                        _gotoNext = 2581471i32;
                    };
                } else if (__value__ == (2581439i32)) {
                    _name = _t_2581201?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2580912i32;
                } else if (__value__ == (2581471i32)) {
                    if (_err_2581208 != null) {
                        _gotoNext = 2581485i32;
                    } else {
                        _gotoNext = 2581514i32;
                    };
                } else if (__value__ == (2581485i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2581208 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2581514i32;
                } else if (__value__ == (2581514i32)) {
                    if (_star_2580941) {
                        _gotoNext = 2581522i32;
                    } else {
                        _gotoNext = 2582043i32;
                    };
                } else if (__value__ == (2581522i32)) {
                    _i_2581593 = (0 : stdgo.GoInt);
                    _gotoNext = 2581589i32;
                } else if (__value__ == (2581589i32)) {
                    if (((_i_2581593 < (_name.length) : Bool) && (_name[(_i_2581593 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2581638i32;
                    } else {
                        _gotoNext = 2582043i32;
                    };
                } else if (__value__ == (2581634i32)) {
                    _i_2581593++;
                    _gotoNext = 2581589i32;
                } else if (__value__ == (2581638i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2580957?.__copy__(), (_name.__slice__((_i_2581593 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2581644 = __tmp__._0?.__copy__();
                        _ok_2581647 = __tmp__._1;
                        _err_2581651 = __tmp__._2;
                    };
                    if (_ok_2581647) {
                        _gotoNext = 2581698i32;
                    } else {
                        _gotoNext = 2581875i32;
                    };
                } else if (__value__ == (2581698i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2581644.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2581805i32;
                    } else {
                        _gotoNext = 2581834i32;
                    };
                } else if (__value__ == (2581805i32)) {
                    _i_2581593++;
                    _gotoNext = 2581589i32;
                } else if (__value__ == (2581834i32)) {
                    _name = _t_2581644?.__copy__();
                    _gotoNext = 2580912i32;
                } else if (__value__ == (2581875i32)) {
                    if (_err_2581651 != null) {
                        _gotoNext = 2581889i32;
                    } else {
                        _gotoNext = 2581634i32;
                    };
                } else if (__value__ == (2581889i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2581651 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2581634i32;
                } else if (__value__ == (2582043i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2582043i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2582064i32;
                    } else {
                        _gotoNext = 2582196i32;
                    };
                } else if (__value__ == (2582064i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2580957 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2580957?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2582120 = __tmp__._2;
                        };
                        if (_err_2582120 != null) {
                            _gotoNext = 2582161i32;
                        } else {
                            _gotoNext = 2582196i32;
                        };
                    };
                } else if (__value__ == (2582161i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2582120 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2582196i32;
                } else if (__value__ == (2582196i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2580912i32;
                } else if (__value__ == (2582218i32)) {
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
