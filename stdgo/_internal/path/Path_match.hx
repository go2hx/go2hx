package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_2629375:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2630011:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2629626:stdgo.Error = (null : stdgo.Error);
        var _ok_2629622:Bool = false;
        var patternBreak = false;
        var _err_2630538:stdgo.Error = (null : stdgo.Error);
        var _err_2630069:stdgo.Error = (null : stdgo.Error);
        var _ok_2630065:Bool = false;
        var _t_2630062:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2629619:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2629359:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2629320i32;
                } else if (__value__ == (2629320i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2629330i32;
                } else if (__value__ == (2629330i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2629351i32;
                    } else {
                        _gotoNext = 2630636i32;
                    };
                } else if (__value__ == (2629351i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2629359 = __tmp__._0;
                        _chunk_2629375 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2629359 && (_chunk_2629375 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2629457i32;
                    } else {
                        _gotoNext = 2629619i32;
                    };
                } else if (__value__ == (2629457i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2629619i32;
                } else if (__value__ == (2629619i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2629375?.__copy__(), _name?.__copy__());
                        _t_2629619 = __tmp__._0?.__copy__();
                        _ok_2629622 = __tmp__._1;
                        _err_2629626 = __tmp__._2;
                    };
                    if ((_ok_2629622 && (((_t_2629619.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2629857i32;
                    } else {
                        _gotoNext = 2629889i32;
                    };
                } else if (__value__ == (2629857i32)) {
                    _name = _t_2629619?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2629330i32;
                } else if (__value__ == (2629889i32)) {
                    if (_err_2629626 != null) {
                        _gotoNext = 2629903i32;
                    } else {
                        _gotoNext = 2629932i32;
                    };
                } else if (__value__ == (2629903i32)) {
                    return { _0 : false, _1 : _err_2629626 };
                    _gotoNext = 2629932i32;
                } else if (__value__ == (2629932i32)) {
                    if (_star_2629359) {
                        _gotoNext = 2629940i32;
                    } else {
                        _gotoNext = 2630461i32;
                    };
                } else if (__value__ == (2629940i32)) {
                    _i_2630011 = (0 : stdgo.GoInt);
                    _gotoNext = 2630007i32;
                } else if (__value__ == (2630007i32)) {
                    if (((_i_2630011 < (_name.length) : Bool) && (_name[(_i_2630011 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2630056i32;
                    } else {
                        _gotoNext = 2630461i32;
                    };
                } else if (__value__ == (2630052i32)) {
                    _i_2630011++;
                    _gotoNext = 2630007i32;
                } else if (__value__ == (2630056i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2629375?.__copy__(), (_name.__slice__((_i_2630011 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2630062 = __tmp__._0?.__copy__();
                        _ok_2630065 = __tmp__._1;
                        _err_2630069 = __tmp__._2;
                    };
                    if (_ok_2630065) {
                        _gotoNext = 2630116i32;
                    } else {
                        _gotoNext = 2630293i32;
                    };
                } else if (__value__ == (2630116i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2630062.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2630223i32;
                    } else {
                        _gotoNext = 2630252i32;
                    };
                } else if (__value__ == (2630223i32)) {
                    _i_2630011++;
                    _gotoNext = 2630007i32;
                } else if (__value__ == (2630252i32)) {
                    _name = _t_2630062?.__copy__();
                    _gotoNext = 2629330i32;
                } else if (__value__ == (2630293i32)) {
                    if (_err_2630069 != null) {
                        _gotoNext = 2630307i32;
                    } else {
                        _gotoNext = 2630052i32;
                    };
                } else if (__value__ == (2630307i32)) {
                    return { _0 : false, _1 : _err_2630069 };
                    _gotoNext = 2630052i32;
                } else if (__value__ == (2630461i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2630461i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2630482i32;
                    } else {
                        _gotoNext = 2630614i32;
                    };
                } else if (__value__ == (2630482i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2629375 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2629375?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2630538 = __tmp__._2;
                        };
                        if (_err_2630538 != null) {
                            _gotoNext = 2630579i32;
                        } else {
                            _gotoNext = 2630614i32;
                        };
                    };
                } else if (__value__ == (2630579i32)) {
                    return { _0 : false, _1 : _err_2630538 };
                    _gotoNext = 2630614i32;
                } else if (__value__ == (2630614i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2629330i32;
                } else if (__value__ == (2630636i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
