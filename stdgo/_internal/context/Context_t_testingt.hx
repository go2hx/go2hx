package stdgo._internal.context;
@:interface typedef T_testingT = stdgo.StructType & {
    @:interfacetypeffun
    function deadline():{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
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
    function parallel():Void;
    @:interfacetypeffun
    function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function skipNow():Void;
    @:interfacetypeffun
    function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
    @:interfacetypeffun
    function skipped():Bool;
};
