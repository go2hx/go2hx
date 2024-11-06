package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2770092:Bool = false;
        var _t_2770089:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2770038:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2769649:Bool = false;
        var _t_2769646:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2770096:stdgo.Error = (null : stdgo.Error);
        var _err_2770565:stdgo.Error = (null : stdgo.Error);
        var _err_2769653:stdgo.Error = (null : stdgo.Error);
        var _chunk_2769402:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2769386:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2769347i32;
                } else if (__value__ == (2769347i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2769357i32;
                } else if (__value__ == (2769357i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2769378i32;
                    } else {
                        _gotoNext = 2770663i32;
                    };
                } else if (__value__ == (2769378i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2769386 = __tmp__._0;
                        _chunk_2769402 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2769386 && (_chunk_2769402 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2769484i32;
                    } else {
                        _gotoNext = 2769646i32;
                    };
                } else if (__value__ == (2769484i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2769646i32;
                } else if (__value__ == (2769646i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2769402?.__copy__(), _name?.__copy__());
                        _t_2769646 = __tmp__._0?.__copy__();
                        _ok_2769649 = __tmp__._1;
                        _err_2769653 = __tmp__._2;
                    };
                    if ((_ok_2769649 && (((_t_2769646.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2769884i32;
                    } else {
                        _gotoNext = 2769916i32;
                    };
                } else if (__value__ == (2769884i32)) {
                    _name = _t_2769646?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2769357i32;
                } else if (__value__ == (2769916i32)) {
                    if (_err_2769653 != null) {
                        _gotoNext = 2769930i32;
                    } else {
                        _gotoNext = 2769959i32;
                    };
                } else if (__value__ == (2769930i32)) {
                    return { _0 : false, _1 : _err_2769653 };
                    _gotoNext = 2769959i32;
                } else if (__value__ == (2769959i32)) {
                    if (_star_2769386) {
                        _gotoNext = 2769967i32;
                    } else {
                        _gotoNext = 2770488i32;
                    };
                } else if (__value__ == (2769967i32)) {
                    _i_2770038 = (0 : stdgo.GoInt);
                    _gotoNext = 2770034i32;
                } else if (__value__ == (2770034i32)) {
                    if (((_i_2770038 < (_name.length) : Bool) && (_name[(_i_2770038 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2770083i32;
                    } else {
                        _gotoNext = 2770488i32;
                    };
                } else if (__value__ == (2770079i32)) {
                    _i_2770038++;
                    _gotoNext = 2770034i32;
                } else if (__value__ == (2770083i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2769402?.__copy__(), (_name.__slice__((_i_2770038 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2770089 = __tmp__._0?.__copy__();
                        _ok_2770092 = __tmp__._1;
                        _err_2770096 = __tmp__._2;
                    };
                    if (_ok_2770092) {
                        _gotoNext = 2770143i32;
                    } else {
                        _gotoNext = 2770320i32;
                    };
                } else if (__value__ == (2770143i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2770089.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2770250i32;
                    } else {
                        _gotoNext = 2770279i32;
                    };
                } else if (__value__ == (2770250i32)) {
                    _i_2770038++;
                    _gotoNext = 2770034i32;
                } else if (__value__ == (2770279i32)) {
                    _name = _t_2770089?.__copy__();
                    _gotoNext = 2769357i32;
                } else if (__value__ == (2770320i32)) {
                    if (_err_2770096 != null) {
                        _gotoNext = 2770334i32;
                    } else {
                        _gotoNext = 2770079i32;
                    };
                } else if (__value__ == (2770334i32)) {
                    return { _0 : false, _1 : _err_2770096 };
                    _gotoNext = 2770079i32;
                } else if (__value__ == (2770488i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2770488i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2770509i32;
                    } else {
                        _gotoNext = 2770641i32;
                    };
                } else if (__value__ == (2770509i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2769402 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2769402?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2770565 = __tmp__._2;
                        };
                        if (_err_2770565 != null) {
                            _gotoNext = 2770606i32;
                        } else {
                            _gotoNext = 2770641i32;
                        };
                    };
                } else if (__value__ == (2770606i32)) {
                    return { _0 : false, _1 : _err_2770565 };
                    _gotoNext = 2770641i32;
                } else if (__value__ == (2770641i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2769357i32;
                } else if (__value__ == (2770663i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
