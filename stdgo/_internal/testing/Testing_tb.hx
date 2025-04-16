package stdgo._internal.testing;
@:interface typedef TB = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function cleanup(_0:() -> Void):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function error(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function fail():Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function failNow():Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function failed():Bool;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function helper():Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function log(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function name():stdgo.GoString;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function skipNow():Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function skipped():Bool;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function tempDir():stdgo.GoString;
    /**
        * A private method to prevent users implementing the
        * interface and so future additions to it will not
        * violate Go 1 compatibility.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _private():Void;
};
