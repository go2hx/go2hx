package stdgo._internal.runtime;
@:interface typedef TestingT = stdgo.StructType & {
    @:interfacetypeffun
    function cleanup(_0:() -> Void):Void;
    @:interfacetypeffun
    function error(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function fail():Void;
    @:interfacetypeffun
    function failNow():Void;
    @:interfacetypeffun
    function failed():Bool;
    @:interfacetypeffun
    function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function helper():Void;
    @:interfacetypeffun
    function log(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function name():stdgo.GoString;
    @:interfacetypeffun
    function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void;
    @:interfacetypeffun
    function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function skipNow():Void;
    @:interfacetypeffun
    function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function skipped():Bool;
    @:interfacetypeffun
    function tempDir():stdgo.GoString;
};
