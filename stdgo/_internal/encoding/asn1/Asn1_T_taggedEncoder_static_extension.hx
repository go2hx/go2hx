package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_taggedEncoder_asInterface) class T_taggedEncoder_static_extension {
    @:keep
    static public function encode( _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder>, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder> = _t;
        _t._tag.encode(_dst);
        _t._body.encode((_dst.__slice__(_t._tag.len()) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function len( _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder> = _t;
        return (_t._tag.len() + _t._body.len() : stdgo.GoInt);
    }
}
