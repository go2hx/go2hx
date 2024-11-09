package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2630415:Bool = false;
        var _t_2630412:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2629969:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2629709:Bool = false;
        var patternBreak = false;
        var _err_2630888:stdgo.Error = (null : stdgo.Error);
        var _err_2630419:stdgo.Error = (null : stdgo.Error);
        var _i_2630361:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2629976:stdgo.Error = (null : stdgo.Error);
        var _ok_2629972:Bool = false;
        var _chunk_2629725:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2629670i32;
                } else if (__value__ == (2629670i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2629680i32;
                } else if (__value__ == (2629680i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2629701i32;
                    } else {
                        _gotoNext = 2630986i32;
                    };
                } else if (__value__ == (2629701i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2629709 = __tmp__._0;
                        _chunk_2629725 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2629709 && (_chunk_2629725 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2629807i32;
                    } else {
                        _gotoNext = 2629969i32;
                    };
                } else if (__value__ == (2629807i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2629969i32;
                } else if (__value__ == (2629969i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2629725?.__copy__(), _name?.__copy__());
                        _t_2629969 = __tmp__._0?.__copy__();
                        _ok_2629972 = __tmp__._1;
                        _err_2629976 = __tmp__._2;
                    };
                    if ((_ok_2629972 && (((_t_2629969.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2630207i32;
                    } else {
                        _gotoNext = 2630239i32;
                    };
                } else if (__value__ == (2630207i32)) {
                    _name = _t_2629969?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2629680i32;
                } else if (__value__ == (2630239i32)) {
                    if (_err_2629976 != null) {
                        _gotoNext = 2630253i32;
                    } else {
                        _gotoNext = 2630282i32;
                    };
                } else if (__value__ == (2630253i32)) {
                    return { _0 : false, _1 : _err_2629976 };
                    _gotoNext = 2630282i32;
                } else if (__value__ == (2630282i32)) {
                    if (_star_2629709) {
                        _gotoNext = 2630290i32;
                    } else {
                        _gotoNext = 2630811i32;
                    };
                } else if (__value__ == (2630290i32)) {
                    _i_2630361 = (0 : stdgo.GoInt);
                    _gotoNext = 2630357i32;
                } else if (__value__ == (2630357i32)) {
                    if (((_i_2630361 < (_name.length) : Bool) && (_name[(_i_2630361 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2630406i32;
                    } else {
                        _gotoNext = 2630811i32;
                    };
                } else if (__value__ == (2630402i32)) {
                    _i_2630361++;
                    _gotoNext = 2630357i32;
                } else if (__value__ == (2630406i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2629725?.__copy__(), (_name.__slice__((_i_2630361 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2630412 = __tmp__._0?.__copy__();
                        _ok_2630415 = __tmp__._1;
                        _err_2630419 = __tmp__._2;
                    };
                    if (_ok_2630415) {
                        _gotoNext = 2630466i32;
                    } else {
                        _gotoNext = 2630643i32;
                    };
                } else if (__value__ == (2630466i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2630412.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2630573i32;
                    } else {
                        _gotoNext = 2630602i32;
                    };
                } else if (__value__ == (2630573i32)) {
                    _i_2630361++;
                    _gotoNext = 2630357i32;
                } else if (__value__ == (2630602i32)) {
                    _name = _t_2630412?.__copy__();
                    _gotoNext = 2629680i32;
                } else if (__value__ == (2630643i32)) {
                    if (_err_2630419 != null) {
                        _gotoNext = 2630657i32;
                    } else {
                        _gotoNext = 2630402i32;
                    };
                } else if (__value__ == (2630657i32)) {
                    return { _0 : false, _1 : _err_2630419 };
                    _gotoNext = 2630402i32;
                } else if (__value__ == (2630811i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2630811i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2630832i32;
                    } else {
                        _gotoNext = 2630964i32;
                    };
                } else if (__value__ == (2630832i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2629725 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2629725?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2630888 = __tmp__._2;
                        };
                        if (_err_2630888 != null) {
                            _gotoNext = 2630929i32;
                        } else {
                            _gotoNext = 2630964i32;
                        };
                    };
                } else if (__value__ == (2630929i32)) {
                    return { _0 : false, _1 : _err_2630888 };
                    _gotoNext = 2630964i32;
                } else if (__value__ == (2630964i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2629680i32;
                } else if (__value__ == (2630986i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
