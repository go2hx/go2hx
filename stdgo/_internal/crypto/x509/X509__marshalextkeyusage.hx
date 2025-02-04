package stdgo._internal.crypto.x509;
function _marshalExtKeyUsage(_extUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>, _unknownUsages:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension; var _1 : stdgo.Error; } {
        var _ext = ({ id : stdgo._internal.crypto.x509.X509__oidextensionextendedkeyusage._oidExtensionExtendedKeyUsage } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension);
        var _oids = (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>(((_extUsages.length) + (_unknownUsages.length) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
        for (_i => _u in _extUsages) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__oidfromextkeyusage._oidFromExtKeyUsage(_u), _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _oids[(_i : stdgo.GoInt)] = _oid;
                } else {
                    return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown extended key usage" : stdgo.GoString)) };
                };
            };
        };
        (_oids.__slice__((_extUsages.length)) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>).__copyTo__(_unknownUsages);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_oids));
            _ext.value = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : _ext?.__copy__(), _1 : _err };
    }
