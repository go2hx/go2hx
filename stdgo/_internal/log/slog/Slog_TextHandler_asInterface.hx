package stdgo._internal.log.slog;
class TextHandler_asInterface {
    @:keep
    @:tdfield
    public dynamic function handle(__913:stdgo._internal.context.Context_Context.Context, _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error return @:_0 __self__.value.handle(__913, _r);
    @:keep
    @:tdfield
    public dynamic function withGroup(_name:stdgo.GoString):stdgo._internal.log.slog.Slog_Handler.Handler return @:_0 __self__.value.withGroup(_name);
    @:keep
    @:tdfield
    public dynamic function withAttrs(_attrs:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler return @:_0 __self__.value.withAttrs(_attrs);
    @:keep
    @:tdfield
    public dynamic function enabled(__913:stdgo._internal.context.Context_Context.Context, _level:stdgo._internal.log.slog.Slog_Level.Level):Bool return @:_0 __self__.value.enabled(__913, _level);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _withGroup(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> return @:_0 __self__.value._withGroup(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _withAttrs(_0:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> return @:_0 __self__.value._withAttrs(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newHandleState(_0:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>, _1:Bool, _2:stdgo.GoString):stdgo._internal.log.slog.Slog_T_handleState.T_handleState return @:_0 __self__.value._newHandleState(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _handle(_0:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error return @:_0 __self__.value._handle(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _enabled(_0:stdgo._internal.log.slog.Slog_Level.Level):Bool return @:_0 __self__.value._enabled(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _clone():stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler> return @:_0 __self__.value._clone();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _attrSep():stdgo.GoString return @:_0 __self__.value._attrSep();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_TextHandlerPointer.TextHandlerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
