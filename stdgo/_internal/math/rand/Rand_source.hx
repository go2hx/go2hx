package stdgo._internal.math.rand;
@:interface typedef Source = stdgo.StructType & {
    @:interfacetypeffun
    function int63():stdgo.GoInt64;
    @:interfacetypeffun
    function seed(_seed:stdgo.GoInt64):Void;
};
