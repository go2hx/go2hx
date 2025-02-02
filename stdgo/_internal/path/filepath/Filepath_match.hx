package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_4068127:Bool = false;
        var patternBreak = false;
        var _err_4068847:stdgo.Error = (null : stdgo.Error);
        var _t_4068840:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4068398:stdgo.Error = (null : stdgo.Error);
        var _ok_4068394:Bool = false;
        var _t_4068391:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4068783:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_4068143:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_4068843:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4068088i32;
                } else if (__value__ == (4068088i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4068098i32;
                } else if (__value__ == (4068098i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4068119i32;
                    } else {
                        _gotoNext = 4069149i32;
                    };
                } else if (__value__ == (4068119i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4068127 = @:tmpset0 __tmp__._0;
                        _chunk_4068143 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4068127 && (_chunk_4068143 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4068225i32;
                    } else {
                        _gotoNext = 4068391i32;
                    };
                } else if (__value__ == (4068225i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4068391i32;
                } else if (__value__ == (4068391i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4068143?.__copy__(), _name?.__copy__());
                        _t_4068391 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4068394 = @:tmpset0 __tmp__._1;
                        _err_4068398 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4068394 && (((_t_4068391.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4068629i32;
                    } else {
                        _gotoNext = 4068661i32;
                    };
                } else if (__value__ == (4068629i32)) {
                    _name = _t_4068391?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4068098i32;
                } else if (__value__ == (4068661i32)) {
                    if (_err_4068398 != null) {
                        _gotoNext = 4068675i32;
                    } else {
                        _gotoNext = 4068704i32;
                    };
                } else if (__value__ == (4068675i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4068398 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4068704i32;
                } else if (__value__ == (4068704i32)) {
                    if (_star_4068127) {
                        _gotoNext = 4068712i32;
                    } else {
                        _gotoNext = 4069127i32;
                    };
                } else if (__value__ == (4068712i32)) {
                    _i_4068783 = (0 : stdgo.GoInt);
                    _gotoNext = 4068779i32;
                } else if (__value__ == (4068779i32)) {
                    if (((_i_4068783 < (_name.length) : Bool) && (_name[(_i_4068783 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4068834i32;
                    } else {
                        _gotoNext = 4069127i32;
                    };
                } else if (__value__ == (4068830i32)) {
                    _i_4068783++;
                    _gotoNext = 4068779i32;
                } else if (__value__ == (4068834i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4068143?.__copy__(), (_name.__slice__((_i_4068783 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4068840 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4068843 = @:tmpset0 __tmp__._1;
                        _err_4068847 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4068843) {
                        _gotoNext = 4068894i32;
                    } else {
                        _gotoNext = 4069071i32;
                    };
                } else if (__value__ == (4068894i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4068840.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4069001i32;
                    } else {
                        _gotoNext = 4069030i32;
                    };
                } else if (__value__ == (4069001i32)) {
                    _i_4068783++;
                    _gotoNext = 4068779i32;
                } else if (__value__ == (4069030i32)) {
                    _name = _t_4068840?.__copy__();
                    _gotoNext = 4068098i32;
                } else if (__value__ == (4069071i32)) {
                    if (_err_4068847 != null) {
                        _gotoNext = 4069085i32;
                    } else {
                        _gotoNext = 4068830i32;
                    };
                } else if (__value__ == (4069085i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4068847 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4068830i32;
                } else if (__value__ == (4069127i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4068098i32;
                } else if (__value__ == (4069149i32)) {
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
