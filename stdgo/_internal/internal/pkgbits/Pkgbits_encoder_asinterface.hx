package stdgo._internal.internal.pkgbits;
class Encoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _bigFloat(_v:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void @:_0 __self__.value._bigFloat(_v);
    @:keep
    @:tdfield
    public dynamic function _bigInt(_v:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void @:_0 __self__.value._bigInt(_v);
    @:keep
    @:tdfield
    public dynamic function _scalar(_val:stdgo._internal.go.constant.Constant_value.Value):Void @:_0 __self__.value._scalar(_val);
    @:keep
    @:tdfield
    public dynamic function value(_val:stdgo._internal.go.constant.Constant_value.Value):Void @:_0 __self__.value.value(_val);
    @:keep
    @:tdfield
    public dynamic function strings(_ss:stdgo.Slice<stdgo.GoString>):Void @:_0 __self__.value.strings(_ss);
    @:keep
    @:tdfield
    public dynamic function stringRef(_idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):Void @:_0 __self__.value.stringRef(_idx);
    @:keep
    @:tdfield
    public dynamic function string(_s:stdgo.GoString):Void @:_0 __self__.value.string(_s);
    @:keep
    @:tdfield
    public dynamic function code(_c:stdgo._internal.internal.pkgbits.Pkgbits_code.Code):Void @:_0 __self__.value.code(_c);
    @:keep
    @:tdfield
    public dynamic function reloc(_r:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):Void @:_0 __self__.value.reloc(_r, _idx);
    @:keep
    @:tdfield
    public dynamic function uint(_x:stdgo.GoUInt):Void @:_0 __self__.value.uint(_x);
    @:keep
    @:tdfield
    public dynamic function int_(_x:stdgo.GoInt):Void @:_0 __self__.value.int_(_x);
    @:keep
    @:tdfield
    public dynamic function len(_x:stdgo.GoInt):Void @:_0 __self__.value.len(_x);
    @:keep
    @:tdfield
    public dynamic function uint64(_x:stdgo.GoUInt64):Void @:_0 __self__.value.uint64(_x);
    @:keep
    @:tdfield
    public dynamic function int64(_x:stdgo.GoInt64):Void @:_0 __self__.value.int64(_x);
    @:keep
    @:tdfield
    public dynamic function bool_(_b:Bool):Bool return @:_0 __self__.value.bool_(_b);
    @:keep
    @:tdfield
    public dynamic function sync(_m:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):Void @:_0 __self__.value.sync(_m);
    @:keep
    @:tdfield
    public dynamic function _rawReloc(_r:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoInt return @:_0 __self__.value._rawReloc(_r, _idx);
    @:keep
    @:tdfield
    public dynamic function _rawVarint(_x:stdgo.GoInt64):Void @:_0 __self__.value._rawVarint(_x);
    @:keep
    @:tdfield
    public dynamic function _rawUvarint(_x:stdgo.GoUInt64):Void @:_0 __self__.value._rawUvarint(_x);
    @:keep
    @:tdfield
    public dynamic function _checkErr(_err:stdgo.Error):Void @:_0 __self__.value._checkErr(_err);
    @:keep
    @:tdfield
    public dynamic function flush():stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_0 __self__.value.flush();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.pkgbits.Pkgbits_encoderpointer.EncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
