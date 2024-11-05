package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2691728:stdgo.Error = (null : stdgo.Error);
        var _err_2691259:stdgo.Error = (null : stdgo.Error);
        var _t_2690809:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2690816:stdgo.Error = (null : stdgo.Error);
        var _ok_2690812:Bool = false;
        var _chunk_2690565:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2690549:Bool = false;
        var patternBreak = false;
        var _ok_2691255:Bool = false;
        var _t_2691252:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2691201:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2690510i32;
                } else if (__value__ == (2690510i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2690520i32;
                } else if (__value__ == (2690520i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2690541i32;
                    } else {
                        _gotoNext = 2691826i32;
                    };
                } else if (__value__ == (2690541i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2690549 = __tmp__._0;
                        _chunk_2690565 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2690549 && (_chunk_2690565 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2690647i32;
                    } else {
                        _gotoNext = 2690809i32;
                    };
                } else if (__value__ == (2690647i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2690809i32;
                } else if (__value__ == (2690809i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2690565?.__copy__(), _name?.__copy__());
                        _t_2690809 = __tmp__._0?.__copy__();
                        _ok_2690812 = __tmp__._1;
                        _err_2690816 = __tmp__._2;
                    };
                    if ((_ok_2690812 && (((_t_2690809.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2691047i32;
                    } else {
                        _gotoNext = 2691079i32;
                    };
                } else if (__value__ == (2691047i32)) {
                    _name = _t_2690809?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2690520i32;
                } else if (__value__ == (2691079i32)) {
                    if (_err_2690816 != null) {
                        _gotoNext = 2691093i32;
                    } else {
                        _gotoNext = 2691122i32;
                    };
                } else if (__value__ == (2691093i32)) {
                    return { _0 : false, _1 : _err_2690816 };
                    _gotoNext = 2691122i32;
                } else if (__value__ == (2691122i32)) {
                    if (_star_2690549) {
                        _gotoNext = 2691130i32;
                    } else {
                        _gotoNext = 2691651i32;
                    };
                } else if (__value__ == (2691130i32)) {
                    _i_2691201 = (0 : stdgo.GoInt);
                    _gotoNext = 2691197i32;
                } else if (__value__ == (2691197i32)) {
                    if (((_i_2691201 < (_name.length) : Bool) && (_name[(_i_2691201 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2691246i32;
                    } else {
                        _gotoNext = 2691651i32;
                    };
                } else if (__value__ == (2691242i32)) {
                    _i_2691201++;
                    _gotoNext = 2691197i32;
                } else if (__value__ == (2691246i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2690565?.__copy__(), (_name.__slice__((_i_2691201 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2691252 = __tmp__._0?.__copy__();
                        _ok_2691255 = __tmp__._1;
                        _err_2691259 = __tmp__._2;
                    };
                    if (_ok_2691255) {
                        _gotoNext = 2691306i32;
                    } else {
                        _gotoNext = 2691483i32;
                    };
                } else if (__value__ == (2691306i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2691252.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2691413i32;
                    } else {
                        _gotoNext = 2691442i32;
                    };
                } else if (__value__ == (2691413i32)) {
                    _i_2691201++;
                    _gotoNext = 2691197i32;
                } else if (__value__ == (2691442i32)) {
                    _name = _t_2691252?.__copy__();
                    _gotoNext = 2690520i32;
                } else if (__value__ == (2691483i32)) {
                    if (_err_2691259 != null) {
                        _gotoNext = 2691497i32;
                    } else {
                        _gotoNext = 2691242i32;
                    };
                } else if (__value__ == (2691497i32)) {
                    return { _0 : false, _1 : _err_2691259 };
                    _gotoNext = 2691242i32;
                } else if (__value__ == (2691651i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2691651i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2691672i32;
                    } else {
                        _gotoNext = 2691804i32;
                    };
                } else if (__value__ == (2691672i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2690565 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2690565?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2691728 = __tmp__._2;
                        };
                        if (_err_2691728 != null) {
                            _gotoNext = 2691769i32;
                        } else {
                            _gotoNext = 2691804i32;
                        };
                    };
                } else if (__value__ == (2691769i32)) {
                    return { _0 : false, _1 : _err_2691728 };
                    _gotoNext = 2691804i32;
                } else if (__value__ == (2691804i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2690520i32;
                } else if (__value__ == (2691826i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
