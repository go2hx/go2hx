package stdgo.net.http.fcgi;
class T_streamWriter_static_extension {
    static public function close(_w:T_streamWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter_static_extension.T_streamWriter_static_extension.close(_w);
    }
    static public function write(_w:T_streamWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter_static_extension.T_streamWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
