package stdgo.testing.slogtest;
class T_wrapper_static_extension {
    static public function handle(_h:T_wrapper, _ctx:stdgo._internal.context.Context_Context.Context, _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper>);
        return stdgo._internal.testing.slogtest.Slogtest_T_wrapper_static_extension.T_wrapper_static_extension.handle(_h, _ctx, _r);
    }
    public static function withGroup(__self__:stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper, _0:String):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.testing.slogtest.Slogtest_T_wrapper_static_extension.T_wrapper_static_extension.withGroup(__self__, _0);
    }
    public static function withAttrs(__self__:stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper, _0:Array<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.testing.slogtest.Slogtest_T_wrapper_static_extension.T_wrapper_static_extension.withAttrs(__self__, _0);
    }
    public static function enabled(__self__:stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Level.Level):Bool {
        return stdgo._internal.testing.slogtest.Slogtest_T_wrapper_static_extension.T_wrapper_static_extension.enabled(__self__, _0, _1);
    }
}
