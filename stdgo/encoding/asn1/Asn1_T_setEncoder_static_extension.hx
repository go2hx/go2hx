package stdgo.encoding.asn1;
class T_setEncoder_static_extension {
    static public function encode(_s:T_setEncoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_T_setEncoder_static_extension.T_setEncoder_static_extension.encode(_s, _dst);
    }
    static public function len(_s:T_setEncoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_T_setEncoder_static_extension.T_setEncoder_static_extension.len(_s);
    }
}
