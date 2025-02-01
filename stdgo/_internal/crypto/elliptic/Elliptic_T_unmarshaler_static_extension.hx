package stdgo._internal.crypto.elliptic;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:keep class T_unmarshaler_static_extension {
    @:interfacetypeffun
    static public function unmarshalCompressed(t:stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return t.unmarshalCompressed(_0);
    @:interfacetypeffun
    static public function unmarshal(t:stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return t.unmarshal(_0);
}
