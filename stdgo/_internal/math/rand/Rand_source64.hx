package stdgo._internal.math.rand;
@:interface typedef Source64 = stdgo.StructType & {
    @:interfacetypeffun
    function uint64():stdgo.GoUInt64;
    function int63():stdgo.GoInt64;
    function seed(_0:stdgo.GoInt64):Void;
};
