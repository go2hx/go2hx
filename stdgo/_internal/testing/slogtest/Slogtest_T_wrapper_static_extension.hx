package stdgo._internal.testing.slogtest;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.testing.slogtest.Slogtest.T_wrapper_asInterface) class T_wrapper_static_extension {
    @:keep
    @:tdfield
    static public function handle( _h:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper>, _ctx:stdgo._internal.context.Context_Context.Context, _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper> = _h;
        (@:checkr _h ?? throw "null pointer dereference")._mod((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record>));
        return (@:checkr _h ?? throw "null pointer dereference").handler.handle(_ctx, _r?.__copy__());
    }
    @:embedded
    @:embeddededffieldsffun
    public static function withGroup( __self__:stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper, _0:stdgo.GoString):stdgo._internal.log.slog.Slog_Handler.Handler return @:_5 __self__.withGroup(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function withAttrs( __self__:stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper, _0:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler return @:_5 __self__.withAttrs(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function enabled( __self__:stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Level.Level):Bool return @:_5 __self__.enabled(_0, _1);
}
