package stdgo.encoding.asn1;
class T_taggedEncoder_static_extension {
    static public function encode(_t:T_taggedEncoder, _dst:Array<std.UInt>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder_static_extension.T_taggedEncoder_static_extension.encode(_t, _dst);
    }
    static public function len(_t:T_taggedEncoder):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder>);
        return stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder_static_extension.T_taggedEncoder_static_extension.len(_t);
    }
}
