package stdgo._internal.log.slog;
class LevelVar_asInterface {
    @:keep
    @:tdfield
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_data);
    @:keep
    @:tdfield
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function set(_l:stdgo._internal.log.slog.Slog_level.Level):Void @:_0 __self__.value.set(_l);
    @:keep
    @:tdfield
    public dynamic function level():stdgo._internal.log.slog.Slog_level.Level return @:_0 __self__.value.level();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_levelvarpointer.LevelVarPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
