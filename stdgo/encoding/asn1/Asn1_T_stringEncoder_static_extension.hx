package stdgo.encoding.asn1;
class T_stringEncoder_static_extension {
    static public function encode(_s:T_stringEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_T_stringEncoder_static_extension.T_stringEncoder_static_extension.encode(_s, _dst);
    }
    static public function len(_s:T_stringEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_T_stringEncoder_static_extension.T_stringEncoder_static_extension.len(_s);
    }
}
