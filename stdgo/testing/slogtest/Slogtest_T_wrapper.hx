package stdgo.testing.slogtest;
@:structInit @:using(stdgo.testing.slogtest.Slogtest.T_wrapper_static_extension) abstract T_wrapper(stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper) from stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper to stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper {
    public var handler(get, set) : stdgo._internal.log.slog.Slog_Handler.Handler;
    function get_handler():stdgo._internal.log.slog.Slog_Handler.Handler return this.handler;
    function set_handler(v:stdgo._internal.log.slog.Slog_Handler.Handler):stdgo._internal.log.slog.Slog_Handler.Handler {
        this.handler = v;
        return v;
    }
    public var _mod(get, set) : stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void;
    function get__mod():stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void return _0 -> this._mod(_0);
    function set__mod(v:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void):stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void {
        this._mod = v;
        return v;
    }
    public function new(?handler:stdgo._internal.log.slog.Slog_Handler.Handler, ?_mod:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void) this = new stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper(handler, _mod);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
