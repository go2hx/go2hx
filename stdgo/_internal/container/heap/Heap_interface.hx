package stdgo._internal.container.heap;
@:interface typedef Interface = stdgo.StructType & {
    > stdgo._internal.sort.Sort_interface.Interface,
    @:interfacetypeffun
    function push(_x:stdgo.AnyInterface):Void;
    @:interfacetypeffun
    function pop():stdgo.AnyInterface;
};
