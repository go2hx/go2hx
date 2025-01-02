package stdgo._internal.crypto.x509;
function _marshalECDHPrivateKey(_key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(({ version : (1 : stdgo.GoInt), privateKey : @:check2r _key.bytes(), publicKey : ({ bytes : @:check2r @:check2r _key.publicKey().bytes() } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey)));
    }
