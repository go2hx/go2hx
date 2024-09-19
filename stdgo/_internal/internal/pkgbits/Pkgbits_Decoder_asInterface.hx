package stdgo._internal.internal.pkgbits;
class Decoder_asInterface {
    @:keep
    public dynamic function _bigFloat():stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> return __self__.value._bigFloat();
    @:keep
    public dynamic function _bigInt():stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value._bigInt();
    @:keep
    public dynamic function _scalar():stdgo._internal.go.constant.Constant_Value.Value return __self__.value._scalar();
    @:keep
    public dynamic function value():stdgo._internal.go.constant.Constant_Value.Value return __self__.value.value();
    @:keep
    public dynamic function strings():stdgo.Slice<stdgo.GoString> return __self__.value.strings();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function reloc(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_Index.Index return __self__.value.reloc(_k);
    @:keep
    public dynamic function code(_mark:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):stdgo.GoInt return __self__.value.code(_mark);
    @:keep
    public dynamic function uint():stdgo.GoUInt return __self__.value.uint();
    @:keep
    public dynamic function int_():stdgo.GoInt return __self__.value.int_();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function int64():stdgo.GoInt64 return __self__.value.int64();
    @:keep
    public dynamic function bool_():Bool return __self__.value.bool_();
    @:keep
    public dynamic function sync(_mWant:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):Void __self__.value.sync(_mWant);
    @:keep
    public dynamic function _rawReloc(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_Index.Index return __self__.value._rawReloc(_k, _idx);
    @:keep
    public dynamic function _rawVarint():stdgo.GoInt64 return __self__.value._rawVarint();
    @:keep
    public dynamic function _rawUvarint():stdgo.GoUInt64 return __self__.value._rawUvarint();
    @:keep
    public dynamic function _checkErr(_err:stdgo.Error):Void __self__.value._checkErr(_err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
