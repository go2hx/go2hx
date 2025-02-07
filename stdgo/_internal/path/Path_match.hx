package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2731840:Bool = false;
        var _t_2731837:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2731397:Bool = false;
        var _t_2731394:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2731150:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2731134:Bool = false;
        var _err_2732313:stdgo.Error = (null : stdgo.Error);
        var _err_2731844:stdgo.Error = (null : stdgo.Error);
        var _i_2731786:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2731401:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2731095i32;
                } else if (__value__ == (2731095i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2731105i32;
                } else if (__value__ == (2731105i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2731126i32;
                    } else {
                        _gotoNext = 2732411i32;
                    };
                } else if (__value__ == (2731126i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2731134 = @:tmpset0 __tmp__._0;
                        _chunk_2731150 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2731134 && (_chunk_2731150 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2731232i32;
                    } else {
                        _gotoNext = 2731394i32;
                    };
                } else if (__value__ == (2731232i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2731394i32;
                } else if (__value__ == (2731394i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2731150?.__copy__(), _name?.__copy__());
                        _t_2731394 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2731397 = @:tmpset0 __tmp__._1;
                        _err_2731401 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2731397 && (((_t_2731394.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2731632i32;
                    } else {
                        _gotoNext = 2731664i32;
                    };
                } else if (__value__ == (2731632i32)) {
                    _name = _t_2731394?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2731105i32;
                } else if (__value__ == (2731664i32)) {
                    if (_err_2731401 != null) {
                        _gotoNext = 2731678i32;
                    } else {
                        _gotoNext = 2731707i32;
                    };
                } else if (__value__ == (2731678i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2731401 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2731707i32;
                } else if (__value__ == (2731707i32)) {
                    if (_star_2731134) {
                        _gotoNext = 2731715i32;
                    } else {
                        _gotoNext = 2732236i32;
                    };
                } else if (__value__ == (2731715i32)) {
                    _i_2731786 = (0 : stdgo.GoInt);
                    _gotoNext = 2731782i32;
                } else if (__value__ == (2731782i32)) {
                    if (((_i_2731786 < (_name.length) : Bool) && (_name[(_i_2731786 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2731831i32;
                    } else {
                        _gotoNext = 2732236i32;
                    };
                } else if (__value__ == (2731827i32)) {
                    _i_2731786++;
                    _gotoNext = 2731782i32;
                } else if (__value__ == (2731831i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2731150?.__copy__(), (_name.__slice__((_i_2731786 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2731837 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2731840 = @:tmpset0 __tmp__._1;
                        _err_2731844 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2731840) {
                        _gotoNext = 2731891i32;
                    } else {
                        _gotoNext = 2732068i32;
                    };
                } else if (__value__ == (2731891i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2731837.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2731998i32;
                    } else {
                        _gotoNext = 2732027i32;
                    };
                } else if (__value__ == (2731998i32)) {
                    _i_2731786++;
                    _gotoNext = 2731782i32;
                } else if (__value__ == (2732027i32)) {
                    _name = _t_2731837?.__copy__();
                    _gotoNext = 2731105i32;
                } else if (__value__ == (2732068i32)) {
                    if (_err_2731844 != null) {
                        _gotoNext = 2732082i32;
                    } else {
                        _gotoNext = 2731827i32;
                    };
                } else if (__value__ == (2732082i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2731844 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2731827i32;
                } else if (__value__ == (2732236i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2732236i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2732257i32;
                    } else {
                        _gotoNext = 2732389i32;
                    };
                } else if (__value__ == (2732257i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2731150 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2731150?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2732313 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2732313 != null) {
                            _gotoNext = 2732354i32;
                        } else {
                            _gotoNext = 2732236i32;
                        };
                    };
                } else if (__value__ == (2732354i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2732313 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2732236i32;
                } else if (__value__ == (2732389i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2731105i32;
                } else if (__value__ == (2732411i32)) {
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
