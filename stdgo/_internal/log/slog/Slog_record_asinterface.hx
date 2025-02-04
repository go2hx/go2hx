package stdgo._internal.log.slog;
class Record_asInterface {
    @:keep
    @:tdfield
    public dynamic function _source():stdgo.Ref<stdgo._internal.log.slog.Slog_source.Source> return @:_0 __self__.value._source();
    @:keep
    @:tdfield
    public dynamic function add(_args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.add(..._args);
    @:keep
    @:tdfield
    public dynamic function addAttrs(_attrs:haxe.Rest<stdgo._internal.log.slog.Slog_attr.Attr>):Void @:_0 __self__.value.addAttrs(..._attrs);
    @:keep
    @:tdfield
    public dynamic function attrs(_f:stdgo._internal.log.slog.Slog_attr.Attr -> Bool):Void @:_0 __self__.value.attrs(_f);
    @:keep
    @:tdfield
    public dynamic function numAttrs():stdgo.GoInt return @:_0 __self__.value.numAttrs();
    @:keep
    @:tdfield
    public dynamic function clone():stdgo._internal.log.slog.Slog_record.Record return @:_0 __self__.value.clone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_recordpointer.RecordPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
