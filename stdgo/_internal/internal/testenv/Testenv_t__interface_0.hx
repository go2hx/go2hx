package stdgo._internal.internal.testenv;
@:interface typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    public dynamic function cleanup(_0:() -> Void):Void;
    public dynamic function error(_0:haxe.Rest<stdgo.AnyInterface>):Void;
    public dynamic function errorf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void;
    public dynamic function fail():Void;
    public dynamic function failNow():Void;
    public dynamic function failed():Bool;
    public dynamic function fatal(_0:haxe.Rest<stdgo.AnyInterface>):Void;
    public dynamic function fatalf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void;
    public dynamic function helper():Void;
    public dynamic function log(_0:haxe.Rest<stdgo.AnyInterface>):Void;
    public dynamic function logf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void;
    public dynamic function name():stdgo.GoString;
    public dynamic function setenv(_0:stdgo.GoString, _1:stdgo.GoString):Void;
    public dynamic function skip(_0:haxe.Rest<stdgo.AnyInterface>):Void;
    public dynamic function skipNow():Void;
    public dynamic function skipf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void;
    public dynamic function skipped():Bool;
    public dynamic function tempDir():stdgo.GoString;
    public dynamic function _private():Void;
};
