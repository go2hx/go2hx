package stdgo.crypto.tls;
class T_atLeastReader_static_extension {
    static public function read(_r:T_atLeastReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_atLeastReader.T_atLeastReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_atLeastReader_static_extension.T_atLeastReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
