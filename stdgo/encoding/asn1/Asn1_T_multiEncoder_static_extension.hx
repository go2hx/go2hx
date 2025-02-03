package stdgo.encoding.asn1;
class T_multiEncoder_static_extension {
    static public function encode(_m:T_multiEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_T_multiEncoder_static_extension.T_multiEncoder_static_extension.encode(_m, _dst);
    }
    static public function len(_m:T_multiEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_T_multiEncoder_static_extension.T_multiEncoder_static_extension.len(_m);
    }
}
