package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
@:keep class T_nistPoint_static_extension {
    @:interfacetypeffun
    static public function scalarBaseMult(t:stdgo._internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.scalarBaseMult(_0);
    @:interfacetypeffun
    static public function scalarMult(t:stdgo._internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint, _0:Dynamic, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.scalarMult(_0, _1);
    @:interfacetypeffun
    static public function setBytes(t:stdgo._internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.setBytes(_0);
    @:interfacetypeffun
    static public function bytesX(t:stdgo._internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.bytesX();
    @:interfacetypeffun
    static public function bytes(t:stdgo._internal.crypto.ecdh.Ecdh_T_nistPoint.T_nistPoint):stdgo.Slice<stdgo.GoUInt8> return t.bytes();
}
