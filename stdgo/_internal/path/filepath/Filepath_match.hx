package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_3868809:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3868420:Bool = false;
        var _t_3868417:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3868153:Bool = false;
        var _err_3868873:stdgo.Error = (null : stdgo.Error);
        var _t_3868866:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3868424:stdgo.Error = (null : stdgo.Error);
        var _chunk_3868169:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _ok_3868869:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3868114i32;
                } else if (__value__ == (3868114i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3868124i32;
                } else if (__value__ == (3868124i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3868145i32;
                    } else {
                        _gotoNext = 3869175i32;
                    };
                } else if (__value__ == (3868145i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_3868153 = @:tmpset0 __tmp__._0;
                        _chunk_3868169 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3868153 && (_chunk_3868169 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3868251i32;
                    } else {
                        _gotoNext = 3868417i32;
                    };
                } else if (__value__ == (3868251i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3868417i32;
                } else if (__value__ == (3868417i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3868169?.__copy__(), _name?.__copy__());
                        _t_3868417 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3868420 = @:tmpset0 __tmp__._1;
                        _err_3868424 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3868420 && (((_t_3868417.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3868655i32;
                    } else {
                        _gotoNext = 3868687i32;
                    };
                } else if (__value__ == (3868655i32)) {
                    _name = _t_3868417?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3868124i32;
                } else if (__value__ == (3868687i32)) {
                    if (_err_3868424 != null) {
                        _gotoNext = 3868701i32;
                    } else {
                        _gotoNext = 3868730i32;
                    };
                } else if (__value__ == (3868701i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3868424 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3868730i32;
                } else if (__value__ == (3868730i32)) {
                    if (_star_3868153) {
                        _gotoNext = 3868738i32;
                    } else {
                        _gotoNext = 3869153i32;
                    };
                } else if (__value__ == (3868738i32)) {
                    _i_3868809 = (0 : stdgo.GoInt);
                    _gotoNext = 3868805i32;
                } else if (__value__ == (3868805i32)) {
                    if (((_i_3868809 < (_name.length) : Bool) && (_name[(_i_3868809 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3868860i32;
                    } else {
                        _gotoNext = 3869153i32;
                    };
                } else if (__value__ == (3868856i32)) {
                    _i_3868809++;
                    _gotoNext = 3868805i32;
                } else if (__value__ == (3868860i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3868169?.__copy__(), (_name.__slice__((_i_3868809 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3868866 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3868869 = @:tmpset0 __tmp__._1;
                        _err_3868873 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3868869) {
                        _gotoNext = 3868920i32;
                    } else {
                        _gotoNext = 3869097i32;
                    };
                } else if (__value__ == (3868920i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3868866.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3869027i32;
                    } else {
                        _gotoNext = 3869056i32;
                    };
                } else if (__value__ == (3869027i32)) {
                    _i_3868809++;
                    _gotoNext = 3868805i32;
                } else if (__value__ == (3869056i32)) {
                    _name = _t_3868866?.__copy__();
                    _gotoNext = 3868124i32;
                } else if (__value__ == (3869097i32)) {
                    if (_err_3868873 != null) {
                        _gotoNext = 3869111i32;
                    } else {
                        _gotoNext = 3868856i32;
                    };
                } else if (__value__ == (3869111i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3868873 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3868856i32;
                } else if (__value__ == (3869153i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3868124i32;
                } else if (__value__ == (3869175i32)) {
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
