package stdgo._internal.log.slog;
class T_handleState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _appendTime(_t:stdgo._internal.time.Time_time.Time):Void @:_0 __self__.value._appendTime(_t);
    @:keep
    @:tdfield
    public dynamic function _appendValue(_v:stdgo._internal.log.slog.Slog_value.Value):Void @:_0 __self__.value._appendValue(_v);
    @:keep
    @:tdfield
    public dynamic function _appendString(_str:stdgo.GoString):Void @:_0 __self__.value._appendString(_str);
    @:keep
    @:tdfield
    public dynamic function _appendKey(_key:stdgo.GoString):Void @:_0 __self__.value._appendKey(_key);
    @:keep
    @:tdfield
    public dynamic function _appendError(_err:stdgo.Error):Void @:_0 __self__.value._appendError(_err);
    @:keep
    @:tdfield
    public dynamic function _appendAttr(_a:stdgo._internal.log.slog.Slog_attr.Attr):Void @:_0 __self__.value._appendAttr(_a);
    @:keep
    @:tdfield
    public dynamic function _closeGroup(_name:stdgo.GoString):Void @:_0 __self__.value._closeGroup(_name);
    @:keep
    @:tdfield
    public dynamic function _openGroup(_name:stdgo.GoString):Void @:_0 __self__.value._openGroup(_name);
    @:keep
    @:tdfield
    public dynamic function _openGroups():Void @:_0 __self__.value._openGroups();
    @:keep
    @:tdfield
    public dynamic function _free():Void @:_0 __self__.value._free();
    @:keep
    @:tdfield
    public dynamic function _appendNonBuiltIns(_r:stdgo._internal.log.slog.Slog_record.Record):Void @:_0 __self__.value._appendNonBuiltIns(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_t_handlestatepointer.T_handleStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
