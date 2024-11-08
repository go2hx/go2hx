package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_2594842:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2594826:Bool = false;
        var _err_2596005:stdgo.Error = (null : stdgo.Error);
        var _err_2595536:stdgo.Error = (null : stdgo.Error);
        var _err_2595093:stdgo.Error = (null : stdgo.Error);
        var _ok_2595089:Bool = false;
        var _t_2595086:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _ok_2595532:Bool = false;
        var _t_2595529:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2595478:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2594787i32;
                } else if (__value__ == (2594787i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2594797i32;
                } else if (__value__ == (2594797i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2594818i32;
                    } else {
                        _gotoNext = 2596103i32;
                    };
                } else if (__value__ == (2594818i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2594826 = __tmp__._0;
                        _chunk_2594842 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2594826 && (_chunk_2594842 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2594924i32;
                    } else {
                        _gotoNext = 2595086i32;
                    };
                } else if (__value__ == (2594924i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2595086i32;
                } else if (__value__ == (2595086i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2594842?.__copy__(), _name?.__copy__());
                        _t_2595086 = __tmp__._0?.__copy__();
                        _ok_2595089 = __tmp__._1;
                        _err_2595093 = __tmp__._2;
                    };
                    if ((_ok_2595089 && (((_t_2595086.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2595324i32;
                    } else {
                        _gotoNext = 2595356i32;
                    };
                } else if (__value__ == (2595324i32)) {
                    _name = _t_2595086?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2594797i32;
                } else if (__value__ == (2595356i32)) {
                    if (_err_2595093 != null) {
                        _gotoNext = 2595370i32;
                    } else {
                        _gotoNext = 2595399i32;
                    };
                } else if (__value__ == (2595370i32)) {
                    return { _0 : false, _1 : _err_2595093 };
                    _gotoNext = 2595399i32;
                } else if (__value__ == (2595399i32)) {
                    if (_star_2594826) {
                        _gotoNext = 2595407i32;
                    } else {
                        _gotoNext = 2595928i32;
                    };
                } else if (__value__ == (2595407i32)) {
                    _i_2595478 = (0 : stdgo.GoInt);
                    _gotoNext = 2595474i32;
                } else if (__value__ == (2595474i32)) {
                    if (((_i_2595478 < (_name.length) : Bool) && (_name[(_i_2595478 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2595523i32;
                    } else {
                        _gotoNext = 2595928i32;
                    };
                } else if (__value__ == (2595519i32)) {
                    _i_2595478++;
                    _gotoNext = 2595474i32;
                } else if (__value__ == (2595523i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2594842?.__copy__(), (_name.__slice__((_i_2595478 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2595529 = __tmp__._0?.__copy__();
                        _ok_2595532 = __tmp__._1;
                        _err_2595536 = __tmp__._2;
                    };
                    if (_ok_2595532) {
                        _gotoNext = 2595583i32;
                    } else {
                        _gotoNext = 2595760i32;
                    };
                } else if (__value__ == (2595583i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2595529.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2595690i32;
                    } else {
                        _gotoNext = 2595719i32;
                    };
                } else if (__value__ == (2595690i32)) {
                    _i_2595478++;
                    _gotoNext = 2595474i32;
                } else if (__value__ == (2595719i32)) {
                    _name = _t_2595529?.__copy__();
                    _gotoNext = 2594797i32;
                } else if (__value__ == (2595760i32)) {
                    if (_err_2595536 != null) {
                        _gotoNext = 2595774i32;
                    } else {
                        _gotoNext = 2595519i32;
                    };
                } else if (__value__ == (2595774i32)) {
                    return { _0 : false, _1 : _err_2595536 };
                    _gotoNext = 2595519i32;
                } else if (__value__ == (2595928i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2595928i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2595949i32;
                    } else {
                        _gotoNext = 2596081i32;
                    };
                } else if (__value__ == (2595949i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2594842 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2594842?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2596005 = __tmp__._2;
                        };
                        if (_err_2596005 != null) {
                            _gotoNext = 2596046i32;
                        } else {
                            _gotoNext = 2596081i32;
                        };
                    };
                } else if (__value__ == (2596046i32)) {
                    return { _0 : false, _1 : _err_2596005 };
                    _gotoNext = 2596081i32;
                } else if (__value__ == (2596081i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2594797i32;
                } else if (__value__ == (2596103i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
