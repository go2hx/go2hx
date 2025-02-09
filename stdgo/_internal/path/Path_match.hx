package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _t_2618518:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2618082:stdgo.Error = (null : stdgo.Error);
        var _star_2617815:Bool = false;
        var _err_2618994:stdgo.Error = (null : stdgo.Error);
        var _err_2618525:stdgo.Error = (null : stdgo.Error);
        var _ok_2618521:Bool = false;
        var _i_2618467:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2618078:Bool = false;
        var _t_2618075:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2617831:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2617776i32;
                } else if (__value__ == (2617776i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2617786i32;
                } else if (__value__ == (2617786i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2617807i32;
                    } else {
                        _gotoNext = 2619092i32;
                    };
                } else if (__value__ == (2617807i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2617815 = @:tmpset0 __tmp__._0;
                        _chunk_2617831 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2617815 && (_chunk_2617831 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2617913i32;
                    } else {
                        _gotoNext = 2618075i32;
                    };
                } else if (__value__ == (2617913i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2618075i32;
                } else if (__value__ == (2618075i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2617831?.__copy__(), _name?.__copy__());
                        _t_2618075 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2618078 = @:tmpset0 __tmp__._1;
                        _err_2618082 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2618078 && (((_t_2618075.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2618313i32;
                    } else {
                        _gotoNext = 2618345i32;
                    };
                } else if (__value__ == (2618313i32)) {
                    _name = _t_2618075?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2617786i32;
                } else if (__value__ == (2618345i32)) {
                    if (_err_2618082 != null) {
                        _gotoNext = 2618359i32;
                    } else {
                        _gotoNext = 2618388i32;
                    };
                } else if (__value__ == (2618359i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2618082 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2618388i32;
                } else if (__value__ == (2618388i32)) {
                    if (_star_2617815) {
                        _gotoNext = 2618396i32;
                    } else {
                        _gotoNext = 2618917i32;
                    };
                } else if (__value__ == (2618396i32)) {
                    _i_2618467 = (0 : stdgo.GoInt);
                    _gotoNext = 2618463i32;
                } else if (__value__ == (2618463i32)) {
                    if (((_i_2618467 < (_name.length) : Bool) && (_name[(_i_2618467 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2618512i32;
                    } else {
                        _gotoNext = 2618917i32;
                    };
                } else if (__value__ == (2618508i32)) {
                    _i_2618467++;
                    _gotoNext = 2618463i32;
                } else if (__value__ == (2618512i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2617831?.__copy__(), (_name.__slice__((_i_2618467 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2618518 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2618521 = @:tmpset0 __tmp__._1;
                        _err_2618525 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2618521) {
                        _gotoNext = 2618572i32;
                    } else {
                        _gotoNext = 2618749i32;
                    };
                } else if (__value__ == (2618572i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2618518.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2618679i32;
                    } else {
                        _gotoNext = 2618708i32;
                    };
                } else if (__value__ == (2618679i32)) {
                    _i_2618467++;
                    _gotoNext = 2618463i32;
                } else if (__value__ == (2618708i32)) {
                    _name = _t_2618518?.__copy__();
                    _gotoNext = 2617786i32;
                } else if (__value__ == (2618749i32)) {
                    if (_err_2618525 != null) {
                        _gotoNext = 2618763i32;
                    } else {
                        _gotoNext = 2618508i32;
                    };
                } else if (__value__ == (2618763i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2618525 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2618508i32;
                } else if (__value__ == (2618917i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2618917i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2618938i32;
                    } else {
                        _gotoNext = 2619070i32;
                    };
                } else if (__value__ == (2618938i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2617831 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2617831?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2618994 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2618994 != null) {
                            _gotoNext = 2619035i32;
                        } else {
                            _gotoNext = 2618917i32;
                        };
                    };
                } else if (__value__ == (2619035i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2618994 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2618917i32;
                } else if (__value__ == (2619070i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2617786i32;
                } else if (__value__ == (2619092i32)) {
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
