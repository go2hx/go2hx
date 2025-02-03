package stdgo.encoding.asn1;
class T_bytesEncoder_static_extension {
    static public function encode(_b:T_bytesEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder_static_extension.T_bytesEncoder_static_extension.encode(_b, _dst);
    }
    static public function len(_b:T_bytesEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder_static_extension.T_bytesEncoder_static_extension.len(_b);
    }
}
