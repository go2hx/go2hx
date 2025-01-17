package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2776660:stdgo.Error = (null : stdgo.Error);
        var _ok_2776656:Bool = false;
        var _t_2776653:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2776602:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2776213:Bool = false;
        var _t_2776210:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2777129:stdgo.Error = (null : stdgo.Error);
        var _err_2776217:stdgo.Error = (null : stdgo.Error);
        var _chunk_2775966:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2775950:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2775911i32;
                } else if (__value__ == (2775911i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2775921i32;
                } else if (__value__ == (2775921i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2775942i32;
                    } else {
                        _gotoNext = 2777227i32;
                    };
                } else if (__value__ == (2775942i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2775950 = @:tmpset0 __tmp__._0;
                        _chunk_2775966 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2775950 && (_chunk_2775966 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2776048i32;
                    } else {
                        _gotoNext = 2776210i32;
                    };
                } else if (__value__ == (2776048i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2776210i32;
                } else if (__value__ == (2776210i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2775966?.__copy__(), _name?.__copy__());
                        _t_2776210 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2776213 = @:tmpset0 __tmp__._1;
                        _err_2776217 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2776213 && (((_t_2776210.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2776448i32;
                    } else {
                        _gotoNext = 2776480i32;
                    };
                } else if (__value__ == (2776448i32)) {
                    _name = _t_2776210?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2775921i32;
                } else if (__value__ == (2776480i32)) {
                    if (_err_2776217 != null) {
                        _gotoNext = 2776494i32;
                    } else {
                        _gotoNext = 2776523i32;
                    };
                } else if (__value__ == (2776494i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2776217 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2776523i32;
                } else if (__value__ == (2776523i32)) {
                    if (_star_2775950) {
                        _gotoNext = 2776531i32;
                    } else {
                        _gotoNext = 2777052i32;
                    };
                } else if (__value__ == (2776531i32)) {
                    _i_2776602 = (0 : stdgo.GoInt);
                    _gotoNext = 2776598i32;
                } else if (__value__ == (2776598i32)) {
                    if (((_i_2776602 < (_name.length) : Bool) && (_name[(_i_2776602 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2776647i32;
                    } else {
                        _gotoNext = 2777052i32;
                    };
                } else if (__value__ == (2776643i32)) {
                    _i_2776602++;
                    _gotoNext = 2776598i32;
                } else if (__value__ == (2776647i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2775966?.__copy__(), (_name.__slice__((_i_2776602 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2776653 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2776656 = @:tmpset0 __tmp__._1;
                        _err_2776660 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2776656) {
                        _gotoNext = 2776707i32;
                    } else {
                        _gotoNext = 2776884i32;
                    };
                } else if (__value__ == (2776707i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2776653.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2776814i32;
                    } else {
                        _gotoNext = 2776843i32;
                    };
                } else if (__value__ == (2776814i32)) {
                    _i_2776602++;
                    _gotoNext = 2776598i32;
                } else if (__value__ == (2776843i32)) {
                    _name = _t_2776653?.__copy__();
                    _gotoNext = 2775921i32;
                } else if (__value__ == (2776884i32)) {
                    if (_err_2776660 != null) {
                        _gotoNext = 2776898i32;
                    } else {
                        _gotoNext = 2776643i32;
                    };
                } else if (__value__ == (2776898i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2776660 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2776643i32;
                } else if (__value__ == (2777052i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2777052i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2777073i32;
                    } else {
                        _gotoNext = 2777205i32;
                    };
                } else if (__value__ == (2777073i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2775966 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2775966?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2777129 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2777129 != null) {
                            _gotoNext = 2777170i32;
                        } else {
                            _gotoNext = 2777052i32;
                        };
                    };
                } else if (__value__ == (2777170i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2777129 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2777052i32;
                } else if (__value__ == (2777205i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2775921i32;
                } else if (__value__ == (2777227i32)) {
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
