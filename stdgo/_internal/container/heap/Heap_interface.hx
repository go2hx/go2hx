package stdgo._internal.container.heap;
@:interface typedef Interface = stdgo.StructType & {
    @:interfacetypeffun
    function push(_x:stdgo.AnyInterface):Void;
    @:interfacetypeffun
    function pop():stdgo.AnyInterface;
    function len():stdgo.GoInt;
    function less(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool;
    function swap(_0:stdgo.GoInt, _1:stdgo.GoInt):Void;
};
