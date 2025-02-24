package stdgo._internal.sort;
@:interface typedef Interface = stdgo.StructType & {
    @:interfacetypeffun
    function len():stdgo.GoInt;
    @:interfacetypeffun
    function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool;
    @:interfacetypeffun
    function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void;
};
