package stdgo._internal.runtime;
typedef TestingT = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function cleanup(_0:() -> Void):Void;
    /**
        
        
        
    **/
    public dynamic function error(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    public dynamic function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    public dynamic function fail():Void;
    /**
        
        
        
    **/
    public dynamic function failNow():Void;
    /**
        
        
        
    **/
    public dynamic function failed():Bool;
    /**
        
        
        
    **/
    public dynamic function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    public dynamic function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    public dynamic function helper():Void;
    /**
        
        
        
    **/
    public dynamic function log(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    public dynamic function logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    public dynamic function name():stdgo.GoString;
    /**
        
        
        
    **/
    public dynamic function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void;
    /**
        
        
        
    **/
    public dynamic function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    public dynamic function skipNow():Void;
    /**
        
        
        
    **/
    public dynamic function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    /**
        
        
        
    **/
    public dynamic function skipped():Bool;
    /**
        
        
        
    **/
    public dynamic function tempDir():stdgo.GoString;
};
