package stdgo._internal.internal.pkgbits;
class Decoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _bigFloat():stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> return @:_0 __self__.value._bigFloat();
    @:keep
    @:tdfield
    public dynamic function _bigInt():stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value._bigInt();
    @:keep
    @:tdfield
    public dynamic function _scalar():stdgo._internal.go.constant.Constant_value.Value return @:_0 __self__.value._scalar();
    @:keep
    @:tdfield
    public dynamic function value():stdgo._internal.go.constant.Constant_value.Value return @:_0 __self__.value.value();
    @:keep
    @:tdfield
    public dynamic function strings():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.strings();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function reloc(_k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_0 __self__.value.reloc(_k);
    @:keep
    @:tdfield
    public dynamic function code(_mark:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.GoInt return @:_0 __self__.value.code(_mark);
    @:keep
    @:tdfield
    public dynamic function uint():stdgo.GoUInt return @:_0 __self__.value.uint();
    @:keep
    @:tdfield
    public dynamic function int_():stdgo.GoInt return @:_0 __self__.value.int_();
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function uint64():stdgo.GoUInt64 return @:_0 __self__.value.uint64();
    @:keep
    @:tdfield
    public dynamic function int64():stdgo.GoInt64 return @:_0 __self__.value.int64();
    @:keep
    @:tdfield
    public dynamic function bool_():Bool return @:_0 __self__.value.bool_();
    @:keep
    @:tdfield
    public dynamic function sync(_mWant:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):Void @:_0 __self__.value.sync(_mWant);
    @:keep
    @:tdfield
    public dynamic function _rawReloc(_k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_0 __self__.value._rawReloc(_k, _idx);
    @:keep
    @:tdfield
    public dynamic function _rawVarint():stdgo.GoInt64 return @:_0 __self__.value._rawVarint();
    @:keep
    @:tdfield
    public dynamic function _rawUvarint():stdgo.GoUInt64 return @:_0 __self__.value._rawUvarint();
    @:keep
    @:tdfield
    public dynamic function _checkErr(_err:stdgo.Error):Void @:_0 __self__.value._checkErr(_err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.pkgbits.Pkgbits_decoderpointer.DecoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
