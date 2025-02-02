package stdgo._internal.log.slog;
class T_defaultHandler_asInterface {
    @:keep
    @:tdfield
    public dynamic function withGroup(_name:stdgo.GoString):stdgo._internal.log.slog.Slog_Handler.Handler return @:_0 __self__.value.withGroup(_name);
    @:keep
    @:tdfield
    public dynamic function withAttrs(_as:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler return @:_0 __self__.value.withAttrs(_as);
    @:keep
    @:tdfield
    public dynamic function handle(_ctx:stdgo._internal.context.Context_Context.Context, _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error return @:_0 __self__.value.handle(_ctx, _r);
    @:keep
    @:tdfield
    public dynamic function enabled(__703:stdgo._internal.context.Context_Context.Context, _l:stdgo._internal.log.slog.Slog_Level.Level):Bool return @:_0 __self__.value.enabled(__703, _l);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_T_defaultHandlerPointer.T_defaultHandlerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
