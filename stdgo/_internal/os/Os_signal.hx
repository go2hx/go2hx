package stdgo._internal.os;
@:interface typedef Signal = stdgo.StructType & {
    @:interfacetypeffun
    function string():stdgo.GoString;
    @:interfacetypeffun
    function signal():Void;
};
