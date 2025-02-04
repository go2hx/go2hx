package stdgo._internal.log.slog;
class Level_asInterface {
    @:keep
    @:tdfield
    public dynamic function level():stdgo._internal.log.slog.Slog_level.Level return @:_0 __self__.value.level();
    @:keep
    @:pointer
    @:tdfield
    public dynamic function _parse(_s:stdgo.GoString):stdgo.Error return @:_0 __self__._parse(_s);
    @:keep
    @:pointer
    @:tdfield
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.unmarshalText(_data);
    @:keep
    @:tdfield
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    @:pointer
    @:tdfield
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.unmarshalJSON(_data);
    @:keep
    @:tdfield
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalJSON();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_levelpointer.LevelPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
