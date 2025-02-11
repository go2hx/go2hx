package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_3988199:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3988183:Bool = false;
        var _err_3988903:stdgo.Error = (null : stdgo.Error);
        var _err_3988454:stdgo.Error = (null : stdgo.Error);
        var _t_3988447:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _ok_3988899:Bool = false;
        var _t_3988896:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3988839:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3988450:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3988144i32;
                } else if (__value__ == (3988144i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3988154i32;
                } else if (__value__ == (3988154i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3988175i32;
                    } else {
                        _gotoNext = 3989205i32;
                    };
                } else if (__value__ == (3988175i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_3988183 = @:tmpset0 __tmp__._0;
                        _chunk_3988199 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3988183 && (_chunk_3988199 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3988281i32;
                    } else {
                        _gotoNext = 3988447i32;
                    };
                } else if (__value__ == (3988281i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3988447i32;
                } else if (__value__ == (3988447i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3988199?.__copy__(), _name?.__copy__());
                        _t_3988447 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3988450 = @:tmpset0 __tmp__._1;
                        _err_3988454 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3988450 && (((_t_3988447.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3988685i32;
                    } else {
                        _gotoNext = 3988717i32;
                    };
                } else if (__value__ == (3988685i32)) {
                    _name = _t_3988447?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3988154i32;
                } else if (__value__ == (3988717i32)) {
                    if (_err_3988454 != null) {
                        _gotoNext = 3988731i32;
                    } else {
                        _gotoNext = 3988760i32;
                    };
                } else if (__value__ == (3988731i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3988454 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3988760i32;
                } else if (__value__ == (3988760i32)) {
                    if (_star_3988183) {
                        _gotoNext = 3988768i32;
                    } else {
                        _gotoNext = 3989183i32;
                    };
                } else if (__value__ == (3988768i32)) {
                    _i_3988839 = (0 : stdgo.GoInt);
                    _gotoNext = 3988835i32;
                } else if (__value__ == (3988835i32)) {
                    if (((_i_3988839 < (_name.length) : Bool) && (_name[(_i_3988839 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3988890i32;
                    } else {
                        _gotoNext = 3989183i32;
                    };
                } else if (__value__ == (3988886i32)) {
                    _i_3988839++;
                    _gotoNext = 3988835i32;
                } else if (__value__ == (3988890i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3988199?.__copy__(), (_name.__slice__((_i_3988839 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3988896 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3988899 = @:tmpset0 __tmp__._1;
                        _err_3988903 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3988899) {
                        _gotoNext = 3988950i32;
                    } else {
                        _gotoNext = 3989127i32;
                    };
                } else if (__value__ == (3988950i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3988896.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3989057i32;
                    } else {
                        _gotoNext = 3989086i32;
                    };
                } else if (__value__ == (3989057i32)) {
                    _i_3988839++;
                    _gotoNext = 3988835i32;
                } else if (__value__ == (3989086i32)) {
                    _name = _t_3988896?.__copy__();
                    _gotoNext = 3988154i32;
                } else if (__value__ == (3989127i32)) {
                    if (_err_3988903 != null) {
                        _gotoNext = 3989141i32;
                    } else {
                        _gotoNext = 3988886i32;
                    };
                } else if (__value__ == (3989141i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3988903 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3988886i32;
                } else if (__value__ == (3989183i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3988154i32;
                } else if (__value__ == (3989205i32)) {
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
