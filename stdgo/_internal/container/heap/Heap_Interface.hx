package stdgo._internal.container.heap;
typedef Interface = stdgo.StructType & {
    > stdgo._internal.sort.Sort_Interface.Interface,
    /**
        
        
        add x as element Len()
    **/
    public dynamic function push(_x:stdgo.AnyInterface):Void;
    /**
        
        
        remove and return element Len() - 1.
    **/
    public dynamic function pop():stdgo.AnyInterface;
};