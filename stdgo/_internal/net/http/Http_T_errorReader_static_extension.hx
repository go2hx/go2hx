package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_errorReader_asInterface) class T_errorReader_static_extension {
    @:keep
    static public function read( _r:stdgo._internal.net.http.Http_T_errorReader.T_errorReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.net.http.Http_T_errorReader.T_errorReader = _r?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : _r._err };
    }
}