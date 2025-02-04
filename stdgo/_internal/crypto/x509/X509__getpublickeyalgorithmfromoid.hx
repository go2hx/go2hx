package stdgo._internal.crypto.x509;
function _getPublicKeyAlgorithmFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm {
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA)) {
            return (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeydsa._oidPublicKeyDSA)) {
            return (2 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA)) {
            return (3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519)) {
            return (4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        };
        return (0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
    }
