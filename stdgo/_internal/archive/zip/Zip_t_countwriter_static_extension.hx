package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_countWriter_asInterface) class T_countWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter> = _w;
        var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.write(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _w ?? throw "null pointer dereference")._count = ((@:checkr _w ?? throw "null pointer dereference")._count + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}
