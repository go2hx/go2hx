package stdgo._internal.crypto.ecdsa;
@:keep class T_nistPoint_static_extension {
    @:interfacetypeffun
    static public function scalarBaseMult(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.scalarBaseMult(_0);
    @:interfacetypeffun
    static public function scalarMult(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint, _0:Dynamic, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.scalarMult(_0, _1);
    @:interfacetypeffun
    static public function add(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint, _0:Dynamic, _1:Dynamic):Dynamic return t.add(_0, _1);
    @:interfacetypeffun
    static public function setBytes(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.setBytes(_0);
    @:interfacetypeffun
    static public function bytesX(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.bytesX();
    @:interfacetypeffun
    static public function bytes(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint):stdgo.Slice<stdgo.GoUInt8> return t.bytes();
}
