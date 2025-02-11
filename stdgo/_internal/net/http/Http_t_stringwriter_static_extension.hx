package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_stringWriter_asInterface) class T_stringWriter_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _w:stdgo._internal.net.http.Http_t_stringwriter.T_stringWriter, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.net.http.Http_t_stringwriter.T_stringWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__ = _w._w.write((_s : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
}
