package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2671356:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2670967:Bool = false;
        var _star_2670704:Bool = false;
        var patternBreak = false;
        var _err_2671883:stdgo.Error = (null : stdgo.Error);
        var _ok_2671410:Bool = false;
        var _t_2671407:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2671414:stdgo.Error = (null : stdgo.Error);
        var _err_2670971:stdgo.Error = (null : stdgo.Error);
        var _t_2670964:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2670720:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2670665i32;
                } else if (__value__ == (2670665i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2670675i32;
                } else if (__value__ == (2670675i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2670696i32;
                    } else {
                        _gotoNext = 2671981i32;
                    };
                } else if (__value__ == (2670696i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2670704 = @:tmpset0 __tmp__._0;
                        _chunk_2670720 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2670704 && (_chunk_2670720 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2670802i32;
                    } else {
                        _gotoNext = 2670964i32;
                    };
                } else if (__value__ == (2670802i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2670964i32;
                } else if (__value__ == (2670964i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2670720?.__copy__(), _name?.__copy__());
                        _t_2670964 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2670967 = @:tmpset0 __tmp__._1;
                        _err_2670971 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2670967 && (((_t_2670964.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2671202i32;
                    } else {
                        _gotoNext = 2671234i32;
                    };
                } else if (__value__ == (2671202i32)) {
                    _name = _t_2670964?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2670675i32;
                } else if (__value__ == (2671234i32)) {
                    if (_err_2670971 != null) {
                        _gotoNext = 2671248i32;
                    } else {
                        _gotoNext = 2671277i32;
                    };
                } else if (__value__ == (2671248i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2670971 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2671277i32;
                } else if (__value__ == (2671277i32)) {
                    if (_star_2670704) {
                        _gotoNext = 2671285i32;
                    } else {
                        _gotoNext = 2671806i32;
                    };
                } else if (__value__ == (2671285i32)) {
                    _i_2671356 = (0 : stdgo.GoInt);
                    _gotoNext = 2671352i32;
                } else if (__value__ == (2671352i32)) {
                    if (((_i_2671356 < (_name.length) : Bool) && (_name[(_i_2671356 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2671401i32;
                    } else {
                        _gotoNext = 2671806i32;
                    };
                } else if (__value__ == (2671397i32)) {
                    _i_2671356++;
                    _gotoNext = 2671352i32;
                } else if (__value__ == (2671401i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2670720?.__copy__(), (_name.__slice__((_i_2671356 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2671407 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2671410 = @:tmpset0 __tmp__._1;
                        _err_2671414 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2671410) {
                        _gotoNext = 2671461i32;
                    } else {
                        _gotoNext = 2671638i32;
                    };
                } else if (__value__ == (2671461i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2671407.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2671568i32;
                    } else {
                        _gotoNext = 2671597i32;
                    };
                } else if (__value__ == (2671568i32)) {
                    _i_2671356++;
                    _gotoNext = 2671352i32;
                } else if (__value__ == (2671597i32)) {
                    _name = _t_2671407?.__copy__();
                    _gotoNext = 2670675i32;
                } else if (__value__ == (2671638i32)) {
                    if (_err_2671414 != null) {
                        _gotoNext = 2671652i32;
                    } else {
                        _gotoNext = 2671397i32;
                    };
                } else if (__value__ == (2671652i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2671414 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2671397i32;
                } else if (__value__ == (2671806i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2671806i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2671827i32;
                    } else {
                        _gotoNext = 2671959i32;
                    };
                } else if (__value__ == (2671827i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2670720 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2670720?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2671883 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2671883 != null) {
                            _gotoNext = 2671924i32;
                        } else {
                            _gotoNext = 2671806i32;
                        };
                    };
                } else if (__value__ == (2671924i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2671883 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2671806i32;
                } else if (__value__ == (2671959i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2670675i32;
                } else if (__value__ == (2671981i32)) {
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
