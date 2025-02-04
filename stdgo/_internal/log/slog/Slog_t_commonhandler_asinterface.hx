package stdgo._internal.log.slog;
class T_commonHandler_asInterface {
    @:keep
    @:tdfield
    public dynamic function _newHandleState(_buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _freeBuf:Bool, _sep:stdgo.GoString):stdgo._internal.log.slog.Slog_t_handlestate.T_handleState return @:_0 __self__.value._newHandleState(_buf, _freeBuf, _sep);
    @:keep
    @:tdfield
    public dynamic function _attrSep():stdgo.GoString return @:_0 __self__.value._attrSep();
    @:keep
    @:tdfield
    public dynamic function _handle(_r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error return @:_0 __self__.value._handle(_r);
    @:keep
    @:tdfield
    public dynamic function _withGroup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> return @:_0 __self__.value._withGroup(_name);
    @:keep
    @:tdfield
    public dynamic function _withAttrs(_as:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> return @:_0 __self__.value._withAttrs(_as);
    @:keep
    @:tdfield
    public dynamic function _enabled(_l:stdgo._internal.log.slog.Slog_level.Level):Bool return @:_0 __self__.value._enabled(_l);
    @:keep
    @:tdfield
    public dynamic function _clone():stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> return @:_0 __self__.value._clone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_t_commonhandlerpointer.T_commonHandlerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
