package stdgo.net.http.httputil;
class T_neverEnding_static_extension {
    static public function read(_b:T_neverEnding, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_neverEnding_static_extension.T_neverEnding_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
