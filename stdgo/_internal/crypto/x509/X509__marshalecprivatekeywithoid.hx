package stdgo._internal.crypto.x509;
function _marshalECPrivateKeyWithOID(_key:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/sec1.go#L58"
        if (!(@:checkr _key ?? throw "null pointer dereference").publicKey.curve.isOnCurve((@:checkr _key ?? throw "null pointer dereference").publicKey.x, (@:checkr _key ?? throw "null pointer dereference").publicKey.y)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/sec1.go#L59"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid elliptic key public key" : stdgo.GoString)) };
        };
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>(((((@:checkr _key ?? throw "null pointer dereference").publicKey.curve.params().n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/sec1.go#L62"
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ version : (1 : stdgo.GoInt), privateKey : (@:checkr _key ?? throw "null pointer dereference").d.fillBytes(_privateKey), namedCurveOID : _oid, publicKey : ({ bytes : stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal((@:checkr _key ?? throw "null pointer dereference").publicKey.curve, (@:checkr _key ?? throw "null pointer dereference").publicKey.x, (@:checkr _key ?? throw "null pointer dereference").publicKey.y) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey))));
    }
