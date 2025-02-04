package stdgo._internal.testing.slogtest;
class T_wrapper_asInterface {
    @:keep
    @:tdfield
    public dynamic function handle(_ctx:stdgo._internal.context.Context_context.Context, _r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error return @:_0 __self__.value.handle(_ctx, _r);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function withGroup(_0:stdgo.GoString):stdgo._internal.log.slog.Slog_handler.Handler return @:_0 __self__.value.withGroup(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function withAttrs(_0:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler return @:_0 __self__.value.withAttrs(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function enabled(_0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_level.Level):Bool return @:_0 __self__.value.enabled(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.slogtest.Slogtest_t_wrapperpointer.T_wrapperPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
