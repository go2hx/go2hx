package stdgo.crypto.ecdsa;
class T_zr_static_extension {
    static public function read(_:T_zr, _dst:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_T_zr_static_extension.T_zr_static_extension.read(_, _dst);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
