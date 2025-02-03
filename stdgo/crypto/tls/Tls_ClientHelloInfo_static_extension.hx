package stdgo.crypto.tls;
class ClientHelloInfo_static_extension {
    static public function supportsCertificate(_chi:ClientHelloInfo, _c:Certificate):stdgo.Error {
        final _chi = (_chi : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo>);
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        return stdgo._internal.crypto.tls.Tls_ClientHelloInfo_static_extension.ClientHelloInfo_static_extension.supportsCertificate(_chi, _c);
    }
    static public function context(_c:ClientHelloInfo):stdgo._internal.context.Context_Context.Context {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo>);
        return stdgo._internal.crypto.tls.Tls_ClientHelloInfo_static_extension.ClientHelloInfo_static_extension.context(_c);
    }
}
