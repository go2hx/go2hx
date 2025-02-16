package stdgo._internal.crypto.tls;
@:interface typedef T_constantTimeHash = stdgo.StructType & {
    > stdgo._internal.hash.Hash_hash.Hash,
    @:interfacetypeffun
    function constantTimeSum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
};
