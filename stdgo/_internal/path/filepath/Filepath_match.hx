package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _err_4019819:stdgo.Error = (null : stdgo.Error);
        var _t_4019812:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4019755:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4019370:stdgo.Error = (null : stdgo.Error);
        var _t_4019363:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4019099:Bool = false;
        var _chunk_4019115:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_4019815:Bool = false;
        var _ok_4019366:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4019060i32;
                } else if (__value__ == (4019060i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4019070i32;
                } else if (__value__ == (4019070i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4019091i32;
                    } else {
                        _gotoNext = 4020121i32;
                    };
                } else if (__value__ == (4019091i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4019099 = __tmp__._0;
                        _chunk_4019115 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4019099 && (_chunk_4019115 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4019197i32;
                    } else {
                        _gotoNext = 4019363i32;
                    };
                } else if (__value__ == (4019197i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4019363i32;
                } else if (__value__ == (4019363i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4019115?.__copy__(), _name?.__copy__());
                        _t_4019363 = __tmp__._0?.__copy__();
                        _ok_4019366 = __tmp__._1;
                        _err_4019370 = __tmp__._2;
                    };
                    if ((_ok_4019366 && (((_t_4019363.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4019601i32;
                    } else {
                        _gotoNext = 4019633i32;
                    };
                } else if (__value__ == (4019601i32)) {
                    _name = _t_4019363?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4019070i32;
                } else if (__value__ == (4019633i32)) {
                    if (_err_4019370 != null) {
                        _gotoNext = 4019647i32;
                    } else {
                        _gotoNext = 4019676i32;
                    };
                } else if (__value__ == (4019647i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4019370 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4019676i32;
                } else if (__value__ == (4019676i32)) {
                    if (_star_4019099) {
                        _gotoNext = 4019684i32;
                    } else {
                        _gotoNext = 4020099i32;
                    };
                } else if (__value__ == (4019684i32)) {
                    _i_4019755 = (0 : stdgo.GoInt);
                    _gotoNext = 4019751i32;
                } else if (__value__ == (4019751i32)) {
                    if (((_i_4019755 < (_name.length) : Bool) && (_name[(_i_4019755 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4019806i32;
                    } else {
                        _gotoNext = 4020099i32;
                    };
                } else if (__value__ == (4019802i32)) {
                    _i_4019755++;
                    _gotoNext = 4019751i32;
                } else if (__value__ == (4019806i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4019115?.__copy__(), (_name.__slice__((_i_4019755 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4019812 = __tmp__._0?.__copy__();
                        _ok_4019815 = __tmp__._1;
                        _err_4019819 = __tmp__._2;
                    };
                    if (_ok_4019815) {
                        _gotoNext = 4019866i32;
                    } else {
                        _gotoNext = 4020043i32;
                    };
                } else if (__value__ == (4019866i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4019812.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4019973i32;
                    } else {
                        _gotoNext = 4020002i32;
                    };
                } else if (__value__ == (4019973i32)) {
                    _i_4019755++;
                    _gotoNext = 4019751i32;
                } else if (__value__ == (4020002i32)) {
                    _name = _t_4019812?.__copy__();
                    _gotoNext = 4019070i32;
                } else if (__value__ == (4020043i32)) {
                    if (_err_4019819 != null) {
                        _gotoNext = 4020057i32;
                    } else {
                        _gotoNext = 4019802i32;
                    };
                } else if (__value__ == (4020057i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4019819 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4019802i32;
                } else if (__value__ == (4020099i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4019070i32;
                } else if (__value__ == (4020121i32)) {
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
