package stdgo.net.http.httputil;
class T_delegateReader_static_extension {
    static public function read(_r:T_delegateReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_delegateReader_static_extension.T_delegateReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
