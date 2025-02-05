package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2655346:stdgo.Error = (null : stdgo.Error);
        var _ok_2654873:Bool = false;
        var _t_2654870:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2654819:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2654434:stdgo.Error = (null : stdgo.Error);
        var _t_2654427:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2654183:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2654877:stdgo.Error = (null : stdgo.Error);
        var _ok_2654430:Bool = false;
        var _star_2654167:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2654128i32;
                } else if (__value__ == (2654128i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2654138i32;
                } else if (__value__ == (2654138i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2654159i32;
                    } else {
                        _gotoNext = 2655444i32;
                    };
                } else if (__value__ == (2654159i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2654167 = @:tmpset0 __tmp__._0;
                        _chunk_2654183 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2654167 && (_chunk_2654183 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2654265i32;
                    } else {
                        _gotoNext = 2654427i32;
                    };
                } else if (__value__ == (2654265i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2654427i32;
                } else if (__value__ == (2654427i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2654183?.__copy__(), _name?.__copy__());
                        _t_2654427 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2654430 = @:tmpset0 __tmp__._1;
                        _err_2654434 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2654430 && (((_t_2654427.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2654665i32;
                    } else {
                        _gotoNext = 2654697i32;
                    };
                } else if (__value__ == (2654665i32)) {
                    _name = _t_2654427?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2654138i32;
                } else if (__value__ == (2654697i32)) {
                    if (_err_2654434 != null) {
                        _gotoNext = 2654711i32;
                    } else {
                        _gotoNext = 2654740i32;
                    };
                } else if (__value__ == (2654711i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2654434 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2654740i32;
                } else if (__value__ == (2654740i32)) {
                    if (_star_2654167) {
                        _gotoNext = 2654748i32;
                    } else {
                        _gotoNext = 2655269i32;
                    };
                } else if (__value__ == (2654748i32)) {
                    _i_2654819 = (0 : stdgo.GoInt);
                    _gotoNext = 2654815i32;
                } else if (__value__ == (2654815i32)) {
                    if (((_i_2654819 < (_name.length) : Bool) && (_name[(_i_2654819 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2654864i32;
                    } else {
                        _gotoNext = 2655269i32;
                    };
                } else if (__value__ == (2654860i32)) {
                    _i_2654819++;
                    _gotoNext = 2654815i32;
                } else if (__value__ == (2654864i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2654183?.__copy__(), (_name.__slice__((_i_2654819 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2654870 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2654873 = @:tmpset0 __tmp__._1;
                        _err_2654877 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2654873) {
                        _gotoNext = 2654924i32;
                    } else {
                        _gotoNext = 2655101i32;
                    };
                } else if (__value__ == (2654924i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2654870.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2655031i32;
                    } else {
                        _gotoNext = 2655060i32;
                    };
                } else if (__value__ == (2655031i32)) {
                    _i_2654819++;
                    _gotoNext = 2654815i32;
                } else if (__value__ == (2655060i32)) {
                    _name = _t_2654870?.__copy__();
                    _gotoNext = 2654138i32;
                } else if (__value__ == (2655101i32)) {
                    if (_err_2654877 != null) {
                        _gotoNext = 2655115i32;
                    } else {
                        _gotoNext = 2654860i32;
                    };
                } else if (__value__ == (2655115i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2654877 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2654860i32;
                } else if (__value__ == (2655269i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2655269i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2655290i32;
                    } else {
                        _gotoNext = 2655422i32;
                    };
                } else if (__value__ == (2655290i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2654183 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2654183?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2655346 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2655346 != null) {
                            _gotoNext = 2655387i32;
                        } else {
                            _gotoNext = 2655269i32;
                        };
                    };
                } else if (__value__ == (2655387i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2655346 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2655269i32;
                } else if (__value__ == (2655422i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2654138i32;
                } else if (__value__ == (2655444i32)) {
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
