package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_2681579:Bool = false;
        var patternBreak = false;
        var _err_2682758:stdgo.Error = (null : stdgo.Error);
        var _err_2682289:stdgo.Error = (null : stdgo.Error);
        var _err_2681846:stdgo.Error = (null : stdgo.Error);
        var _t_2681839:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2681595:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2682285:Bool = false;
        var _t_2682282:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2682231:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2681842:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2681540i32;
                } else if (__value__ == (2681540i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2681550i32;
                } else if (__value__ == (2681550i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2681571i32;
                    } else {
                        _gotoNext = 2682856i32;
                    };
                } else if (__value__ == (2681571i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2681579 = @:tmpset0 __tmp__._0;
                        _chunk_2681595 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2681579 && (_chunk_2681595 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2681677i32;
                    } else {
                        _gotoNext = 2681839i32;
                    };
                } else if (__value__ == (2681677i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2681839i32;
                } else if (__value__ == (2681839i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2681595?.__copy__(), _name?.__copy__());
                        _t_2681839 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2681842 = @:tmpset0 __tmp__._1;
                        _err_2681846 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2681842 && (((_t_2681839.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2682077i32;
                    } else {
                        _gotoNext = 2682109i32;
                    };
                } else if (__value__ == (2682077i32)) {
                    _name = _t_2681839?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2681550i32;
                } else if (__value__ == (2682109i32)) {
                    if (_err_2681846 != null) {
                        _gotoNext = 2682123i32;
                    } else {
                        _gotoNext = 2682152i32;
                    };
                } else if (__value__ == (2682123i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2681846 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2682152i32;
                } else if (__value__ == (2682152i32)) {
                    if (_star_2681579) {
                        _gotoNext = 2682160i32;
                    } else {
                        _gotoNext = 2682681i32;
                    };
                } else if (__value__ == (2682160i32)) {
                    _i_2682231 = (0 : stdgo.GoInt);
                    _gotoNext = 2682227i32;
                } else if (__value__ == (2682227i32)) {
                    if (((_i_2682231 < (_name.length) : Bool) && (_name[(_i_2682231 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2682276i32;
                    } else {
                        _gotoNext = 2682681i32;
                    };
                } else if (__value__ == (2682272i32)) {
                    _i_2682231++;
                    _gotoNext = 2682227i32;
                } else if (__value__ == (2682276i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2681595?.__copy__(), (_name.__slice__((_i_2682231 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2682282 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2682285 = @:tmpset0 __tmp__._1;
                        _err_2682289 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2682285) {
                        _gotoNext = 2682336i32;
                    } else {
                        _gotoNext = 2682513i32;
                    };
                } else if (__value__ == (2682336i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2682282.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2682443i32;
                    } else {
                        _gotoNext = 2682472i32;
                    };
                } else if (__value__ == (2682443i32)) {
                    _i_2682231++;
                    _gotoNext = 2682227i32;
                } else if (__value__ == (2682472i32)) {
                    _name = _t_2682282?.__copy__();
                    _gotoNext = 2681550i32;
                } else if (__value__ == (2682513i32)) {
                    if (_err_2682289 != null) {
                        _gotoNext = 2682527i32;
                    } else {
                        _gotoNext = 2682272i32;
                    };
                } else if (__value__ == (2682527i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2682289 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2682272i32;
                } else if (__value__ == (2682681i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2682681i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2682702i32;
                    } else {
                        _gotoNext = 2682834i32;
                    };
                } else if (__value__ == (2682702i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2681595 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2681595?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2682758 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2682758 != null) {
                            _gotoNext = 2682799i32;
                        } else {
                            _gotoNext = 2682681i32;
                        };
                    };
                } else if (__value__ == (2682799i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2682758 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2682681i32;
                } else if (__value__ == (2682834i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2681550i32;
                } else if (__value__ == (2682856i32)) {
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
