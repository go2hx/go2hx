package stdgo._internal.crypto.x509.pkix;
class Name_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function toRDNSequence():stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence return @:_0 __self__.value.toRDNSequence();
    @:keep
    @:tdfield
    public dynamic function _appendRDNs(_in:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence, _values:stdgo.Slice<stdgo.GoString>, _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence return @:_0 __self__.value._appendRDNs(_in, _values, _oid);
    @:keep
    @:tdfield
    public dynamic function fillFromRDNSequence(_rdns:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>):Void @:_0 __self__.value.fillFromRDNSequence(_rdns);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.x509.pkix.Pkix_namepointer.NamePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
