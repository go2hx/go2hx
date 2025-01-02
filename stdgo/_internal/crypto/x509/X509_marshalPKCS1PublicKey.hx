package stdgo._internal.crypto.x509;
function marshalPKCS1PublicKey(_key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>):stdgo.Slice<stdgo.GoUInt8> {
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(({ n : (@:checkr _key ?? throw "null pointer dereference").n, e : (@:checkr _key ?? throw "null pointer dereference").e } : stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey))), _derBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        return _derBytes;
    }
