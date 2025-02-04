package stdgo._internal.context;
@:keep class T_testingT_static_extension {
    @:interfacetypeffun
    static public function skipped(t:stdgo._internal.context.Context_t_testingt.T_testingT):Bool return t.skipped();
    @:interfacetypeffun
    static public function skipf(t:stdgo._internal.context.Context_t_testingt.T_testingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skipf(_format, ..._args);
    @:interfacetypeffun
    static public function skipNow(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void t.skipNow();
    @:interfacetypeffun
    static public function skip(t:stdgo._internal.context.Context_t_testingt.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skip(..._args);
    @:interfacetypeffun
    static public function parallel(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void t.parallel();
    @:interfacetypeffun
    static public function name(t:stdgo._internal.context.Context_t_testingt.T_testingT):stdgo.GoString return t.name();
    @:interfacetypeffun
    static public function logf(t:stdgo._internal.context.Context_t_testingt.T_testingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.logf(_format, ..._args);
    @:interfacetypeffun
    static public function log(t:stdgo._internal.context.Context_t_testingt.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.log(..._args);
    @:interfacetypeffun
    static public function helper(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void t.helper();
    @:interfacetypeffun
    static public function fatalf(t:stdgo._internal.context.Context_t_testingt.T_testingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatalf(_format, ..._args);
    @:interfacetypeffun
    static public function fatal(t:stdgo._internal.context.Context_t_testingt.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatal(..._args);
    @:interfacetypeffun
    static public function failed(t:stdgo._internal.context.Context_t_testingt.T_testingT):Bool return t.failed();
    @:interfacetypeffun
    static public function failNow(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void t.failNow();
    @:interfacetypeffun
    static public function fail(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void t.fail();
    @:interfacetypeffun
    static public function errorf(t:stdgo._internal.context.Context_t_testingt.T_testingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.errorf(_format, ..._args);
    @:interfacetypeffun
    static public function error(t:stdgo._internal.context.Context_t_testingt.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.error(..._args);
    @:interfacetypeffun
    static public function deadline(t:stdgo._internal.context.Context_t_testingt.T_testingT):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return t.deadline();
}
