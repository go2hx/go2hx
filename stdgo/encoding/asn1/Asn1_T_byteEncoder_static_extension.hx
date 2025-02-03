package stdgo.encoding.asn1;
class T_byteEncoder_static_extension {
    static public function encode(_c:T_byteEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_T_byteEncoder_static_extension.T_byteEncoder_static_extension.encode(_c, _dst);
    }
    static public function len(_c:T_byteEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_T_byteEncoder_static_extension.T_byteEncoder_static_extension.len(_c);
    }
}
