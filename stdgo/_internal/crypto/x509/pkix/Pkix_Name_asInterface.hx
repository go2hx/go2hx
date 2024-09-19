package stdgo._internal.crypto.x509.pkix;
class Name_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function toRDNSequence():stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence return __self__.value.toRDNSequence();
    @:keep
    public dynamic function _appendRDNs(_in:stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence, _values:stdgo.Slice<stdgo.GoString>, _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence return __self__.value._appendRDNs(_in, _values, _oid);
    @:keep
    public dynamic function fillFromRDNSequence(_rdns:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence>):Void __self__.value.fillFromRDNSequence(_rdns);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.x509.pkix.Pkix_Name.Name>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}