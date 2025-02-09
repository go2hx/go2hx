package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2944535:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2944150:stdgo.Error = (null : stdgo.Error);
        var _ok_2944146:Bool = false;
        var _t_2944143:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2945062:stdgo.Error = (null : stdgo.Error);
        var _err_2944593:stdgo.Error = (null : stdgo.Error);
        var _ok_2944589:Bool = false;
        var _t_2944586:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2943899:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2943883:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2943844i32;
                } else if (__value__ == (2943844i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2943854i32;
                } else if (__value__ == (2943854i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2943875i32;
                    } else {
                        _gotoNext = 2945160i32;
                    };
                } else if (__value__ == (2943875i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2943883 = @:tmpset0 __tmp__._0;
                        _chunk_2943899 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2943883 && (_chunk_2943899 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2943981i32;
                    } else {
                        _gotoNext = 2944143i32;
                    };
                } else if (__value__ == (2943981i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2944143i32;
                } else if (__value__ == (2944143i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2943899?.__copy__(), _name?.__copy__());
                        _t_2944143 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2944146 = @:tmpset0 __tmp__._1;
                        _err_2944150 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2944146 && (((_t_2944143.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2944381i32;
                    } else {
                        _gotoNext = 2944413i32;
                    };
                } else if (__value__ == (2944381i32)) {
                    _name = _t_2944143?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2943854i32;
                } else if (__value__ == (2944413i32)) {
                    if (_err_2944150 != null) {
                        _gotoNext = 2944427i32;
                    } else {
                        _gotoNext = 2944456i32;
                    };
                } else if (__value__ == (2944427i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2944150 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2944456i32;
                } else if (__value__ == (2944456i32)) {
                    if (_star_2943883) {
                        _gotoNext = 2944464i32;
                    } else {
                        _gotoNext = 2944985i32;
                    };
                } else if (__value__ == (2944464i32)) {
                    _i_2944535 = (0 : stdgo.GoInt);
                    _gotoNext = 2944531i32;
                } else if (__value__ == (2944531i32)) {
                    if (((_i_2944535 < (_name.length) : Bool) && (_name[(_i_2944535 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2944580i32;
                    } else {
                        _gotoNext = 2944985i32;
                    };
                } else if (__value__ == (2944576i32)) {
                    _i_2944535++;
                    _gotoNext = 2944531i32;
                } else if (__value__ == (2944580i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2943899?.__copy__(), (_name.__slice__((_i_2944535 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2944586 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2944589 = @:tmpset0 __tmp__._1;
                        _err_2944593 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2944589) {
                        _gotoNext = 2944640i32;
                    } else {
                        _gotoNext = 2944817i32;
                    };
                } else if (__value__ == (2944640i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2944586.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2944747i32;
                    } else {
                        _gotoNext = 2944776i32;
                    };
                } else if (__value__ == (2944747i32)) {
                    _i_2944535++;
                    _gotoNext = 2944531i32;
                } else if (__value__ == (2944776i32)) {
                    _name = _t_2944586?.__copy__();
                    _gotoNext = 2943854i32;
                } else if (__value__ == (2944817i32)) {
                    if (_err_2944593 != null) {
                        _gotoNext = 2944831i32;
                    } else {
                        _gotoNext = 2944576i32;
                    };
                } else if (__value__ == (2944831i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2944593 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2944576i32;
                } else if (__value__ == (2944985i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2944985i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2945006i32;
                    } else {
                        _gotoNext = 2945138i32;
                    };
                } else if (__value__ == (2945006i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2943899 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2943899?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2945062 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2945062 != null) {
                            _gotoNext = 2945103i32;
                        } else {
                            _gotoNext = 2944985i32;
                        };
                    };
                } else if (__value__ == (2945103i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2945062 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2944985i32;
                } else if (__value__ == (2945138i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2943854i32;
                } else if (__value__ == (2945160i32)) {
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
