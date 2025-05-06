package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _err_9:stdgo.Error = (null : stdgo.Error);
        var _ok_7:Bool = false;
        var _t_6:stdgo.GoString = ("" : stdgo.GoString);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3:Bool = false;
        var _t_2:stdgo.GoString = ("" : stdgo.GoString);
        var _star_0:Bool = false;
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _chunk_1:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 2733338i64;
                } else if (__value__ == (2733338i64)) {
                    0i64;
                    patternBreak = false;
                    _gotoNext = 2733348i64;
                } else if (__value__ == (2733348i64)) {
                    //"file://#L0"
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2733369i64;
                    } else {
                        _gotoNext = 2734654i64;
                    };
                } else if (__value__ == (2733369i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_0 = @:tmpset0 __tmp__._0;
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L43"
                    if ((_star_0 && (_chunk_1 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2733475i64;
                    } else {
                        _gotoNext = 2733637i64;
                    };
                } else if (__value__ == (2733475i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L45"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2733637i64;
                } else if (__value__ == (2733637i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), _name?.__copy__());
                        _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3 = @:tmpset0 __tmp__._1;
                        _err_4 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L52"
                    if ((_ok_3 && (((_t_2.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2733875i64;
                    } else {
                        _gotoNext = 2733907i64;
                    };
                } else if (__value__ == (2733875i64)) {
                    _name = _t_2?.__copy__();
                    0i64;
                    _gotoNext = 2733348i64;
                } else if (__value__ == (2733907i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L56"
                    if (_err_4 != null) {
                        _gotoNext = 2733921i64;
                    } else {
                        _gotoNext = 2733950i64;
                    };
                } else if (__value__ == (2733921i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L57"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2733950i64;
                } else if (__value__ == (2733950i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L59"
                    if (_star_0) {
                        _gotoNext = 2733958i64;
                    } else {
                        _gotoNext = 2734479i64;
                    };
                } else if (__value__ == (2733958i64)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 2734025i64;
                } else if (__value__ == (2734025i64)) {
                    //"file://#L0"
                    if (((_i_5 < (_name.length) : Bool) && (_name[(_i_5 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2734074i64;
                    } else {
                        _gotoNext = 2734479i64;
                    };
                } else if (__value__ == (2734070i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L62"
                    _i_5++;
                    _gotoNext = 2734025i64;
                } else if (__value__ == (2734074i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (_name.__slice__((_i_5 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_6 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_7 = @:tmpset0 __tmp__._1;
                        _err_8 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L64"
                    if (_ok_7) {
                        _gotoNext = 2734134i64;
                    } else {
                        _gotoNext = 2734311i64;
                    };
                } else if (__value__ == (2734134i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L66"
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_6.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2734241i64;
                    } else {
                        _gotoNext = 2734270i64;
                    };
                } else if (__value__ == (2734241i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L62"
                    _i_5++;
                    _gotoNext = 2734025i64;
                } else if (__value__ == (2734270i64)) {
                    _name = _t_6?.__copy__();
                    _gotoNext = 2733348i64;
                } else if (__value__ == (2734311i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L72"
                    if (_err_8 != null) {
                        _gotoNext = 2734325i64;
                    } else {
                        _gotoNext = 2734070i64;
                    };
                } else if (__value__ == (2734325i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L73"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_8 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2734070i64;
                } else if (__value__ == (2734479i64)) {
                    0i64;
                    _gotoNext = 2734479i64;
                    //"file://#L0"
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2734500i64;
                    } else {
                        _gotoNext = 2734632i64;
                    };
                } else if (__value__ == (2734500i64)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L81"
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_9 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_9 != null) {
                            _gotoNext = 2734597i64;
                        } else {
                            _gotoNext = 2734479i64;
                        };
                    };
                } else if (__value__ == (2734597i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L82"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_9 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2734479i64;
                } else if (__value__ == (2734632i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L85"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2733348i64;
                } else if (__value__ == (2734654i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L87"
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
