package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_countingWriter_asInterface) class T_countingWriter_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function write( _w:stdgo.Pointer<stdgo._internal.net.http.Http_t_countingwriter.T_countingWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _w.value = (_w.value + ((_p.length : stdgo._internal.net.http.Http_t_countingwriter.T_countingWriter)) : stdgo._internal.net.http.Http_t_countingwriter.T_countingWriter);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
