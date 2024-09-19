package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
class Paragraph_asInterface {
    @:keep
    public dynamic function line(_start:stdgo.GoInt, _end:stdgo.GoInt):{ var _0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering; var _1 : stdgo.Error; } return __self__.value.line(_start, _end);
    @:keep
    public dynamic function order():{ var _0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering; var _1 : stdgo.Error; } return __self__.value.order();
    @:keep
    public dynamic function runAt(_pos:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run return __self__.value.runAt(_pos);
    @:keep
    public dynamic function direction():_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction return __self__.value.direction();
    @:keep
    public dynamic function isLeftToRight():Bool return __self__.value.isLeftToRight();
    @:keep
    public dynamic function setString(_s:stdgo.GoString, _opts:haxe.Rest<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Option.Option>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.setString(_s, ..._opts);
    @:keep
    public dynamic function setBytes(_b:stdgo.Slice<stdgo.GoUInt8>, _opts:haxe.Rest<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Option.Option>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.setBytes(_b, ..._opts);
    @:keep
    public dynamic function _prepareInput():{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._prepareInput();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph.Paragraph>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
