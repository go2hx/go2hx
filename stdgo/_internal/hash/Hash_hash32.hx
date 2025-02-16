package stdgo._internal.hash;
@:interface typedef Hash32 = stdgo.StructType & {
    > stdgo._internal.hash.Hash_hash.Hash,
    @:interfacetypeffun
    function sum32():stdgo.GoUInt32;
};
