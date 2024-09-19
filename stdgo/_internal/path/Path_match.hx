package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _matched = false, _err = (null : stdgo.Error);
            @:label("Pattern") while (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                var _star:Bool = false;
                var _chunk:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                    _star = __tmp__._0;
                    _chunk = __tmp__._1?.__copy__();
                    _pattern = __tmp__._2?.__copy__();
                };
                if ((_star && (_chunk == stdgo.Go.str()) : Bool)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                };
                var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk?.__copy__(), _name?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if ((_ok && (((_t.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                    _name = _t?.__copy__();
                    continue;
                };
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
                if (_star) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(((_i < (_name.length) : Bool) && (_name[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool), _i++, {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk?.__copy__(), (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                            if (_ok) {
                                if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                                    continue;
                                };
                                _name = _t?.__copy__();
                                @:jump("Pattern") continue;
                            };
                            if (_err != null) {
                                return { _0 : false, _1 : _err };
                            };
                        });
                    };
                };
                while (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk?.__copy__(), stdgo.Go.str()?.__copy__()), __0:stdgo.GoString = __tmp__._0, __1:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                        if (_err != null) {
                            return { _0 : false, _1 : _err };
                        };
                    };
                };
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
            return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
        });
    }
