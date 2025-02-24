package stdgo._internal.crypto.hmac;
@:interface typedef T_marshalable = stdgo.StructType & {
    @:interfacetypeffun
    function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function unmarshalBinary(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};
