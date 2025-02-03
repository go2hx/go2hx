package stdgo._internal.encoding.xml;
function _procInst(_param:stdgo.GoString, _s:stdgo.GoString):stdgo.GoString {
        _param = (_param + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), _param?.__copy__()), __0:stdgo.GoString = __tmp__._0, _v:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
        if (_v == ((stdgo.Go.str() : stdgo.GoString))) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        if (((_v[(0 : stdgo.GoInt)] != (39 : stdgo.GoUInt8)) && (_v[(0 : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_v.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (_v.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _unquote:stdgo.GoString = __tmp__._0, __2:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return _unquote?.__copy__();
    }
