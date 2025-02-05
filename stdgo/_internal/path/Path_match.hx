package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2867185:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2866941:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2866925:Bool = false;
        var _err_2868104:stdgo.Error = (null : stdgo.Error);
        var _i_2867577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2867192:stdgo.Error = (null : stdgo.Error);
        var _t_2867628:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2867188:Bool = false;
        var patternBreak = false;
        var _err_2867635:stdgo.Error = (null : stdgo.Error);
        var _ok_2867631:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2866886i32;
                } else if (__value__ == (2866886i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2866896i32;
                } else if (__value__ == (2866896i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2866917i32;
                    } else {
                        _gotoNext = 2868202i32;
                    };
                } else if (__value__ == (2866917i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2866925 = @:tmpset0 __tmp__._0;
                        _chunk_2866941 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2866925 && (_chunk_2866941 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2867023i32;
                    } else {
                        _gotoNext = 2867185i32;
                    };
                } else if (__value__ == (2867023i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2867185i32;
                } else if (__value__ == (2867185i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2866941?.__copy__(), _name?.__copy__());
                        _t_2867185 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2867188 = @:tmpset0 __tmp__._1;
                        _err_2867192 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2867188 && (((_t_2867185.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2867423i32;
                    } else {
                        _gotoNext = 2867455i32;
                    };
                } else if (__value__ == (2867423i32)) {
                    _name = _t_2867185?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2866896i32;
                } else if (__value__ == (2867455i32)) {
                    if (_err_2867192 != null) {
                        _gotoNext = 2867469i32;
                    } else {
                        _gotoNext = 2867498i32;
                    };
                } else if (__value__ == (2867469i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2867192 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2867498i32;
                } else if (__value__ == (2867498i32)) {
                    if (_star_2866925) {
                        _gotoNext = 2867506i32;
                    } else {
                        _gotoNext = 2868027i32;
                    };
                } else if (__value__ == (2867506i32)) {
                    _i_2867577 = (0 : stdgo.GoInt);
                    _gotoNext = 2867573i32;
                } else if (__value__ == (2867573i32)) {
                    if (((_i_2867577 < (_name.length) : Bool) && (_name[(_i_2867577 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2867622i32;
                    } else {
                        _gotoNext = 2868027i32;
                    };
                } else if (__value__ == (2867618i32)) {
                    _i_2867577++;
                    _gotoNext = 2867573i32;
                } else if (__value__ == (2867622i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2866941?.__copy__(), (_name.__slice__((_i_2867577 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2867628 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2867631 = @:tmpset0 __tmp__._1;
                        _err_2867635 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2867631) {
                        _gotoNext = 2867682i32;
                    } else {
                        _gotoNext = 2867859i32;
                    };
                } else if (__value__ == (2867682i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2867628.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2867789i32;
                    } else {
                        _gotoNext = 2867818i32;
                    };
                } else if (__value__ == (2867789i32)) {
                    _i_2867577++;
                    _gotoNext = 2867573i32;
                } else if (__value__ == (2867818i32)) {
                    _name = _t_2867628?.__copy__();
                    _gotoNext = 2866896i32;
                } else if (__value__ == (2867859i32)) {
                    if (_err_2867635 != null) {
                        _gotoNext = 2867873i32;
                    } else {
                        _gotoNext = 2867618i32;
                    };
                } else if (__value__ == (2867873i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2867635 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2867618i32;
                } else if (__value__ == (2868027i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2868027i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2868048i32;
                    } else {
                        _gotoNext = 2868180i32;
                    };
                } else if (__value__ == (2868048i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2866941 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2866941?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2868104 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2868104 != null) {
                            _gotoNext = 2868145i32;
                        } else {
                            _gotoNext = 2868027i32;
                        };
                    };
                } else if (__value__ == (2868145i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2868104 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2868027i32;
                } else if (__value__ == (2868180i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2866896i32;
                } else if (__value__ == (2868202i32)) {
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
