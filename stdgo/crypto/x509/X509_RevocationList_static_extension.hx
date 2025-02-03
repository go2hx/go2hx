package stdgo.crypto.x509;
class RevocationList_static_extension {
    static public function checkSignatureFrom(_rl:RevocationList, _parent:Certificate):stdgo.Error {
        final _rl = (_rl : stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_RevocationList_static_extension.RevocationList_static_extension.checkSignatureFrom(_rl, _parent);
    }
}
