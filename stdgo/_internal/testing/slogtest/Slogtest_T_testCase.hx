package stdgo._internal.testing.slogtest;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.testing.slogtest.Slogtest_T_testCase_static_extension.T_testCase_static_extension) class T_testCase {
    public var _explanation : stdgo.GoString = "";
    public var _f : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void = null;
    public var _mod : stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void = null;
    public var _checks : stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_T_check.T_check> = (null : stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_T_check.T_check>);
    public function new(?_explanation:stdgo.GoString, ?_f:stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void, ?_mod:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void, ?_checks:stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_T_check.T_check>) {
        if (_explanation != null) this._explanation = _explanation;
        if (_f != null) this._f = _f;
        if (_mod != null) this._mod = _mod;
        if (_checks != null) this._checks = _checks;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testCase(_explanation, _f, _mod, _checks);
    }
}
