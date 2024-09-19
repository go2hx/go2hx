package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function marshalECPrivateKey(_key:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.crypto.x509.X509__oidFromNamedCurve._oidFromNamedCurve(_key.publicKey.curve), _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown elliptic curve" : stdgo.GoString)) };
        };
        return stdgo._internal.crypto.x509.X509__marshalECPrivateKeyWithOID._marshalECPrivateKeyWithOID(_key, _oid);
    }