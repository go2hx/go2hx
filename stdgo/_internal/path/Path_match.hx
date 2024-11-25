package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2591593:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2591542:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2591153:Bool = false;
        var _star_2590890:Bool = false;
        var patternBreak = false;
        var _err_2591600:stdgo.Error = (null : stdgo.Error);
        var _ok_2591596:Bool = false;
        var _err_2591157:stdgo.Error = (null : stdgo.Error);
        var _t_2591150:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2590906:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2592069:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2590851i32;
                } else if (__value__ == (2590851i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2590861i32;
                } else if (__value__ == (2590861i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2590882i32;
                    } else {
                        _gotoNext = 2592167i32;
                    };
                } else if (__value__ == (2590882i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2590890 = __tmp__._0;
                        _chunk_2590906 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2590890 && (_chunk_2590906 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2590988i32;
                    } else {
                        _gotoNext = 2591150i32;
                    };
                } else if (__value__ == (2590988i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2591150i32;
                } else if (__value__ == (2591150i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2590906?.__copy__(), _name?.__copy__());
                        _t_2591150 = __tmp__._0?.__copy__();
                        _ok_2591153 = __tmp__._1;
                        _err_2591157 = __tmp__._2;
                    };
                    if ((_ok_2591153 && (((_t_2591150.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2591388i32;
                    } else {
                        _gotoNext = 2591420i32;
                    };
                } else if (__value__ == (2591388i32)) {
                    _name = _t_2591150?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2590861i32;
                } else if (__value__ == (2591420i32)) {
                    if (_err_2591157 != null) {
                        _gotoNext = 2591434i32;
                    } else {
                        _gotoNext = 2591463i32;
                    };
                } else if (__value__ == (2591434i32)) {
                    return { _0 : false, _1 : _err_2591157 };
                    _gotoNext = 2591463i32;
                } else if (__value__ == (2591463i32)) {
                    if (_star_2590890) {
                        _gotoNext = 2591471i32;
                    } else {
                        _gotoNext = 2591992i32;
                    };
                } else if (__value__ == (2591471i32)) {
                    _i_2591542 = (0 : stdgo.GoInt);
                    _gotoNext = 2591538i32;
                } else if (__value__ == (2591538i32)) {
                    if (((_i_2591542 < (_name.length) : Bool) && (_name[(_i_2591542 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2591587i32;
                    } else {
                        _gotoNext = 2591992i32;
                    };
                } else if (__value__ == (2591583i32)) {
                    _i_2591542++;
                    _gotoNext = 2591538i32;
                } else if (__value__ == (2591587i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2590906?.__copy__(), (_name.__slice__((_i_2591542 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2591593 = __tmp__._0?.__copy__();
                        _ok_2591596 = __tmp__._1;
                        _err_2591600 = __tmp__._2;
                    };
                    if (_ok_2591596) {
                        _gotoNext = 2591647i32;
                    } else {
                        _gotoNext = 2591824i32;
                    };
                } else if (__value__ == (2591647i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2591593.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2591754i32;
                    } else {
                        _gotoNext = 2591783i32;
                    };
                } else if (__value__ == (2591754i32)) {
                    _i_2591542++;
                    _gotoNext = 2591538i32;
                } else if (__value__ == (2591783i32)) {
                    _name = _t_2591593?.__copy__();
                    _gotoNext = 2590861i32;
                } else if (__value__ == (2591824i32)) {
                    if (_err_2591600 != null) {
                        _gotoNext = 2591838i32;
                    } else {
                        _gotoNext = 2591583i32;
                    };
                } else if (__value__ == (2591838i32)) {
                    return { _0 : false, _1 : _err_2591600 };
                    _gotoNext = 2591583i32;
                } else if (__value__ == (2591992i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2591992i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2592013i32;
                    } else {
                        _gotoNext = 2592145i32;
                    };
                } else if (__value__ == (2592013i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2590906 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2590906?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2592069 = __tmp__._2;
                        };
                        if (_err_2592069 != null) {
                            _gotoNext = 2592110i32;
                        } else {
                            _gotoNext = 2592145i32;
                        };
                    };
                } else if (__value__ == (2592110i32)) {
                    return { _0 : false, _1 : _err_2592069 };
                    _gotoNext = 2592145i32;
                } else if (__value__ == (2592145i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2590861i32;
                } else if (__value__ == (2592167i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
