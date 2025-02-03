package stdgo.context;
class T_testingT_static_extension {
    static public function skipped(t:stdgo._internal.context.Context_T_testingT.T_testingT):Bool {
        return stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.skipped(t);
    }
    static public function skipf(t:stdgo._internal.context.Context_T_testingT.T_testingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.skipf(t, _format, ...[for (i in _args) i]);
    }
    static public function skipNow(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void {
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.skipNow(t);
    }
    static public function skip(t:stdgo._internal.context.Context_T_testingT.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.skip(t, ...[for (i in _args) i]);
    }
    static public function parallel(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void {
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.parallel(t);
    }
    static public function name(t:stdgo._internal.context.Context_T_testingT.T_testingT):String {
        return stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.name(t);
    }
    static public function logf(t:stdgo._internal.context.Context_T_testingT.T_testingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.logf(t, _format, ...[for (i in _args) i]);
    }
    static public function log(t:stdgo._internal.context.Context_T_testingT.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.log(t, ...[for (i in _args) i]);
    }
    static public function helper(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void {
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.helper(t);
    }
    static public function fatalf(t:stdgo._internal.context.Context_T_testingT.T_testingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.fatalf(t, _format, ...[for (i in _args) i]);
    }
    static public function fatal(t:stdgo._internal.context.Context_T_testingT.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.fatal(t, ...[for (i in _args) i]);
    }
    static public function failed(t:stdgo._internal.context.Context_T_testingT.T_testingT):Bool {
        return stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.failed(t);
    }
    static public function failNow(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void {
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.failNow(t);
    }
    static public function fail(t:stdgo._internal.context.Context_T_testingT.T_testingT):Void {
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.fail(t);
    }
    static public function errorf(t:stdgo._internal.context.Context_T_testingT.T_testingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.errorf(t, _format, ...[for (i in _args) i]);
    }
    static public function error(t:stdgo._internal.context.Context_T_testingT.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.error(t, ...[for (i in _args) i]);
    }
    static public function deadline(t:stdgo._internal.context.Context_T_testingT.T_testingT):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_T_testingT_static_extension.T_testingT_static_extension.deadline(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
