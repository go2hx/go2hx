package stdgo.net.http;
class T_chunkWriter_static_extension {
    static public function write(_cw:T_chunkWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _cw = (_cw : stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_chunkWriter_static_extension.T_chunkWriter_static_extension.write(_cw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
