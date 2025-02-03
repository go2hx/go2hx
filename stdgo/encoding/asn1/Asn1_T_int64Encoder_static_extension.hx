package stdgo.encoding.asn1;
class T_int64Encoder_static_extension {
    static public function encode(_i:T_int64Encoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_T_int64Encoder_static_extension.T_int64Encoder_static_extension.encode(_i, _dst);
    }
    static public function len(_i:T_int64Encoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_T_int64Encoder_static_extension.T_int64Encoder_static_extension.len(_i);
    }
}
