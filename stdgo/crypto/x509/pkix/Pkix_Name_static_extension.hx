package stdgo.crypto.x509.pkix;
class Name_static_extension {
    static public function string(_n:Name):String {
        return stdgo._internal.crypto.x509.pkix.Pkix_Name_static_extension.Name_static_extension.string(_n);
    }
    static public function toRDNSequence(_n:Name):RDNSequence {
        return stdgo._internal.crypto.x509.pkix.Pkix_Name_static_extension.Name_static_extension.toRDNSequence(_n);
    }
    static public function _appendRDNs(_n:Name, _in:RDNSequence, _values:Array<String>, _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):RDNSequence {
        final _values = ([for (i in _values) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.crypto.x509.pkix.Pkix_Name_static_extension.Name_static_extension._appendRDNs(_n, _in, _values, _oid);
    }
    static public function fillFromRDNSequence(_n:Name, _rdns:RDNSequence):Void {
        final _n = (_n : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Name.Name>);
        final _rdns = (_rdns : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence>);
        stdgo._internal.crypto.x509.pkix.Pkix_Name_static_extension.Name_static_extension.fillFromRDNSequence(_n, _rdns);
    }
}
