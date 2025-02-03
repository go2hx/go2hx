package stdgo.encoding.asn1;
class T_encoder_static_extension {
    static public function encode(t:stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder, _dst:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_T_encoder_static_extension.T_encoder_static_extension.encode(t, _dst);
    }
    static public function len(t:stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder):StdTypes.Int {
        return stdgo._internal.encoding.asn1.Asn1_T_encoder_static_extension.T_encoder_static_extension.len(t);
    }
}
