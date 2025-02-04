package stdgo._internal.image.gif;
class T_encoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writeImageBlock(_pm:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _delay:stdgo.GoInt, _disposal:stdgo.GoUInt8):Void @:_0 __self__.value._writeImageBlock(_pm, _delay, _disposal);
    @:keep
    @:tdfield
    public dynamic function _colorTablesMatch(_localLen:stdgo.GoInt, _transparentIndex:stdgo.GoInt):Bool return @:_0 __self__.value._colorTablesMatch(_localLen, _transparentIndex);
    @:keep
    @:tdfield
    public dynamic function _writeHeader():Void @:_0 __self__.value._writeHeader();
    @:keep
    @:tdfield
    public dynamic function _writeByte(_b:stdgo.GoUInt8):Void @:_0 __self__.value._writeByte(_b);
    @:keep
    @:tdfield
    public dynamic function _write(_p:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._write(_p);
    @:keep
    @:tdfield
    public dynamic function _flush():Void @:_0 __self__.value._flush();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.gif.Gif_t_encoderpointer.T_encoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
