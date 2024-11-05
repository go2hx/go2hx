package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2700326:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2701245:stdgo.Error = (null : stdgo.Error);
        var _i_2700718:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2700329:Bool = false;
        var _chunk_2700082:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2700066:Bool = false;
        var _err_2700776:stdgo.Error = (null : stdgo.Error);
        var _ok_2700772:Bool = false;
        var _t_2700769:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2700333:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2700027i32;
                } else if (__value__ == (2700027i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2700037i32;
                } else if (__value__ == (2700037i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2700058i32;
                    } else {
                        _gotoNext = 2701343i32;
                    };
                } else if (__value__ == (2700058i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2700066 = __tmp__._0;
                        _chunk_2700082 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2700066 && (_chunk_2700082 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2700164i32;
                    } else {
                        _gotoNext = 2700326i32;
                    };
                } else if (__value__ == (2700164i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2700326i32;
                } else if (__value__ == (2700326i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2700082?.__copy__(), _name?.__copy__());
                        _t_2700326 = __tmp__._0?.__copy__();
                        _ok_2700329 = __tmp__._1;
                        _err_2700333 = __tmp__._2;
                    };
                    if ((_ok_2700329 && (((_t_2700326.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2700564i32;
                    } else {
                        _gotoNext = 2700596i32;
                    };
                } else if (__value__ == (2700564i32)) {
                    _name = _t_2700326?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2700037i32;
                } else if (__value__ == (2700596i32)) {
                    if (_err_2700333 != null) {
                        _gotoNext = 2700610i32;
                    } else {
                        _gotoNext = 2700639i32;
                    };
                } else if (__value__ == (2700610i32)) {
                    return { _0 : false, _1 : _err_2700333 };
                    _gotoNext = 2700639i32;
                } else if (__value__ == (2700639i32)) {
                    if (_star_2700066) {
                        _gotoNext = 2700647i32;
                    } else {
                        _gotoNext = 2701168i32;
                    };
                } else if (__value__ == (2700647i32)) {
                    _i_2700718 = (0 : stdgo.GoInt);
                    _gotoNext = 2700714i32;
                } else if (__value__ == (2700714i32)) {
                    if (((_i_2700718 < (_name.length) : Bool) && (_name[(_i_2700718 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2700763i32;
                    } else {
                        _gotoNext = 2701168i32;
                    };
                } else if (__value__ == (2700759i32)) {
                    _i_2700718++;
                    _gotoNext = 2700714i32;
                } else if (__value__ == (2700763i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2700082?.__copy__(), (_name.__slice__((_i_2700718 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2700769 = __tmp__._0?.__copy__();
                        _ok_2700772 = __tmp__._1;
                        _err_2700776 = __tmp__._2;
                    };
                    if (_ok_2700772) {
                        _gotoNext = 2700823i32;
                    } else {
                        _gotoNext = 2701000i32;
                    };
                } else if (__value__ == (2700823i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2700769.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2700930i32;
                    } else {
                        _gotoNext = 2700959i32;
                    };
                } else if (__value__ == (2700930i32)) {
                    _i_2700718++;
                    _gotoNext = 2700714i32;
                } else if (__value__ == (2700959i32)) {
                    _name = _t_2700769?.__copy__();
                    _gotoNext = 2700037i32;
                } else if (__value__ == (2701000i32)) {
                    if (_err_2700776 != null) {
                        _gotoNext = 2701014i32;
                    } else {
                        _gotoNext = 2700759i32;
                    };
                } else if (__value__ == (2701014i32)) {
                    return { _0 : false, _1 : _err_2700776 };
                    _gotoNext = 2700759i32;
                } else if (__value__ == (2701168i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2701168i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2701189i32;
                    } else {
                        _gotoNext = 2701321i32;
                    };
                } else if (__value__ == (2701189i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2700082 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2700082?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2701245 = __tmp__._2;
                        };
                        if (_err_2701245 != null) {
                            _gotoNext = 2701286i32;
                        } else {
                            _gotoNext = 2701321i32;
                        };
                    };
                } else if (__value__ == (2701286i32)) {
                    return { _0 : false, _1 : _err_2701245 };
                    _gotoNext = 2701321i32;
                } else if (__value__ == (2701321i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2700037i32;
                } else if (__value__ == (2701343i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
