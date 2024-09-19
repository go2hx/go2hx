package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _getPublicKeyAlgorithmFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm {
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidPublicKeyRSA._oidPublicKeyRSA)) {
            return (1 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidPublicKeyDSA._oidPublicKeyDSA)) {
            return (2 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidPublicKeyECDSA._oidPublicKeyECDSA)) {
            return (3 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidPublicKeyEd25519._oidPublicKeyEd25519)) {
            return (4 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
        };
        return (0 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
    }
