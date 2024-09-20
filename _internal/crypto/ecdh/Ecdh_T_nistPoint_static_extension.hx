package _internal.crypto.ecdh;
@:keep class T_nistPoint_static_extension {
    static public function scalarBaseMult(t:_internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.scalarBaseMult(_0);
    static public function scalarMult(t:_internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint, _0:Dynamic, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.scalarMult(_0, _1);
    static public function setBytes(t:_internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.setBytes(_0);
    static public function bytesX(t:_internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.bytesX();
    static public function bytes(t:_internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint):stdgo.Slice<stdgo.GoUInt8> return t.bytes();
}
