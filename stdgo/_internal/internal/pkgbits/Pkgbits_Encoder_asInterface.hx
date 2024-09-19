package stdgo._internal.internal.pkgbits;
class Encoder_asInterface {
    @:keep
    public dynamic function _bigFloat(_v:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void __self__.value._bigFloat(_v);
    @:keep
    public dynamic function _bigInt(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Void __self__.value._bigInt(_v);
    @:keep
    public dynamic function _scalar(_val:stdgo._internal.go.constant.Constant_Value.Value):Void __self__.value._scalar(_val);
    @:keep
    public dynamic function value(_val:stdgo._internal.go.constant.Constant_Value.Value):Void __self__.value.value(_val);
    @:keep
    public dynamic function strings(_ss:stdgo.Slice<stdgo.GoString>):Void __self__.value.strings(_ss);
    @:keep
    public dynamic function stringRef(_idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):Void __self__.value.stringRef(_idx);
    @:keep
    public dynamic function string(_s:stdgo.GoString):Void __self__.value.string(_s);
    @:keep
    public dynamic function code(_c:stdgo._internal.internal.pkgbits.Pkgbits_Code.Code):Void __self__.value.code(_c);
    @:keep
    public dynamic function reloc(_r:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):Void __self__.value.reloc(_r, _idx);
    @:keep
    public dynamic function uint(_x:stdgo.GoUInt):Void __self__.value.uint(_x);
    @:keep
    public dynamic function int_(_x:stdgo.GoInt):Void __self__.value.int_(_x);
    @:keep
    public dynamic function len(_x:stdgo.GoInt):Void __self__.value.len(_x);
    @:keep
    public dynamic function uint64(_x:stdgo.GoUInt64):Void __self__.value.uint64(_x);
    @:keep
    public dynamic function int64(_x:stdgo.GoInt64):Void __self__.value.int64(_x);
    @:keep
    public dynamic function bool_(_b:Bool):Bool return __self__.value.bool_(_b);
    @:keep
    public dynamic function sync(_m:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):Void __self__.value.sync(_m);
    @:keep
    public dynamic function _rawReloc(_r:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):stdgo.GoInt return __self__.value._rawReloc(_r, _idx);
    @:keep
    public dynamic function _rawVarint(_x:stdgo.GoInt64):Void __self__.value._rawVarint(_x);
    @:keep
    public dynamic function _rawUvarint(_x:stdgo.GoUInt64):Void __self__.value._rawUvarint(_x);
    @:keep
    public dynamic function _checkErr(_err:stdgo.Error):Void __self__.value._checkErr(_err);
    @:keep
    public dynamic function flush():stdgo._internal.internal.pkgbits.Pkgbits_Index.Index return __self__.value.flush();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
