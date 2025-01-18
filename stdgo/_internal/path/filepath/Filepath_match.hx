package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_3994065:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3993680:stdgo.Error = (null : stdgo.Error);
        var _t_3993673:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3993409:Bool = false;
        var _ok_3994125:Bool = false;
        var _t_3994122:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3994129:stdgo.Error = (null : stdgo.Error);
        var _ok_3993676:Bool = false;
        var _chunk_3993425:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3993370i32;
                } else if (__value__ == (3993370i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3993380i32;
                } else if (__value__ == (3993380i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3993401i32;
                    } else {
                        _gotoNext = 3994431i32;
                    };
                } else if (__value__ == (3993401i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3993409 = @:tmpset0 __tmp__._0;
                        _chunk_3993425 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3993409 && (_chunk_3993425 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3993507i32;
                    } else {
                        _gotoNext = 3993673i32;
                    };
                } else if (__value__ == (3993507i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3993673i32;
                } else if (__value__ == (3993673i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3993425?.__copy__(), _name?.__copy__());
                        _t_3993673 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3993676 = @:tmpset0 __tmp__._1;
                        _err_3993680 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3993676 && (((_t_3993673.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3993911i32;
                    } else {
                        _gotoNext = 3993943i32;
                    };
                } else if (__value__ == (3993911i32)) {
                    _name = _t_3993673?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3993380i32;
                } else if (__value__ == (3993943i32)) {
                    if (_err_3993680 != null) {
                        _gotoNext = 3993957i32;
                    } else {
                        _gotoNext = 3993986i32;
                    };
                } else if (__value__ == (3993957i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3993680 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3993986i32;
                } else if (__value__ == (3993986i32)) {
                    if (_star_3993409) {
                        _gotoNext = 3993994i32;
                    } else {
                        _gotoNext = 3994409i32;
                    };
                } else if (__value__ == (3993994i32)) {
                    _i_3994065 = (0 : stdgo.GoInt);
                    _gotoNext = 3994061i32;
                } else if (__value__ == (3994061i32)) {
                    if (((_i_3994065 < (_name.length) : Bool) && (_name[(_i_3994065 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3994116i32;
                    } else {
                        _gotoNext = 3994409i32;
                    };
                } else if (__value__ == (3994112i32)) {
                    _i_3994065++;
                    _gotoNext = 3994061i32;
                } else if (__value__ == (3994116i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3993425?.__copy__(), (_name.__slice__((_i_3994065 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3994122 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3994125 = @:tmpset0 __tmp__._1;
                        _err_3994129 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3994125) {
                        _gotoNext = 3994176i32;
                    } else {
                        _gotoNext = 3994353i32;
                    };
                } else if (__value__ == (3994176i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3994122.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3994283i32;
                    } else {
                        _gotoNext = 3994312i32;
                    };
                } else if (__value__ == (3994283i32)) {
                    _i_3994065++;
                    _gotoNext = 3994061i32;
                } else if (__value__ == (3994312i32)) {
                    _name = _t_3994122?.__copy__();
                    _gotoNext = 3993380i32;
                } else if (__value__ == (3994353i32)) {
                    if (_err_3994129 != null) {
                        _gotoNext = 3994367i32;
                    } else {
                        _gotoNext = 3994112i32;
                    };
                } else if (__value__ == (3994367i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3994129 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3994112i32;
                } else if (__value__ == (3994409i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3993380i32;
                } else if (__value__ == (3994431i32)) {
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
