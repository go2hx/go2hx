package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_3994293:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3993847:Bool = false;
        var _chunk_3993596:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3993580:Bool = false;
        var _err_3994300:stdgo.Error = (null : stdgo.Error);
        var _i_3994236:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3993851:stdgo.Error = (null : stdgo.Error);
        var _t_3993844:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _ok_3994296:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3993541i32;
                } else if (__value__ == (3993541i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3993551i32;
                } else if (__value__ == (3993551i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3993572i32;
                    } else {
                        _gotoNext = 3994602i32;
                    };
                } else if (__value__ == (3993572i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3993580 = @:tmpset0 __tmp__._0;
                        _chunk_3993596 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3993580 && (_chunk_3993596 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3993678i32;
                    } else {
                        _gotoNext = 3993844i32;
                    };
                } else if (__value__ == (3993678i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3993844i32;
                } else if (__value__ == (3993844i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3993596?.__copy__(), _name?.__copy__());
                        _t_3993844 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3993847 = @:tmpset0 __tmp__._1;
                        _err_3993851 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3993847 && (((_t_3993844.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3994082i32;
                    } else {
                        _gotoNext = 3994114i32;
                    };
                } else if (__value__ == (3994082i32)) {
                    _name = _t_3993844?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3993551i32;
                } else if (__value__ == (3994114i32)) {
                    if (_err_3993851 != null) {
                        _gotoNext = 3994128i32;
                    } else {
                        _gotoNext = 3994157i32;
                    };
                } else if (__value__ == (3994128i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3993851 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3994157i32;
                } else if (__value__ == (3994157i32)) {
                    if (_star_3993580) {
                        _gotoNext = 3994165i32;
                    } else {
                        _gotoNext = 3994580i32;
                    };
                } else if (__value__ == (3994165i32)) {
                    _i_3994236 = (0 : stdgo.GoInt);
                    _gotoNext = 3994232i32;
                } else if (__value__ == (3994232i32)) {
                    if (((_i_3994236 < (_name.length) : Bool) && (_name[(_i_3994236 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3994287i32;
                    } else {
                        _gotoNext = 3994580i32;
                    };
                } else if (__value__ == (3994283i32)) {
                    _i_3994236++;
                    _gotoNext = 3994232i32;
                } else if (__value__ == (3994287i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3993596?.__copy__(), (_name.__slice__((_i_3994236 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3994293 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3994296 = @:tmpset0 __tmp__._1;
                        _err_3994300 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3994296) {
                        _gotoNext = 3994347i32;
                    } else {
                        _gotoNext = 3994524i32;
                    };
                } else if (__value__ == (3994347i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3994293.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3994454i32;
                    } else {
                        _gotoNext = 3994483i32;
                    };
                } else if (__value__ == (3994454i32)) {
                    _i_3994236++;
                    _gotoNext = 3994232i32;
                } else if (__value__ == (3994483i32)) {
                    _name = _t_3994293?.__copy__();
                    _gotoNext = 3993551i32;
                } else if (__value__ == (3994524i32)) {
                    if (_err_3994300 != null) {
                        _gotoNext = 3994538i32;
                    } else {
                        _gotoNext = 3994283i32;
                    };
                } else if (__value__ == (3994538i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3994300 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3994283i32;
                } else if (__value__ == (3994580i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3993551i32;
                } else if (__value__ == (3994602i32)) {
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
