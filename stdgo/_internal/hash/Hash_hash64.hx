package stdgo._internal.hash;
@:interface typedef Hash64 = stdgo.StructType & {
    > stdgo._internal.hash.Hash_hash.Hash,
    @:interfacetypeffun
    function sum64():stdgo.GoUInt64;
};
