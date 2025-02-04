package stdgo._internal.context;
@:interface typedef T_testingT = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
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
    public dynamic function parallel():Void;
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
};
