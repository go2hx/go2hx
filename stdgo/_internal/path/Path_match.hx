package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2670532:stdgo.Error = (null : stdgo.Error);
        var _err_2670089:stdgo.Error = (null : stdgo.Error);
        var _chunk_2669838:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2670525:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2670474:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2670085:Bool = false;
        var _t_2670082:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2669822:Bool = false;
        var patternBreak = false;
        var _err_2671001:stdgo.Error = (null : stdgo.Error);
        var _ok_2670528:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2669783i32;
                } else if (__value__ == (2669783i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2669793i32;
                } else if (__value__ == (2669793i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2669814i32;
                    } else {
                        _gotoNext = 2671099i32;
                    };
                } else if (__value__ == (2669814i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2669822 = @:tmpset0 __tmp__._0;
                        _chunk_2669838 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2669822 && (_chunk_2669838 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2669920i32;
                    } else {
                        _gotoNext = 2670082i32;
                    };
                } else if (__value__ == (2669920i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2670082i32;
                } else if (__value__ == (2670082i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2669838?.__copy__(), _name?.__copy__());
                        _t_2670082 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2670085 = @:tmpset0 __tmp__._1;
                        _err_2670089 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2670085 && (((_t_2670082.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2670320i32;
                    } else {
                        _gotoNext = 2670352i32;
                    };
                } else if (__value__ == (2670320i32)) {
                    _name = _t_2670082?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2669793i32;
                } else if (__value__ == (2670352i32)) {
                    if (_err_2670089 != null) {
                        _gotoNext = 2670366i32;
                    } else {
                        _gotoNext = 2670395i32;
                    };
                } else if (__value__ == (2670366i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2670089 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2670395i32;
                } else if (__value__ == (2670395i32)) {
                    if (_star_2669822) {
                        _gotoNext = 2670403i32;
                    } else {
                        _gotoNext = 2670924i32;
                    };
                } else if (__value__ == (2670403i32)) {
                    _i_2670474 = (0 : stdgo.GoInt);
                    _gotoNext = 2670470i32;
                } else if (__value__ == (2670470i32)) {
                    if (((_i_2670474 < (_name.length) : Bool) && (_name[(_i_2670474 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2670519i32;
                    } else {
                        _gotoNext = 2670924i32;
                    };
                } else if (__value__ == (2670515i32)) {
                    _i_2670474++;
                    _gotoNext = 2670470i32;
                } else if (__value__ == (2670519i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2669838?.__copy__(), (_name.__slice__((_i_2670474 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2670525 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2670528 = @:tmpset0 __tmp__._1;
                        _err_2670532 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2670528) {
                        _gotoNext = 2670579i32;
                    } else {
                        _gotoNext = 2670756i32;
                    };
                } else if (__value__ == (2670579i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2670525.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2670686i32;
                    } else {
                        _gotoNext = 2670715i32;
                    };
                } else if (__value__ == (2670686i32)) {
                    _i_2670474++;
                    _gotoNext = 2670470i32;
                } else if (__value__ == (2670715i32)) {
                    _name = _t_2670525?.__copy__();
                    _gotoNext = 2669793i32;
                } else if (__value__ == (2670756i32)) {
                    if (_err_2670532 != null) {
                        _gotoNext = 2670770i32;
                    } else {
                        _gotoNext = 2670515i32;
                    };
                } else if (__value__ == (2670770i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2670532 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2670515i32;
                } else if (__value__ == (2670924i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2670924i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2670945i32;
                    } else {
                        _gotoNext = 2671077i32;
                    };
                } else if (__value__ == (2670945i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2669838 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2669838?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2671001 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2671001 != null) {
                            _gotoNext = 2671042i32;
                        } else {
                            _gotoNext = 2670924i32;
                        };
                    };
                } else if (__value__ == (2671042i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2671001 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2670924i32;
                } else if (__value__ == (2671077i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2669793i32;
                } else if (__value__ == (2671099i32)) {
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
