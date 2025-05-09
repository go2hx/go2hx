package stdgo._internal.crypto.x509;
function _getPublicKeyAlgorithmFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L491"
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L493"
            return (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeydsa._oidPublicKeyDSA)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L495"
            return (2 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L497"
            return (3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L499"
            return (4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L501"
        return (0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
    }
