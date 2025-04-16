package stdgo._internal.container.heap;
@:interface typedef Interface = stdgo.StructType & {
    /**
        
        
        * add x as element Len()
    **/
    @:interfacetypeffun
    public dynamic function push(_x:stdgo.AnyInterface):Void;
    /**
        
        
        * remove and return element Len() - 1.
    **/
    @:interfacetypeffun
    public dynamic function pop():stdgo.AnyInterface;
    public dynamic function len():stdgo.GoInt;
    public dynamic function less(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool;
    public dynamic function swap(_0:stdgo.GoInt, _1:stdgo.GoInt):Void;
};
