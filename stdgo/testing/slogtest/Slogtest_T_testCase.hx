package stdgo.testing.slogtest;
@:structInit @:using(stdgo.testing.slogtest.Slogtest.T_testCase_static_extension) abstract T_testCase(stdgo._internal.testing.slogtest.Slogtest_T_testCase.T_testCase) from stdgo._internal.testing.slogtest.Slogtest_T_testCase.T_testCase to stdgo._internal.testing.slogtest.Slogtest_T_testCase.T_testCase {
    public var _explanation(get, set) : String;
    function get__explanation():String return this._explanation;
    function set__explanation(v:String):String {
        this._explanation = (v : stdgo.GoString);
        return v;
    }
    public var _f(get, set) : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void;
    function get__f():stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void return _0 -> this._f(_0);
    function set__f(v:stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void):stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void {
        this._f = v;
        return v;
    }
    public var _mod(get, set) : stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void;
    function get__mod():stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void return _0 -> this._mod(_0);
    function set__mod(v:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void):stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void {
        this._mod = v;
        return v;
    }
    public var _checks(get, set) : Array<T_check>;
    function get__checks():Array<T_check> return [for (i in this._checks) i];
    function set__checks(v:Array<T_check>):Array<T_check> {
        this._checks = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_T_check.T_check>);
        return v;
    }
    public function new(?_explanation:String, ?_f:stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void, ?_mod:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void, ?_checks:Array<T_check>) this = new stdgo._internal.testing.slogtest.Slogtest_T_testCase.T_testCase((_explanation : stdgo.GoString), _f, _mod, ([for (i in _checks) i] : stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_T_check.T_check>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
