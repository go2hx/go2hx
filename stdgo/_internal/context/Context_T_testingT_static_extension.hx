package stdgo._internal.context;
@:keep class T_testingT_static_extension {
    static public function skipped(t:stdgo._internal.context.Context_T_testingT.T_testingT):Bool return t.skipped();
    static public function skipf(t:stdgo._internal.context.Context_T_testingT.T_testingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skipf(_format, ..._args);
    static public function skipNow(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void t.skipNow();
    static public function skip(t:stdgo._internal.context.Context_T_testingT.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skip(..._args);
    static public function parallel(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void t.parallel();
    static public function name(t:stdgo._internal.context.Context_T_testingT.T_testingT):stdgo.GoString return t.name();
    static public function logf(t:stdgo._internal.context.Context_T_testingT.T_testingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.logf(_format, ..._args);
    static public function log(t:stdgo._internal.context.Context_T_testingT.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.log(..._args);
    static public function helper(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void t.helper();
    static public function fatalf(t:stdgo._internal.context.Context_T_testingT.T_testingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatalf(_format, ..._args);
    static public function fatal(t:stdgo._internal.context.Context_T_testingT.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatal(..._args);
    static public function failed(t:stdgo._internal.context.Context_T_testingT.T_testingT):Bool return t.failed();
    static public function failNow(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void t.failNow();
    static public function fail(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void t.fail();
    static public function errorf(t:stdgo._internal.context.Context_T_testingT.T_testingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.errorf(_format, ..._args);
    static public function error(t:stdgo._internal.context.Context_T_testingT.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.error(..._args);
    static public function deadline(t:stdgo._internal.context.Context_T_testingT.T_testingT):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return t.deadline();
}
