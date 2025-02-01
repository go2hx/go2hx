package stdgo._internal.testing.slogtest;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.testing.slogtest.Slogtest_T_wrapper_static_extension.T_wrapper_static_extension) class T_wrapper {
    @:embedded
    public var handler : stdgo._internal.log.slog.Slog_Handler.Handler = (null : stdgo._internal.log.slog.Slog_Handler.Handler);
    public var _mod : stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void = null;
    public function new(?handler:stdgo._internal.log.slog.Slog_Handler.Handler, ?_mod:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void) {
        if (handler != null) this.handler = handler;
        if (_mod != null) this._mod = _mod;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var enabled(get, never) : (stdgo._internal.context.Context_Context.Context, stdgo._internal.log.slog.Slog_Level.Level) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_enabled():(stdgo._internal.context.Context_Context.Context, stdgo._internal.log.slog.Slog_Level.Level) -> Bool return @:check31 (this.handler ?? throw "null pointer dereference").enabled;
    public var withAttrs(get, never) : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr> -> stdgo._internal.log.slog.Slog_Handler.Handler;
    @:embedded
    @:embeddededffieldsffun
    public function get_withAttrs():stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr> -> stdgo._internal.log.slog.Slog_Handler.Handler return @:check31 (this.handler ?? throw "null pointer dereference").withAttrs;
    public var withGroup(get, never) : stdgo.GoString -> stdgo._internal.log.slog.Slog_Handler.Handler;
    @:embedded
    @:embeddededffieldsffun
    public function get_withGroup():stdgo.GoString -> stdgo._internal.log.slog.Slog_Handler.Handler return @:check31 (this.handler ?? throw "null pointer dereference").withGroup;
    public function __copy__() {
        return new T_wrapper(handler, _mod);
    }
}
