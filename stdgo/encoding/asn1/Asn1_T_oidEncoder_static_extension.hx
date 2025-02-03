package stdgo.encoding.asn1;
class T_oidEncoder_static_extension {
    static public function encode(_oid:T_oidEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_T_oidEncoder_static_extension.T_oidEncoder_static_extension.encode(_oid, _dst);
    }
    static public function len(_oid:T_oidEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_T_oidEncoder_static_extension.T_oidEncoder_static_extension.len(_oid);
    }
}
