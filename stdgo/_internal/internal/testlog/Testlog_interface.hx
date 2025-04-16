package stdgo._internal.internal.testlog;
@:interface typedef Interface = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function getenv(_key:stdgo.GoString):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function stat(_file:stdgo.GoString):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function open(_file:stdgo.GoString):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function chdir(_dir:stdgo.GoString):Void;
};
