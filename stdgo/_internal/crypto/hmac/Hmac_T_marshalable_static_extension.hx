package stdgo._internal.crypto.hmac;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
@:keep class T_marshalable_static_extension {
    @:interfacetypeffun
    static public function unmarshalBinary(t:stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return t.unmarshalBinary(_0);
    @:interfacetypeffun
    static public function marshalBinary(t:stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.marshalBinary();
}
