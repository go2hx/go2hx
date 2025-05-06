package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_1:stdgo.GoString = ("" : stdgo.GoString);
        var _star_0:Bool = false;
        var _ok_7:Bool = false;
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3:Bool = false;
        var _t_6:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3943634i64;
                } else if (__value__ == (3943634i64)) {
                    0i64;
                    patternBreak = false;
                    _gotoNext = 3943644i64;
                } else if (__value__ == (3943644i64)) {
                    //"file://#L0"
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3943665i64;
                    } else {
                        _gotoNext = 3944695i64;
                    };
                } else if (__value__ == (3943665i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_0 = @:tmpset0 __tmp__._0;
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L49"
                    if ((_star_0 && (_chunk_1 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3943771i64;
                    } else {
                        _gotoNext = 3943937i64;
                    };
                } else if (__value__ == (3943771i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L51"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943937i64;
                } else if (__value__ == (3943937i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_1?.__copy__(), _name?.__copy__());
                        _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3 = @:tmpset0 __tmp__._1;
                        _err_4 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L58"
                    if ((_ok_3 && (((_t_2.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3944175i64;
                    } else {
                        _gotoNext = 3944207i64;
                    };
                } else if (__value__ == (3944175i64)) {
                    _name = _t_2?.__copy__();
                    0i64;
                    _gotoNext = 3943644i64;
                } else if (__value__ == (3944207i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L62"
                    if (_err_4 != null) {
                        _gotoNext = 3944221i64;
                    } else {
                        _gotoNext = 3944250i64;
                    };
                } else if (__value__ == (3944221i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L63"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3944250i64;
                } else if (__value__ == (3944250i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L65"
                    if (_star_0) {
                        _gotoNext = 3944258i64;
                    } else {
                        _gotoNext = 3944673i64;
                    };
                } else if (__value__ == (3944258i64)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 3944325i64;
                } else if (__value__ == (3944325i64)) {
                    //"file://#L0"
                    if (((_i_5 < (_name.length) : Bool) && (_name[(_i_5 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3944380i64;
                    } else {
                        _gotoNext = 3944673i64;
                    };
                } else if (__value__ == (3944376i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L68"
                    _i_5++;
                    _gotoNext = 3944325i64;
                } else if (__value__ == (3944380i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_1?.__copy__(), (_name.__slice__((_i_5 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_6 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_7 = @:tmpset0 __tmp__._1;
                        _err_8 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L70"
                    if (_ok_7) {
                        _gotoNext = 3944440i64;
                    } else {
                        _gotoNext = 3944617i64;
                    };
                } else if (__value__ == (3944440i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L72"
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_6.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3944547i64;
                    } else {
                        _gotoNext = 3944576i64;
                    };
                } else if (__value__ == (3944547i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L68"
                    _i_5++;
                    _gotoNext = 3944325i64;
                } else if (__value__ == (3944576i64)) {
                    _name = _t_6?.__copy__();
                    _gotoNext = 3943644i64;
                } else if (__value__ == (3944617i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L78"
                    if (_err_8 != null) {
                        _gotoNext = 3944631i64;
                    } else {
                        _gotoNext = 3944376i64;
                    };
                } else if (__value__ == (3944631i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L79"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_8 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3944376i64;
                } else if (__value__ == (3944673i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L83"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943644i64;
                } else if (__value__ == (3944695i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L85"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
