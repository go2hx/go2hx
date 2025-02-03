package stdgo.crypto.tls;
class T_transcriptHash_static_extension {
    static public function write(t:stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_transcriptHash_static_extension.T_transcriptHash_static_extension.write(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
