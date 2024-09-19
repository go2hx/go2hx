package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
class String__asInterface {
    @:keep
    public dynamic function empty():Bool return __self__.value.empty();
    @:keep
    public dynamic function copyBytes(_out:stdgo.Slice<stdgo.GoUInt8>):Bool return __self__.value.copyBytes(_out);
    @:keep
    public dynamic function readBytes(_out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _n:stdgo.GoInt):Bool return __self__.value.readBytes(_out, _n);
    @:keep
    public dynamic function readUint24LengthPrefixed(_out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>):Bool return __self__.value.readUint24LengthPrefixed(_out);
    @:keep
    public dynamic function readUint16LengthPrefixed(_out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>):Bool return __self__.value.readUint16LengthPrefixed(_out);
    @:keep
    public dynamic function readUint8LengthPrefixed(_out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>):Bool return __self__.value.readUint8LengthPrefixed(_out);
    @:keep
    public dynamic function _readLengthPrefixed(_lenLen:stdgo.GoInt, _outChild:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>):Bool return __self__.value._readLengthPrefixed(_lenLen, _outChild);
    @:keep
    public dynamic function _readUnsigned(_out:stdgo.Pointer<stdgo.GoUInt32>, _length:stdgo.GoInt):Bool return __self__.value._readUnsigned(_out, _length);
    @:keep
    public dynamic function readUint64(_out:stdgo.Pointer<stdgo.GoUInt64>):Bool return __self__.value.readUint64(_out);
    @:keep
    public dynamic function readUint32(_out:stdgo.Pointer<stdgo.GoUInt32>):Bool return __self__.value.readUint32(_out);
    @:keep
    public dynamic function readUint24(_out:stdgo.Pointer<stdgo.GoUInt32>):Bool return __self__.value.readUint24(_out);
    @:keep
    public dynamic function readUint16(_out:stdgo.Pointer<stdgo.GoUInt16>):Bool return __self__.value.readUint16(_out);
    @:keep
    public dynamic function readUint8(_out:stdgo.Pointer<stdgo.GoUInt8>):Bool return __self__.value.readUint8(_out);
    @:keep
    public dynamic function skip(_n:stdgo.GoInt):Bool return __self__.value.skip(_n);
    @:keep
    public dynamic function _read(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value._read(_n);
    @:keep
    public dynamic function _readASN1(_out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _outTag:stdgo.Pointer<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag>, _skipHeader:Bool):Bool return __self__.value._readASN1(_out, _outTag, _skipHeader);
    @:keep
    public dynamic function readOptionalASN1Boolean(_out:stdgo.Pointer<Bool>, _defaultValue:Bool):Bool return __self__.value.readOptionalASN1Boolean(_out, _defaultValue);
    @:keep
    public dynamic function readOptionalASN1OctetString(_out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _outPresent:stdgo.Pointer<Bool>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool return __self__.value.readOptionalASN1OctetString(_out, _outPresent, _tag);
    @:keep
    public dynamic function readOptionalASN1Integer(_out:stdgo.AnyInterface, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag, _defaultValue:stdgo.AnyInterface):Bool return __self__.value.readOptionalASN1Integer(_out, _tag, _defaultValue);
    @:keep
    public dynamic function skipOptionalASN1(_tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool return __self__.value.skipOptionalASN1(_tag);
    @:keep
    public dynamic function readOptionalASN1(_out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _outPresent:stdgo.Pointer<Bool>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool return __self__.value.readOptionalASN1(_out, _outPresent, _tag);
    @:keep
    public dynamic function skipASN1(_tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool return __self__.value.skipASN1(_tag);
    @:keep
    public dynamic function peekASN1Tag(_tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool return __self__.value.peekASN1Tag(_tag);
    @:keep
    public dynamic function readAnyASN1Element(_out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _outTag:stdgo.Pointer<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag>):Bool return __self__.value.readAnyASN1Element(_out, _outTag);
    @:keep
    public dynamic function readAnyASN1(_out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _outTag:stdgo.Pointer<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag>):Bool return __self__.value.readAnyASN1(_out, _outTag);
    @:keep
    public dynamic function readASN1Element(_out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool return __self__.value.readASN1Element(_out, _tag);
    @:keep
    public dynamic function readASN1(_out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool return __self__.value.readASN1(_out, _tag);
    @:keep
    public dynamic function readASN1Bytes(_out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool return __self__.value.readASN1Bytes(_out, _tag);
    @:keep
    public dynamic function readASN1BitStringAsBytes(_out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Bool return __self__.value.readASN1BitStringAsBytes(_out);
    @:keep
    public dynamic function readASN1BitString(_out:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>):Bool return __self__.value.readASN1BitString(_out);
    @:keep
    public dynamic function readASN1UTCTime(_out:stdgo.Ref<stdgo._internal.time.Time_Time.Time>):Bool return __self__.value.readASN1UTCTime(_out);
    @:keep
    public dynamic function readASN1GeneralizedTime(_out:stdgo.Ref<stdgo._internal.time.Time_Time.Time>):Bool return __self__.value.readASN1GeneralizedTime(_out);
    @:keep
    public dynamic function readASN1ObjectIdentifier(_out:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>):Bool return __self__.value.readASN1ObjectIdentifier(_out);
    @:keep
    public dynamic function _readBase128Int(_out:stdgo.Pointer<stdgo.GoInt>):Bool return __self__.value._readBase128Int(_out);
    @:keep
    public dynamic function readASN1Enum(_out:stdgo.Pointer<stdgo.GoInt>):Bool return __self__.value.readASN1Enum(_out);
    @:keep
    public dynamic function readASN1Int64WithTag(_out:stdgo.Pointer<stdgo.GoInt64>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool return __self__.value.readASN1Int64WithTag(_out, _tag);
    @:keep
    public dynamic function _readASN1Uint64(_out:stdgo.Pointer<stdgo.GoUInt64>):Bool return __self__.value._readASN1Uint64(_out);
    @:keep
    public dynamic function _readASN1Int64(_out:stdgo.Pointer<stdgo.GoInt64>):Bool return __self__.value._readASN1Int64(_out);
    @:keep
    public dynamic function _readASN1Bytes(_out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Bool return __self__.value._readASN1Bytes(_out);
    @:keep
    public dynamic function _readASN1BigInt(_out:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool return __self__.value._readASN1BigInt(_out);
    @:keep
    public dynamic function readASN1Integer(_out:stdgo.AnyInterface):Bool return __self__.value.readASN1Integer(_out);
    @:keep
    public dynamic function readASN1Boolean(_out:stdgo.Pointer<Bool>):Bool return __self__.value.readASN1Boolean(_out);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
