package stdgo._internal.internal.testenv;
@:interface typedef T__interface_0 = stdgo.StructType & {
    @:interfacetypeffun
    function deadline():{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    function cleanup(_0:() -> Void):Void;
    function error(_0:haxe.Rest<stdgo.AnyInterface>):Void;
    function errorf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void;
    function fail():Void;
    function failNow():Void;
    function failed():Bool;
    function fatal(_0:haxe.Rest<stdgo.AnyInterface>):Void;
    function fatalf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void;
    function helper():Void;
    function log(_0:haxe.Rest<stdgo.AnyInterface>):Void;
    function logf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void;
    function name():stdgo.GoString;
    function setenv(_0:stdgo.GoString, _1:stdgo.GoString):Void;
    function skip(_0:haxe.Rest<stdgo.AnyInterface>):Void;
    function skipNow():Void;
    function skipf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void;
    function skipped():Bool;
    function tempDir():stdgo.GoString;
    function _private():Void;
};
