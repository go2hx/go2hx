package stdgo._internal.testing.slogtest;
@:structInit @:using(stdgo._internal.testing.slogtest.Slogtest_t_testcase_static_extension.T_testCase_static_extension) class T_testCase {
    public var _explanation : stdgo.GoString = "";
    public var _f : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> -> Void = null;
    public var _mod : stdgo.Ref<stdgo._internal.log.slog.Slog_record.Record> -> Void = null;
    public var _checks : stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_t_check.T_check> = (null : stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_t_check.T_check>);
    public function new(?_explanation:stdgo.GoString, ?_f:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> -> Void, ?_mod:stdgo.Ref<stdgo._internal.log.slog.Slog_record.Record> -> Void, ?_checks:stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_t_check.T_check>) {
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
