package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2824912:Bool = false;
        var _err_2825828:stdgo.Error = (null : stdgo.Error);
        var _err_2824916:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _err_2825359:stdgo.Error = (null : stdgo.Error);
        var _ok_2825355:Bool = false;
        var _t_2825352:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2825301:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2824909:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2824665:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2824649:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2824610i32;
                } else if (__value__ == (2824610i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2824620i32;
                } else if (__value__ == (2824620i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2824641i32;
                    } else {
                        _gotoNext = 2825926i32;
                    };
                } else if (__value__ == (2824641i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2824649 = @:tmpset0 __tmp__._0;
                        _chunk_2824665 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2824649 && (_chunk_2824665 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2824747i32;
                    } else {
                        _gotoNext = 2824909i32;
                    };
                } else if (__value__ == (2824747i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2824909i32;
                } else if (__value__ == (2824909i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2824665?.__copy__(), _name?.__copy__());
                        _t_2824909 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2824912 = @:tmpset0 __tmp__._1;
                        _err_2824916 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2824912 && (((_t_2824909.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2825147i32;
                    } else {
                        _gotoNext = 2825179i32;
                    };
                } else if (__value__ == (2825147i32)) {
                    _name = _t_2824909?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2824620i32;
                } else if (__value__ == (2825179i32)) {
                    if (_err_2824916 != null) {
                        _gotoNext = 2825193i32;
                    } else {
                        _gotoNext = 2825222i32;
                    };
                } else if (__value__ == (2825193i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2824916 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2825222i32;
                } else if (__value__ == (2825222i32)) {
                    if (_star_2824649) {
                        _gotoNext = 2825230i32;
                    } else {
                        _gotoNext = 2825751i32;
                    };
                } else if (__value__ == (2825230i32)) {
                    _i_2825301 = (0 : stdgo.GoInt);
                    _gotoNext = 2825297i32;
                } else if (__value__ == (2825297i32)) {
                    if (((_i_2825301 < (_name.length) : Bool) && (_name[(_i_2825301 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2825346i32;
                    } else {
                        _gotoNext = 2825751i32;
                    };
                } else if (__value__ == (2825342i32)) {
                    _i_2825301++;
                    _gotoNext = 2825297i32;
                } else if (__value__ == (2825346i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2824665?.__copy__(), (_name.__slice__((_i_2825301 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2825352 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2825355 = @:tmpset0 __tmp__._1;
                        _err_2825359 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2825355) {
                        _gotoNext = 2825406i32;
                    } else {
                        _gotoNext = 2825583i32;
                    };
                } else if (__value__ == (2825406i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2825352.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2825513i32;
                    } else {
                        _gotoNext = 2825542i32;
                    };
                } else if (__value__ == (2825513i32)) {
                    _i_2825301++;
                    _gotoNext = 2825297i32;
                } else if (__value__ == (2825542i32)) {
                    _name = _t_2825352?.__copy__();
                    _gotoNext = 2824620i32;
                } else if (__value__ == (2825583i32)) {
                    if (_err_2825359 != null) {
                        _gotoNext = 2825597i32;
                    } else {
                        _gotoNext = 2825342i32;
                    };
                } else if (__value__ == (2825597i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2825359 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2825342i32;
                } else if (__value__ == (2825751i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2825751i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2825772i32;
                    } else {
                        _gotoNext = 2825904i32;
                    };
                } else if (__value__ == (2825772i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2824665 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2824665?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2825828 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2825828 != null) {
                            _gotoNext = 2825869i32;
                        } else {
                            _gotoNext = 2825751i32;
                        };
                    };
                } else if (__value__ == (2825869i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2825828 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2825751i32;
                } else if (__value__ == (2825904i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2824620i32;
                } else if (__value__ == (2825926i32)) {
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
