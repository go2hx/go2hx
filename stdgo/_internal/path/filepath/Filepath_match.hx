package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_4027115:Bool = false;
        var _t_4026663:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4026399:Bool = false;
        var patternBreak = false;
        var _t_4027112:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4027055:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4026670:stdgo.Error = (null : stdgo.Error);
        var _ok_4026666:Bool = false;
        var _chunk_4026415:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4027119:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4026360i32;
                } else if (__value__ == (4026360i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4026370i32;
                } else if (__value__ == (4026370i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4026391i32;
                    } else {
                        _gotoNext = 4027421i32;
                    };
                } else if (__value__ == (4026391i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4026399 = @:tmpset0 __tmp__._0;
                        _chunk_4026415 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4026399 && (_chunk_4026415 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4026497i32;
                    } else {
                        _gotoNext = 4026663i32;
                    };
                } else if (__value__ == (4026497i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4026663i32;
                } else if (__value__ == (4026663i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4026415?.__copy__(), _name?.__copy__());
                        _t_4026663 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4026666 = @:tmpset0 __tmp__._1;
                        _err_4026670 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4026666 && (((_t_4026663.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4026901i32;
                    } else {
                        _gotoNext = 4026933i32;
                    };
                } else if (__value__ == (4026901i32)) {
                    _name = _t_4026663?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4026370i32;
                } else if (__value__ == (4026933i32)) {
                    if (_err_4026670 != null) {
                        _gotoNext = 4026947i32;
                    } else {
                        _gotoNext = 4026976i32;
                    };
                } else if (__value__ == (4026947i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4026670 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4026976i32;
                } else if (__value__ == (4026976i32)) {
                    if (_star_4026399) {
                        _gotoNext = 4026984i32;
                    } else {
                        _gotoNext = 4027399i32;
                    };
                } else if (__value__ == (4026984i32)) {
                    _i_4027055 = (0 : stdgo.GoInt);
                    _gotoNext = 4027051i32;
                } else if (__value__ == (4027051i32)) {
                    if (((_i_4027055 < (_name.length) : Bool) && (_name[(_i_4027055 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4027106i32;
                    } else {
                        _gotoNext = 4027399i32;
                    };
                } else if (__value__ == (4027102i32)) {
                    _i_4027055++;
                    _gotoNext = 4027051i32;
                } else if (__value__ == (4027106i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4026415?.__copy__(), (_name.__slice__((_i_4027055 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4027112 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4027115 = @:tmpset0 __tmp__._1;
                        _err_4027119 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4027115) {
                        _gotoNext = 4027166i32;
                    } else {
                        _gotoNext = 4027343i32;
                    };
                } else if (__value__ == (4027166i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4027112.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4027273i32;
                    } else {
                        _gotoNext = 4027302i32;
                    };
                } else if (__value__ == (4027273i32)) {
                    _i_4027055++;
                    _gotoNext = 4027051i32;
                } else if (__value__ == (4027302i32)) {
                    _name = _t_4027112?.__copy__();
                    _gotoNext = 4026370i32;
                } else if (__value__ == (4027343i32)) {
                    if (_err_4027119 != null) {
                        _gotoNext = 4027357i32;
                    } else {
                        _gotoNext = 4027102i32;
                    };
                } else if (__value__ == (4027357i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4027119 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4027102i32;
                } else if (__value__ == (4027399i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4026370i32;
                } else if (__value__ == (4027421i32)) {
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
