package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2809735:Bool = false;
        var _chunk_2809488:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2810651:stdgo.Error = (null : stdgo.Error);
        var _err_2810182:stdgo.Error = (null : stdgo.Error);
        var _ok_2810178:Bool = false;
        var _t_2810175:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2810124:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_2809472:Bool = false;
        var patternBreak = false;
        var _err_2809739:stdgo.Error = (null : stdgo.Error);
        var _t_2809732:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2809433i32;
                } else if (__value__ == (2809433i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2809443i32;
                } else if (__value__ == (2809443i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2809464i32;
                    } else {
                        _gotoNext = 2810749i32;
                    };
                } else if (__value__ == (2809464i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2809472 = __tmp__._0;
                        _chunk_2809488 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2809472 && (_chunk_2809488 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2809570i32;
                    } else {
                        _gotoNext = 2809732i32;
                    };
                } else if (__value__ == (2809570i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2809732i32;
                } else if (__value__ == (2809732i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2809488?.__copy__(), _name?.__copy__());
                        _t_2809732 = __tmp__._0?.__copy__();
                        _ok_2809735 = __tmp__._1;
                        _err_2809739 = __tmp__._2;
                    };
                    if ((_ok_2809735 && (((_t_2809732.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2809970i32;
                    } else {
                        _gotoNext = 2810002i32;
                    };
                } else if (__value__ == (2809970i32)) {
                    _name = _t_2809732?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2809443i32;
                } else if (__value__ == (2810002i32)) {
                    if (_err_2809739 != null) {
                        _gotoNext = 2810016i32;
                    } else {
                        _gotoNext = 2810045i32;
                    };
                } else if (__value__ == (2810016i32)) {
                    return { _0 : false, _1 : _err_2809739 };
                    _gotoNext = 2810045i32;
                } else if (__value__ == (2810045i32)) {
                    if (_star_2809472) {
                        _gotoNext = 2810053i32;
                    } else {
                        _gotoNext = 2810574i32;
                    };
                } else if (__value__ == (2810053i32)) {
                    _i_2810124 = (0 : stdgo.GoInt);
                    _gotoNext = 2810120i32;
                } else if (__value__ == (2810120i32)) {
                    if (((_i_2810124 < (_name.length) : Bool) && (_name[(_i_2810124 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2810169i32;
                    } else {
                        _gotoNext = 2810574i32;
                    };
                } else if (__value__ == (2810165i32)) {
                    _i_2810124++;
                    _gotoNext = 2810120i32;
                } else if (__value__ == (2810169i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2809488?.__copy__(), (_name.__slice__((_i_2810124 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2810175 = __tmp__._0?.__copy__();
                        _ok_2810178 = __tmp__._1;
                        _err_2810182 = __tmp__._2;
                    };
                    if (_ok_2810178) {
                        _gotoNext = 2810229i32;
                    } else {
                        _gotoNext = 2810406i32;
                    };
                } else if (__value__ == (2810229i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2810175.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2810336i32;
                    } else {
                        _gotoNext = 2810365i32;
                    };
                } else if (__value__ == (2810336i32)) {
                    _i_2810124++;
                    _gotoNext = 2810120i32;
                } else if (__value__ == (2810365i32)) {
                    _name = _t_2810175?.__copy__();
                    _gotoNext = 2809443i32;
                } else if (__value__ == (2810406i32)) {
                    if (_err_2810182 != null) {
                        _gotoNext = 2810420i32;
                    } else {
                        _gotoNext = 2810165i32;
                    };
                } else if (__value__ == (2810420i32)) {
                    return { _0 : false, _1 : _err_2810182 };
                    _gotoNext = 2810165i32;
                } else if (__value__ == (2810574i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2810574i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2810595i32;
                    } else {
                        _gotoNext = 2810727i32;
                    };
                } else if (__value__ == (2810595i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2809488 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2809488?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2810651 = __tmp__._2;
                        };
                        if (_err_2810651 != null) {
                            _gotoNext = 2810692i32;
                        } else {
                            _gotoNext = 2810727i32;
                        };
                    };
                } else if (__value__ == (2810692i32)) {
                    return { _0 : false, _1 : _err_2810651 };
                    _gotoNext = 2810727i32;
                } else if (__value__ == (2810727i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2809443i32;
                } else if (__value__ == (2810749i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
