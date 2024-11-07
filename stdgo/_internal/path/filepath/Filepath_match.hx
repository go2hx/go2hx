package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_4057592:Bool = false;
        var _t_4057589:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4057532:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4057147:stdgo.Error = (null : stdgo.Error);
        var _star_4056876:Bool = false;
        var patternBreak = false;
        var _err_4057596:stdgo.Error = (null : stdgo.Error);
        var _ok_4057143:Bool = false;
        var _t_4057140:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4056892:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4056837i32;
                } else if (__value__ == (4056837i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4056847i32;
                } else if (__value__ == (4056847i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4056868i32;
                    } else {
                        _gotoNext = 4057898i32;
                    };
                } else if (__value__ == (4056868i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4056876 = __tmp__._0;
                        _chunk_4056892 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4056876 && (_chunk_4056892 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4056974i32;
                    } else {
                        _gotoNext = 4057140i32;
                    };
                } else if (__value__ == (4056974i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4057140i32;
                } else if (__value__ == (4057140i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4056892?.__copy__(), _name?.__copy__());
                        _t_4057140 = __tmp__._0?.__copy__();
                        _ok_4057143 = __tmp__._1;
                        _err_4057147 = __tmp__._2;
                    };
                    if ((_ok_4057143 && (((_t_4057140.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4057378i32;
                    } else {
                        _gotoNext = 4057410i32;
                    };
                } else if (__value__ == (4057378i32)) {
                    _name = _t_4057140?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4056847i32;
                } else if (__value__ == (4057410i32)) {
                    if (_err_4057147 != null) {
                        _gotoNext = 4057424i32;
                    } else {
                        _gotoNext = 4057453i32;
                    };
                } else if (__value__ == (4057424i32)) {
                    return { _0 : false, _1 : _err_4057147 };
                    _gotoNext = 4057453i32;
                } else if (__value__ == (4057453i32)) {
                    if (_star_4056876) {
                        _gotoNext = 4057461i32;
                    } else {
                        _gotoNext = 4057876i32;
                    };
                } else if (__value__ == (4057461i32)) {
                    _i_4057532 = (0 : stdgo.GoInt);
                    _gotoNext = 4057528i32;
                } else if (__value__ == (4057528i32)) {
                    if (((_i_4057532 < (_name.length) : Bool) && (_name[(_i_4057532 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4057583i32;
                    } else {
                        _gotoNext = 4057876i32;
                    };
                } else if (__value__ == (4057579i32)) {
                    _i_4057532++;
                    _gotoNext = 4057528i32;
                } else if (__value__ == (4057583i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4056892?.__copy__(), (_name.__slice__((_i_4057532 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4057589 = __tmp__._0?.__copy__();
                        _ok_4057592 = __tmp__._1;
                        _err_4057596 = __tmp__._2;
                    };
                    if (_ok_4057592) {
                        _gotoNext = 4057643i32;
                    } else {
                        _gotoNext = 4057820i32;
                    };
                } else if (__value__ == (4057643i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4057589.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4057750i32;
                    } else {
                        _gotoNext = 4057779i32;
                    };
                } else if (__value__ == (4057750i32)) {
                    _i_4057532++;
                    _gotoNext = 4057528i32;
                } else if (__value__ == (4057779i32)) {
                    _name = _t_4057589?.__copy__();
                    _gotoNext = 4056847i32;
                } else if (__value__ == (4057820i32)) {
                    if (_err_4057596 != null) {
                        _gotoNext = 4057834i32;
                    } else {
                        _gotoNext = 4057579i32;
                    };
                } else if (__value__ == (4057834i32)) {
                    return { _0 : false, _1 : _err_4057596 };
                    _gotoNext = 4057579i32;
                } else if (__value__ == (4057876i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4056847i32;
                } else if (__value__ == (4057898i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
