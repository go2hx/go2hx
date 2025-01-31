package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
class CertificateList_asInterface {
    @:keep
    @:tdfield
    public dynamic function hasExpired(_now:stdgo._internal.time.Time_Time.Time):Bool return @:_0 __self__.value.hasExpired(_now);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.x509.pkix.Pkix_CertificateListPointer.CertificateListPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
