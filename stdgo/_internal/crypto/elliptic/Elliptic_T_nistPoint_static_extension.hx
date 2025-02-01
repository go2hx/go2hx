package stdgo._internal.crypto.elliptic;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:keep class T_nistPoint_static_extension {
    @:interfacetypeffun
    static public function scalarBaseMult(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.scalarBaseMult(_0);
    @:interfacetypeffun
    static public function scalarMult(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:Dynamic, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.scalarMult(_0, _1);
    @:interfacetypeffun
    static public function double(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:Dynamic):Dynamic return t.double(_0);
    @:interfacetypeffun
    static public function add(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:Dynamic, _1:Dynamic):Dynamic return t.add(_0, _1);
    @:interfacetypeffun
    static public function setBytes(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; } return t.setBytes(_0);
    @:interfacetypeffun
    static public function bytes(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint):stdgo.Slice<stdgo.GoUInt8> return t.bytes();
}
