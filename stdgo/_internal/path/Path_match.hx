package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2645719:stdgo.Error = (null : stdgo.Error);
        var _t_2645269:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2645025:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2645009:Bool = false;
        var patternBreak = false;
        var _ok_2645715:Bool = false;
        var _i_2645661:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2645276:stdgo.Error = (null : stdgo.Error);
        var _ok_2645272:Bool = false;
        var _err_2646188:stdgo.Error = (null : stdgo.Error);
        var _t_2645712:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2644970i32;
                } else if (__value__ == (2644970i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2644980i32;
                } else if (__value__ == (2644980i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2645001i32;
                    } else {
                        _gotoNext = 2646286i32;
                    };
                } else if (__value__ == (2645001i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2645009 = @:tmpset0 __tmp__._0;
                        _chunk_2645025 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2645009 && (_chunk_2645025 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2645107i32;
                    } else {
                        _gotoNext = 2645269i32;
                    };
                } else if (__value__ == (2645107i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2645269i32;
                } else if (__value__ == (2645269i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2645025?.__copy__(), _name?.__copy__());
                        _t_2645269 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2645272 = @:tmpset0 __tmp__._1;
                        _err_2645276 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2645272 && (((_t_2645269.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2645507i32;
                    } else {
                        _gotoNext = 2645539i32;
                    };
                } else if (__value__ == (2645507i32)) {
                    _name = _t_2645269?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2644980i32;
                } else if (__value__ == (2645539i32)) {
                    if (_err_2645276 != null) {
                        _gotoNext = 2645553i32;
                    } else {
                        _gotoNext = 2645582i32;
                    };
                } else if (__value__ == (2645553i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2645276 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2645582i32;
                } else if (__value__ == (2645582i32)) {
                    if (_star_2645009) {
                        _gotoNext = 2645590i32;
                    } else {
                        _gotoNext = 2646111i32;
                    };
                } else if (__value__ == (2645590i32)) {
                    _i_2645661 = (0 : stdgo.GoInt);
                    _gotoNext = 2645657i32;
                } else if (__value__ == (2645657i32)) {
                    if (((_i_2645661 < (_name.length) : Bool) && (_name[(_i_2645661 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2645706i32;
                    } else {
                        _gotoNext = 2646111i32;
                    };
                } else if (__value__ == (2645702i32)) {
                    _i_2645661++;
                    _gotoNext = 2645657i32;
                } else if (__value__ == (2645706i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2645025?.__copy__(), (_name.__slice__((_i_2645661 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2645712 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2645715 = @:tmpset0 __tmp__._1;
                        _err_2645719 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2645715) {
                        _gotoNext = 2645766i32;
                    } else {
                        _gotoNext = 2645943i32;
                    };
                } else if (__value__ == (2645766i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2645712.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2645873i32;
                    } else {
                        _gotoNext = 2645902i32;
                    };
                } else if (__value__ == (2645873i32)) {
                    _i_2645661++;
                    _gotoNext = 2645657i32;
                } else if (__value__ == (2645902i32)) {
                    _name = _t_2645712?.__copy__();
                    _gotoNext = 2644980i32;
                } else if (__value__ == (2645943i32)) {
                    if (_err_2645719 != null) {
                        _gotoNext = 2645957i32;
                    } else {
                        _gotoNext = 2645702i32;
                    };
                } else if (__value__ == (2645957i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2645719 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2645702i32;
                } else if (__value__ == (2646111i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2646111i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2646132i32;
                    } else {
                        _gotoNext = 2646264i32;
                    };
                } else if (__value__ == (2646132i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2645025 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2645025?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2646188 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2646188 != null) {
                            _gotoNext = 2646229i32;
                        } else {
                            _gotoNext = 2646111i32;
                        };
                    };
                } else if (__value__ == (2646229i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2646188 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2646111i32;
                } else if (__value__ == (2646264i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2644980i32;
                } else if (__value__ == (2646286i32)) {
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
