package stdgo._internal.crypto.tls;
@:interface typedef T__cloneHash___localname___binaryMarshaler_12373 = stdgo.StructType & {
    @:interfacetypeffun
    function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function unmarshalBinary(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};
