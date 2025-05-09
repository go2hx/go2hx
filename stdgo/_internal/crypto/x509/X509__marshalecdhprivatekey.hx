package stdgo._internal.crypto.x509;
function _marshalECDHPrivateKey(_key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/sec1.go#L73"
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ version : (1 : stdgo.GoInt), privateKey : _key.bytes(), publicKey : ({ bytes : _key.publicKey().bytes() } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey))));
    }
