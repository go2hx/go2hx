package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _marshalECPrivateKeyWithOID(_key:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if (!_key.publicKey.curve.isOnCurve(_key.publicKey.x, _key.publicKey.y)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid elliptic key public key" : stdgo.GoString)) };
        };
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>((((_key.publicKey.curve.params().n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(({ version : (1 : stdgo.GoInt), privateKey : _key.d.fillBytes(_privateKey), namedCurveOID : _oid, publicKey : ({ bytes : stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal(_key.publicKey.curve, _key.publicKey.x, _key.publicKey.y) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey)));
    }
