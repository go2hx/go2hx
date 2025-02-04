package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_byteEncoder_asInterface) class T_byteEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _c:stdgo._internal.encoding.asn1.Asn1_t_byteencoder.T_byteEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo._internal.encoding.asn1.Asn1_t_byteencoder.T_byteEncoder = _c;
        _dst[(0 : stdgo.GoInt)] = (_c : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function len( _c:stdgo._internal.encoding.asn1.Asn1_t_byteencoder.T_byteEncoder):stdgo.GoInt {
        @:recv var _c:stdgo._internal.encoding.asn1.Asn1_t_byteencoder.T_byteEncoder = _c;
        return (1 : stdgo.GoInt);
    }
}
