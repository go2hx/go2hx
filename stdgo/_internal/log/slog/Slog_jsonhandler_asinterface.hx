package stdgo._internal.log.slog;
class JSONHandler_asInterface {
    @:keep
    @:tdfield
    public dynamic function handle(__766:stdgo._internal.context.Context_context.Context, _r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error return @:_0 __self__.value.handle(__766, _r);
    @:keep
    @:tdfield
    public dynamic function withGroup(_name:stdgo.GoString):stdgo._internal.log.slog.Slog_handler.Handler return @:_0 __self__.value.withGroup(_name);
    @:keep
    @:tdfield
    public dynamic function withAttrs(_attrs:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler return @:_0 __self__.value.withAttrs(_attrs);
    @:keep
    @:tdfield
    public dynamic function enabled(__766:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level):Bool return @:_0 __self__.value.enabled(__766, _level);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _withGroup(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> return @:_0 __self__.value._withGroup(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _withAttrs(_0:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> return @:_0 __self__.value._withAttrs(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newHandleState(_0:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _1:Bool, _2:stdgo.GoString):stdgo._internal.log.slog.Slog_t_handlestate.T_handleState return @:_0 __self__.value._newHandleState(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _handle(_0:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error return @:_0 __self__.value._handle(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _enabled(_0:stdgo._internal.log.slog.Slog_level.Level):Bool return @:_0 __self__.value._enabled(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _clone():stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> return @:_0 __self__.value._clone();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _attrSep():stdgo.GoString return @:_0 __self__.value._attrSep();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_jsonhandlerpointer.JSONHandlerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
