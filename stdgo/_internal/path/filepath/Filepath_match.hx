package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_4015935:Bool = false;
        var _err_4016655:stdgo.Error = (null : stdgo.Error);
        var _t_4016648:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4016591:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4016206:stdgo.Error = (null : stdgo.Error);
        var _ok_4016202:Bool = false;
        var patternBreak = false;
        var _ok_4016651:Bool = false;
        var _t_4016199:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4015951:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4015896i32;
                } else if (__value__ == (4015896i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4015906i32;
                } else if (__value__ == (4015906i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4015927i32;
                    } else {
                        _gotoNext = 4016957i32;
                    };
                } else if (__value__ == (4015927i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4015935 = @:tmpset0 __tmp__._0;
                        _chunk_4015951 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4015935 && (_chunk_4015951 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4016033i32;
                    } else {
                        _gotoNext = 4016199i32;
                    };
                } else if (__value__ == (4016033i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4016199i32;
                } else if (__value__ == (4016199i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4015951?.__copy__(), _name?.__copy__());
                        _t_4016199 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4016202 = @:tmpset0 __tmp__._1;
                        _err_4016206 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4016202 && (((_t_4016199.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4016437i32;
                    } else {
                        _gotoNext = 4016469i32;
                    };
                } else if (__value__ == (4016437i32)) {
                    _name = _t_4016199?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4015906i32;
                } else if (__value__ == (4016469i32)) {
                    if (_err_4016206 != null) {
                        _gotoNext = 4016483i32;
                    } else {
                        _gotoNext = 4016512i32;
                    };
                } else if (__value__ == (4016483i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4016206 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4016512i32;
                } else if (__value__ == (4016512i32)) {
                    if (_star_4015935) {
                        _gotoNext = 4016520i32;
                    } else {
                        _gotoNext = 4016935i32;
                    };
                } else if (__value__ == (4016520i32)) {
                    _i_4016591 = (0 : stdgo.GoInt);
                    _gotoNext = 4016587i32;
                } else if (__value__ == (4016587i32)) {
                    if (((_i_4016591 < (_name.length) : Bool) && (_name[(_i_4016591 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4016642i32;
                    } else {
                        _gotoNext = 4016935i32;
                    };
                } else if (__value__ == (4016638i32)) {
                    _i_4016591++;
                    _gotoNext = 4016587i32;
                } else if (__value__ == (4016642i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4015951?.__copy__(), (_name.__slice__((_i_4016591 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4016648 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4016651 = @:tmpset0 __tmp__._1;
                        _err_4016655 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4016651) {
                        _gotoNext = 4016702i32;
                    } else {
                        _gotoNext = 4016879i32;
                    };
                } else if (__value__ == (4016702i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4016648.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4016809i32;
                    } else {
                        _gotoNext = 4016838i32;
                    };
                } else if (__value__ == (4016809i32)) {
                    _i_4016591++;
                    _gotoNext = 4016587i32;
                } else if (__value__ == (4016838i32)) {
                    _name = _t_4016648?.__copy__();
                    _gotoNext = 4015906i32;
                } else if (__value__ == (4016879i32)) {
                    if (_err_4016655 != null) {
                        _gotoNext = 4016893i32;
                    } else {
                        _gotoNext = 4016638i32;
                    };
                } else if (__value__ == (4016893i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4016655 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4016638i32;
                } else if (__value__ == (4016935i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4015906i32;
                } else if (__value__ == (4016957i32)) {
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
