package stdgo.net.http.internal;
class T_chunkedWriter_static_extension {
    static public function close(_cw:T_chunkedWriter):stdgo.Error {
        final _cw = (_cw : stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter>);
        return stdgo._internal.net.http.internal.Internal_T_chunkedWriter_static_extension.T_chunkedWriter_static_extension.close(_cw);
    }
    static public function write(_cw:T_chunkedWriter, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _cw = (_cw : stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.internal.Internal_T_chunkedWriter_static_extension.T_chunkedWriter_static_extension.write(_cw, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
