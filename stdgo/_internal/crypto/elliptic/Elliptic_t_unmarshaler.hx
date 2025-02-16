package stdgo._internal.crypto.elliptic;
@:interface typedef T_unmarshaler = stdgo.StructType & {
    @:interfacetypeffun
    function unmarshal(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:interfacetypeffun
    function unmarshalCompressed(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
};
