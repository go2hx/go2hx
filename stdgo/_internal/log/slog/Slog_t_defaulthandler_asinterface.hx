package stdgo._internal.log.slog;
class T_defaultHandler_asInterface {
    @:keep
    @:tdfield
    public dynamic function withGroup(_name:stdgo.GoString):stdgo._internal.log.slog.Slog_handler.Handler return @:_0 __self__.value.withGroup(_name);
    @:keep
    @:tdfield
    public dynamic function withAttrs(_as:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler return @:_0 __self__.value.withAttrs(_as);
    @:keep
    @:tdfield
    public dynamic function handle(_ctx:stdgo._internal.context.Context_context.Context, _r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error return @:_0 __self__.value.handle(_ctx, _r);
    @:keep
    @:tdfield
    public dynamic function enabled(__682:stdgo._internal.context.Context_context.Context, _l:stdgo._internal.log.slog.Slog_level.Level):Bool return @:_0 __self__.value.enabled(__682, _l);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_t_defaulthandlerpointer.T_defaultHandlerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
